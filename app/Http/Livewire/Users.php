<?php


namespace App\Http\Livewire;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Livewire\Component;
use Livewire\WithFileUploads;
use Livewire\WithPagination;
use Illuminate\Support\Facades\Storage;


class Users extends Component
{
    use WithFileUploads;
    use WithPagination;

    public $name;
    public $email;
    public $password;
    public $role;
    public $datebirth;
    public $fotoktp;
    public $alamat;
    public $userId = null;
    public $newfotoktp;

    public $showModalForm = false;
    
    public function showCreateUserModal(){
        $this->showModalForm = true;
    }

    public function saveUser(){
        $this->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'role' => 'required|in:admin,staff,user',
            'password' => 'required|min:8|regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$/',
            'datebirth' => 'required|date',
            'fotoktp' => 'required|image|max:1024',
            'alamat' => 'required'
        ]);

        $image_name = $this->fotoktp->getClientOriginalName();
        $this->fotoktp->storeAs('public/uploads/', $image_name);
        $user = new User();
        $user->name = $this->name;
        $user->email = $this->email;
        $user->password = Hash::make($this->password);
        $user->datebirth = $this->datebirth;
        $user->fotoktp = $image_name;
        $user->assignRole($this->role);
        $user->save();
        $this->reset();
    
    }

    public function showEditUserModal($id){
        $this->showModalForm = true;
        $this->userId = $id;
        $this->loadEditForm();
    }

    public function loadEditForm(){
        $user = User::findOrFail($this->userId);
        $this->name = $user->name;
        $this->email = $user->email;
        $this->password = $user->password;
        $this->datebirth = $user->datebirth;
        $this->newfotoktp = $user->fotoktp;
        $this->alamat = $user->alamat;
    }

    public function updateUser(){
        $this->validate([
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required|min:8|regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$/',
            'datebirth' => 'required|date',
            'fotoktp' => 'image|max:1024|nullable',
            'alamat' => 'required'
        ]);

        if($this->fotoktp){
            Storage::delete('public/uploads/', $this->newfotoktp);
            $this->newfotoktp = $this->fotoktp->getClientOriginalName();
            $this->fotoktp->storeAs('public/uploads/', $this->newfotoktp);
        }

        User::find($this->userId)->update([
            'name' => $this->name,
            'email' => $this->email,
            'datebirth' => $this->datebirth,
            'fotoktp' => $this->newfotoktp,
            'alamat' => $this->alamat,
        ]);

        $this->reset();
    }

    public function deleteUser($id){
        $user = User::find($id);
        Storage::delete('public/uploads/', $user->fotoktp);
        $user->delete();
        session()->flash('flash.banner', 'User Deleted Successfully');
        session()->flash('flash.bannerStyle', 'success');
    }

    public function render()
    {
        return view('livewire.users', [
            'users' => User::orderBy('id', 'ASC')->paginate(5)
        ]);
    }
}
