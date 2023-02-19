<div class="container mx-auto mt-2">
    <div class="flex content-center m-2 p-2">
      <x-jet-banner />
    </div>
    <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
        <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
          <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
            <table class="min-w-full divide-y divide-gray-200">
              <thead class="bg-gray-50 dark:bg-gray-600 dark:text-gray-200">
                <tr>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Id</th>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Nama Pegguna</th>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Nama_paket</th>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Total User</th>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Total Harga</th>
                </tr>
              </thead>
              <tbody class="bg-white divide-y divide-gray-200">
                <tr></tr>
                @foreach ($datas as $data)
                <tr>
                  <td class="px-6 py-4 whitespace-nowrap">{{ $data->id }}</td>
                  <td class="px-6 py-4 whitespace-nowrap">{{ $data->nama_user }}</td>
                  <td class="px-6 py-4 whitespace-nowrap">{{ $data->nama_paket }}</td>
                  <td class="px-6 py-4 whitespace-nowrap">{{ $data->total_user }}</td>
                  <td class="px-6 py-4 whitespace-nowrap">{{ $data->total_harga }}
                  </td>
                </tr>
                @endforeach
                <!-- More items... -->
              </tbody>
            </table>
            <div class="m-2 p-2">
              {{ $datas->links() }}
            </div>
          </div>
        </div>
      </div>
</div>

