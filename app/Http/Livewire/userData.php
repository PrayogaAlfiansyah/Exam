<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Beli_Paket;

class userData extends Component
{
    public function render()
    {
        return view('livewire.user-data',[
            'datas' => Beli_Paket::orderBy('id', 'ASC')->paginate(5),
        ]);
    }
}
