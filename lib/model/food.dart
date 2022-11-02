enum type { ayam, daging, cumi, kepiting, ikan }

class Food {
  final int? id;
  final String? name;
  final String? imageUrl;
  final List? type;
  final String? description;
  final double? price;

  Food({
    this.id,
    this.name,
    this.imageUrl,
    this.type,
    this.description,
    this.price,
  });
}

List foodMenuList = [
  Food(
    id: 1,
    name: 'Ayam Rica-Rica',
    imageUrl:
        'https://selerasa.com/wp-content/uploads/2019/09/Resep-masakan-ayam-rica-rica-2-550x400.jpeg',
    type: [type.ayam],
    description:
        'Hidangan ayam dari Sulawesi Utara ini rasanya super pedas. Ayam yang gurih berbalut bumbu cabai dengan paduan daun kemangi yang harum. Enak disantap dengan nasi hangat.',
    price: 17000,
  ),
  Food(
    id: 2,
    name: 'Ayam Goreng Krispi',
    imageUrl:
        'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2018/03/triple-dipped-fried-chicken_22591.jpg',
    type: [type.ayam],
    description:
        'Ayam Goreng Krispi yang satu ini digoreng dengan minyak pilihan dan bahan-bahan pilihan yang didapat dari petani-petani lokal',
    price: 15000,
  ),
  Food(
    id: 3,
    name: 'Beef Bulgogi',
    imageUrl:
        'https://img-global.cpcdn.com/recipes/7a306ea59f6affdc/751x532cq70/bulgogi-korean-beef-bbq-foto-resep-utama.jpg',
    type: [type.daging],
    description:
        'Bulgogi berarti daging panggang. Daging yang digunakan bisa bervariasi dari ayam dan sapi Namun, bulgogi dikenal luas oleh pencinta kuliner Korea di Indonesia berbahan dasar daging sapi. Bumbu yang dipakai untuk daging sangat sederhana terdiri dari kecap asin, gula, bawang dan minyak wijen. Beef bulgogi ini bisa disajikan untuk hidangan pesta barbeku',
    price: 99000,
  ),
  Food(
    id: 4,
    name: 'Rendang',
    imageUrl:
        'https://cdn-2.tstatic.net/tribunnews/foto/bank/images/resep-rendang.jpg',
    type: [type.daging],
    description:
        'Rendang ini dimasak dalam waktu yang cukup lama hingga santan mengering dan bumbu teresap dengan sempurna. 2011 silam, rendang terpilih menjadi makanan terlezat di dunia yang menduduki peringkat pertama dalam World’s 50 Most Delicious Foods versi CNN International. Mengandung banyak sekali jenis bumbu rempah, rendang menjadi makanan yang memiliki cita rasa yang unik dan digemari banyak orang.',
    price: 50000,
  ),
  Food(
    id: 5,
    name: 'Tom Yam',
    imageUrl:
        'https://cdn-2.tstatic.net/bali/foto/bank/images/tom-yum-soup.jpg',
    type: [type.ayam],
    description:
        'Tom Yam Soup Enak ini adalah sup asal Thailand yang terkenal kelezatannya. Tom Yam Soup Enak ini pun bisa kita hadirkan untuk menu istimewa malam ini. Menu didapat dari udang-udang pilihan dan segar rasanya',
    price: 35000,
  ),
  Food(
    id: 6,
    name: 'Cumi Balado',
    imageUrl:
        'https://img-global.cpcdn.com/recipes/9a11951e2593e801/680x482cq70/cumi-balado-foto-resep-utama.jpg',
    type: [type.daging],
    description:
        'seafood satu ini cukup digemari masyarakat. Dagingnya yang lezat, dan tekstur yang lembut. ',
    price: 25000,
  ),
  Food(
    id: 7,
    name: 'Kepiting saus Padang',
    imageUrl:
        'https://selerasa.com/wp-content/uploads/2015/08/images_ikan_resep_kepiting_32-1200x798.jpg',
    type: [type.kepiting],
    description:
        'Kepiting saus Padang jadi favorit banyak orang karena rasa pedas menggigit. Bumbu saus Padang rasanya pedas mengigit dan bisa disesuaikan dengan selera. Sausnya dikentalkan dengan telur sehingga rasanya lebih gurih pekat.',
    price: 100000,
  ),
  Food(
    id: 8,
    name: 'Kepiting Asap',
    imageUrl:
        'https://img.beritasatu.com/cache/beritasatu/600x350-2/07052012151347.jpg',
    type: [type.kepiting],
    description:
        'Bagi pencinta seafood, kepiting memang jadi menu spesial. Kalau bosan makan kepiting goreng, coba kepiting asap yang tak kalah mantap',
    price: 120000,
  ),
  Food(
    id: 9,
    name: 'Gurame Bakar',
    imageUrl:
        'https://asset.kompas.com/crops/J0ARoySS4ZFviSelgHTMsxHPNv0=/0x0:1000x667/750x500/data/photo/2020/12/17/5fdb3cd0c1525.jpg',
    type: [type.ikan],
    description:
        'Olahan gurame bakar selalu jadi favorit banyak orang karena dagingnya lembut dan gurih. Ya, selain digoreng, olahan ikan gurame lainnya yang populer adalah dengan dipanggang dan dilengkapi sambal kecap. Untuk proses membuatnya, kita bagi dalam tiga tahap. Pertama, menumis bumbu halus yang akan menjadi olesan bumbu gurame bakar. Tahap kedua adalah memanggang ikan hingga matang. Kemudian terakhir, membuat sambal untuk cocolan ikan bakar.',
    price: 30000,
  ),
  Food(
    id: 10,
    name: 'Asam Padeh Ikan',
    imageUrl:
        'https://www.masakan-rumahan.com/wp-content/uploads/2020/04/asam-padeh-sampadeh-ikan-1.jpg',
    type: [type.ikan],
    description:
        'Asam padeh ikan tongkol merupakan salah satu jenis gulai yang populer. Sesuai dengan namanya \'asam padeh\' atau asam pedas, gulai ini tidak memakai santan. Kuahnya merah karena banyak cabe yang digunakan. Rasa asamnya berasal dari asam kandis dalam bumbunya.',
    price: 25000,
  ),
];
