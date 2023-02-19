<div class="container mx-auto mt-2">
    <div class="flex content-center m-2 p-2">
      <x-jet-banner />
        <x-jet-button wire:click="showCreateUserModal" class="bg-green-500">Create User</x-jet-button>
    </div>
    <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
        <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
          <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
            <table class="min-w-full divide-y divide-gray-200">
              <thead class="bg-gray-50 dark:bg-gray-600 dark:text-gray-200">
                <tr>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Id</th>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Fullname</th>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Email</th>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-200 uppercase tracking-wider">Roles</th>
                  <th scope="col" class="relative px-6 py-3">Edit</th>
                </tr>
              </thead>
              <tbody class="bg-white divide-y divide-gray-200">
                <tr></tr>
                @foreach ($users as $user)
                <tr>
                  <td class="px-6 py-4 whitespace-nowrap">{{ $user->id }}</td>
                  <td class="px-6 py-4 whitespace-nowrap">{{ $user->name }}</td>
                  <td class="px-6 py-4 whitespace-nowrap">{{ $user->email }}</td>
                  <td class="px-6 py-4 whitespace-nowrap">
                    @if ($user->roles == "[]")
                      None
                    @else
                      {{ $user->roles[0]['name'] }}
                    @endif
                  </td>
                  <td class="px-6 py-4 text-right text-sm">
                    <x-jet-button wire:click="showEditUserModal({{ $user->id }})" class="bg-green-500">Edit</x-jet-button>
                    <x-jet-button wire:click="deleteUser({{ $user->id }})" class="bg-red-500">Delete</x-jet-button>
                  </td>
                </tr>
                @endforeach
                <!-- More items... -->
              </tbody>
            </table>
            <div class="m-2 p-2">
              {{ $users->links() }}
            </div>
          </div>
        </div>
      </div>
    <x-jet-dialog-modal wire:model="showModalForm">
      @if ($userId)
      <x-slot name="title">Edit User</x-slot>
      @else 
      <x-slot name="title">Create User</x-slot> 
      @endif
        <x-slot name="content">
            <div class="space-y-8 divide-y divide-gray-200 w-1/2 mt-10">
                <form enctype="multipart/form-data">
                  <div class="sm:col-span-6">
                    <label for="fullname" class="block text-sm font-medium text-gray-700"> FullName </label>
                    <div class="mt-1">
                      <input type="text" id="name" wire:model.lazy="name" name="name" class="block w-full transition duration-150 ease-in-out appearance-none bg-white border border-gray-400 rounded-md py-2 px-3 text-base leading-normal transition duration-150 ease-in-out sm:text-sm sm:leading-5" />
                    </div>
                  </div>
                  <div class="sm:col-span-6">
                    <label for="email" class="block text-sm font-medium text-gray-700"> Email </label>
                    <div class="mt-1">
                      <input type="email" id="email" wire:model.lazy="email" name="email" class="block w-full transition duration-150 ease-in-out appearance-none bg-white border border-gray-400 rounded-md py-2 px-3 text-base leading-normal transition duration-150 ease-in-out sm:text-sm sm:leading-5" />
                    </div>
                  </div>
                  <div class="sm:col-span-6">
                    <label for="password" class="block text-sm font-medium text-gray-700"> Password </label>
                    <div class="mt-1">
                      <input type="password" id="password" wire:model.lazy="password" name="password" class="block w-full transition duration-150 ease-in-out appearance-none bg-white border border-gray-400 rounded-md py-2 px-3 text-base leading-normal transition duration-150 ease-in-out sm:text-sm sm:leading-5" />
                    </div>
                  </div>
                  <div class="sm:col-span-6">
                    <label for="role" class="block text-sm font-medium text-gray-700"> Role </label>
                    <div class="mt-1">
                        <select name="role" id="role" wire:model.lazy="role">
                            <option value="none" selected disabled hidden>Select an Option</option>
                            <option value="admin">admin</option>
                            <option value="staff">staff</option>
                            <option value="user">user</option>
                          </select>
                        </div>
                  </div>
                  <div class="sm:col-span-6">
                    <label for="datebirth" class="block text-sm font-medium text-gray-700"> Datebirth </label>
                    <div class="mt-1">
                      <input type="date" id="datebirth" wire:model.lazy="datebirth" name="datebirth" class="block w-full transition duration-150 ease-in-out appearance-none bg-white border border-gray-400 rounded-md py-2 px-3 text-base leading-normal transition duration-150 ease-in-out sm:text-sm sm:leading-5" />
                    </div>
                  </div>
                  <div class="sm:col-span-6">
                    <div class="w-full m-2 p-2">
                        @if ($newfotoktp)
                          Photo Preview:
                          <img src="{{ asset('storage/uploads/'. $newfotoktp) }}">   
                        @endif
                        @if ($fotoktp)
                          Photo Preview:
                          <img src="{{ $fotoktp->temporaryUrl() }}">   
                        @endif
                    </div>
                    <label for="fotoktp" class="block text-sm font-medium text-gray-700"> Post Image </label>
                    <div class="mt-1">
                      <input type="file" id="fotoktp" wire:model="fotoktp" name="fotoktp" class="block w-full transition duration-150 ease-in-out appearance-none bg-white border border-gray-400 rounded-md py-2 px-3 text-base leading-normal transition duration-150 ease-in-out sm:text-sm sm:leading-5" />
                    </div>
                  </div>
                  <div class="sm:col-span-6 pt-5">
                    <label for="alamat" class="block text-sm font-medium text-gray-700">Alamat</label>
                    <div class="mt-1">
                      <textarea id="alamat" rows="3" wire:model.lazy="alamat" class="shadow-sm focus:ring-indigo-500 appearance-none bg-white border border-gray-400 rounded-md py-2 px-3 text-base leading-normal transition duration-150 ease-in-out focus:border-indigo-500 block w-full sm:text-sm border-gray-300 rounded-md"></textarea>
                    </div>
                  </div>
                </form>
              </div>              
        </x-slot>
        <x-slot name="footer">
            @if($userId)
            <x-jet-button wire:click="updateUser">Update</x-jet-button>
            @else
            <x-jet-button wire:click="saveUser">Save</x-jet-button>
            @endif
        </x-slot>
    </x-jet-dialog-modal>
</div>

