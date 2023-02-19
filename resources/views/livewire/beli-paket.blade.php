<div class="container mx-auto mt-2">
    <div class="flex content-center m-2 p-2">
        <x-jet-banner />
      </div>
    <h1 class="text-white text-lg">Beli Paket</h1>
            <div class="space-y-8 divide-y divide-gray-200 w-1/2 mt-10">
                <form enctype="multipart/form-data">
                  <div class="sm:col-span-6">
                    <label for="wisata" class="block text-sm font-medium text-white"> Wisata </label>
                    <div class="mt-1">
                        <select name="namaWisata" id="wisataId" wire:model.lazy="namaWisata">
                            <option value="none" selected hidden>Select an Option</option>
                            <option value="dreamland">Dreamland</option>
                            <option value="marinepark">Marine Park</option>
                            <option value="rajaampat">Raja Ampat Island</option>
                            <option value="giliisland">Gili Island</option>
                          </select>
                        </div>
                  </div>
                  <div class="sm:col-span-6">
                    <label for="TotalPerson" class="block text-sm font-medium text-white"> Jumlah Orang </label>
                    <div class="mt-1">
                      <input type="number" id="TotalPerson" wire:model.lazy="TotalPerson" name="TotalPerson" class="block w-29 transition duration-150 ease-in-out appearance-none bg-white border border-gray-400 rounded-md py-2 px-3 text-base leading-normal transition duration-150 ease-in-out sm:text-sm sm:leading-5" />
                    </div>
                  </div>
                  <div class="sm:col-span-6">
                    <label for="harga" class="block text-sm font-medium text-white"> Total Harga </label>
                    <div class="mt-1">
                      <input value="" type="text" id="harga" name="harga" class="block w-29 transition duration-150 ease-in-out appearance-none bg-white border border-gray-400 rounded-md py-2 px-3 text-base leading-normal transition duration-150 ease-in-out sm:text-sm sm:leading-5" disabled/>
                    </div>
                  </div>
                  <div class="mt-8">
                  <a class="border border-teal-500 bg-teal-500 text-white rounded-md px-2 py-1 m-1 transition duration-500 ease select-none hover:bg-teal-600 focus:outline-none focus:shadow-outline" onclick="Hitung()">Hitung</a>
                  <x-jet-button wire:click="saveDataPaket({{ Auth::user()->id }})" class="bg-blue-500">Beli</x-jet-button>
                  </div>
                </form>
              </div>              
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    
    function Hitung(){
        var totHarga = 0;
        var totPerson = 0;
        var HargaBayar = 0;
        const wisata = $('#wisataId');
        const wisataValue = wisata.val();
        if (wisataValue === 'dreamland') {
        totHarga = 15000000;
      } else if (wisataValue === 'marinepark') {
        totHarga = 12000000;
      } else if (wisataValue === 'rajaampat') {
        totHarga = 18000000;
      } else if (wisataValue === 'giliisland') {
        totHarga = 20000000;
      }

      const TotalPerson =  $('#TotalPerson');
      totPerson = TotalPerson.val(); 
      $("#harga").val(totPerson*totHarga);
   }    
  </script>
  