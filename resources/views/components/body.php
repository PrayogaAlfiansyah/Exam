<section x-data="xData()" class="bg-gray-100 dark:bg-gray-900 py-10 px-12">
    <!-- Card Grid -->
    <div id="packetDes" class="mt-0 text-center ml-10 mr-10 pt-10">
    <span class="text-lg font-semibold tracking-wider text-gray-900 dark:text-white">PACKET DESTIONATIONS</span>
    </div>
    <div
        class="grid grid-flow-row gap-8 text-neutral-600 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
        <template x-for="post in posts">
            <!-- Card Item -->
            <div
                class="my-8 rounded shadow-lg shadow-gray-200 dark:shadow-gray-900 bg-white dark:bg-gray-800 duration-300 hover:-translate-y-1"
                x-for="(post, index) in posts">
                <!-- Clickable Area -->
                <a _href="link" class="cursor-pointer">
                    <figure>
                        <!-- Image -->
                        <img
                            :src="post.image + '?auto=format&fit=crop&w=400&q=50'"
                            class="rounded-t h-72 w-full object-cover" />

                        <figcaption class="p-4">
                            <!-- Title -->
                            <p
                                class="text-lg mb-4 font-bold leading-relaxed text-gray-800 dark:text-gray-300"
                                x-text="post.title">
                                <!-- Post Title -->
                            </p>

                            <!-- Description -->
                            <small
                                class="leading-5 text-gray-500 dark:text-gray-400"
                                x-text="post.description">
                                <!-- Post Description -->
                            </small>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </template>
    </div>
</section>

<script>
    function xData() {
        /**
         * Shuffle an array
         * @param {Array} array
         * @source https://stackoverflow.com/a/2450976/6940144
         */
        function shuffle(array) {
            let currentIndex = array.length,
                randomIndex;

            // While there remain elements to shuffle.
            while (currentIndex != 0) {
                // Pick a remaining element.
                randomIndex = Math.floor(Math.random() * currentIndex);
                currentIndex--;

                // And swap it with the current element.
                [array[currentIndex], array[randomIndex]] = [
                    array[randomIndex],
                    array[currentIndex],
                ];
            }

            return array;
        }

        const posts = [
            {
                image:
                    "https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Pantai-Dreamland.jpg",
                title: "Dream Land Beach - Bali",
                description:
                    "Dreamland Beach is one of the prima donna of tourism in Bali. This beach, which is one of the tourist magnets in Bali, is famous for its beautiful beach panoramas. The combination of white sand, rocks and cliffs on the beach is one of the main attractions of this beach, besides that it is supported by facilities that can be said to be very complete.",
            },
            {
                image:
                    "https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Kepulauan-Gili.jpg",
                title: "Gili Island",
                description:
                    "Consisting of 3 small islands consisting of Gili Air, Gili Meno and Gili Trawangan, the Gili Islands are one of the main tourist attractions of Lombok. These exotic islands spoil tourists with the beauty of white sandy beaches, blue sea and a calming atmosphere. Apart from that, this area is also famous for its several dive spots which offer beautiful underwater panoramas. At night, you can enjoy a calming atmosphere with views of the sea decorated with moonlight and stars accompanied by the sound of the waves crashing on the beach.",
            },
            {
                image:
                    "https://www.azwisata.com/wp-content/uploads/2019/01/Tempat-Wisata-di-Indonesia-Taman-Laut-Bunaken-1.jpg",
                title: "Bunaken Marine Park",
                description:
                    "Inaugurated in 1991, Bunaken Marine Park is the first marine park in Indonesia. This 80,000 ha marine park (3% land and 97% sea), is located in Manado, North Sulawesi, and consists of 5 islands, namely Puau Bunaken, Manado Tua, Siladen, Montehage and Naen. Bunaken Marine Park is famous for its enchanting underwater panoramas, as well as its exotic islands. In the park area there are various species of coral reefs. algae, seaweed, fish, marine mammals, birds and reptiles.",
            },
            {
                image:
                    "https://www.azwisata.com/wp-content/uploads/2015/12/Tempat-Wisata-di-Indonesia-Kepulauan-Raja-Ampat.jpg",
                title: "Raja Ampat Island",
                description:
                    "Raja Ampat, West Papua is one of the 10 best diving and snorkeling spots in the world. Beneath the water's surface, you'll find a colorful rainbow of 530 species of coral (75% of the world's total) and the highest (recorded) diversity of marine life on Earth. Apart from diving and snorkeling, in the archipelago which consists of 4 groups of islands (Batanta Island, Misool Island, Waigeo Island and Salawati Island) you can also enjoy the beautiful natural scenery. Whether it's the beaches, lagoons and bays that will never get tired of making you enjoy its beauty.",
            },
        ];

        return {
            posts: [
                ...shuffle(posts),
            ],
        };
    }
</script>