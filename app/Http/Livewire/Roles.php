<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\User;

class Roles extends Component
{
    public function setRoles(){
       
    }
    public function render()
    {
        return view('livewire.roles',[
            'users' => User::all(),
        ]);
    }
}
