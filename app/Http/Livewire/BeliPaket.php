<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Beli_Paket;
use App\Models\User;

class BeliPaket extends Component
{
    public $namaWisata;
    public $TotalPerson;
    public $harga;

    public function saveDataPaket($id){
        $this->validate([
            'namaWisata' => 'required',
            'TotalPerson' => 'required|integer',
        ]);

        if($this->namaWisata == "dreamland"){
            $this->harga = 15000000 * $this->TotalPerson;
        }else if($this->namaWisata == "marinepark"){
            $this->harga = 12000000 * $this->TotalPerson;
        }else if($this->namaWisata == "rajaampat"){
            $this->harga = 18000000 * $this->TotalPerson;
        }else if($this->namaWisata == "giliisland"){
            $this->harga = 20000000 * $this->TotalPerson;
        }
        
        $data = new Beli_Paket();
        $data->user_id = $id;
        $data->nama_user = User::find($id)->get('name')[0]['name'];
        $data->nama_paket = $this->namaWisata;
        $data->total_user = $this->TotalPerson;
        $data->total_harga = $this->harga;
        $data->save();
        session()->flash('flash.banner', 'Beli Paket Successfully');
        $this->reset();
    
    }

    public function render()
    {
        return view('livewire.beli-paket');
    }
}
