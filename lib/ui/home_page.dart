// ignore_for_file: no_logic_in_create_state

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_menu_app/model/customer.dart';
import 'package:food_menu_app/model/food.dart';
import 'package:food_menu_app/ui/detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final Customer? customer;
  const HomePage({Key? key, this.customer}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState(customer: customer);
}

class _HomePageState extends State<HomePage> {
  TextEditingController _search = TextEditingController();
  final Customer? customer;

  _HomePageState({this.customer});

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/kuliner_indonesia.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SafeArea(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      controller: _search,
                      style: GoogleFonts.lato(fontSize: 16),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Cari disini...',
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _search = TextEditingController(text: '');
                            });
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                        ),
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                )
              ],
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height,
            //   color: Colors.grey.shade200,
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 15,
            //     vertical: 20,
            //   ),
            //   child: Stack(
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.symmetric(
            //               horizontal: 15,
            //               vertical: 18,
            //             ),
            //             child: Text(
            //               'Hai, ' + customer!.name! + ' ☕ \u{1F91A}',
            //               style: const TextStyle(fontSize: 20),
            //             ),
            //           ),
            //           SizedBox(
            //             height: 130,
            //             child: ListView(
            //               scrollDirection: Axis.horizontal,
            //               shrinkWrap: true,
            //               children: [
            //                 Row(
            //                   children: [
            //                     cardHeader(
            //                       name: 'All',
            //                       imageUrl:
            //                           'https://www.gramedia.com/blog/content/images/size/w600/2019/07/kuliner-indonesia.jpg',
            //                     ),
            //                     const SizedBox(width: 10),
            //                     cardHeader(
            //                       name: 'Ayam',
            //                       imageUrl:
            //                           'https://images.bisnis-cdn.com/posts/2021/11/11/1465037/resep-ayam-madu.jpg',
            //                     ),
            //                     const SizedBox(width: 10),
            //                     cardHeader(
            //                       name: 'Ikan',
            //                       imageUrl:
            //                           'https://1.bp.blogspot.com/-KyCqnt9Faes/XC8O1Czt-HI/AAAAAAAAIZw/4gaVFO6sB_U3fneyNRU1NyAbEubg4lywACLcBGAs/s640/Resep-Ikan-Bakar-Spesial-Bikin-Ketagihan-04012019.jpg',
            //                     ),
            //                     const SizedBox(width: 10),
            //                     cardHeader(
            //                       name: 'Daging',
            //                       imageUrl:
            //                           'https://resepayam.id/wp-content/uploads/2021/05/easiest-way-to-prepare-tasty-9-tumis-daging-sapi-lada-hitam.jpg',
            //                     ),
            //                     const SizedBox(width: 10),
            //                     cardHeader(
            //                       name: 'Udang',
            //                       imageUrl:
            //                           'https://blog.tokowahab.com/wp-content/uploads/2020/04/Resep-Udang-Asam-Manis-dan-Sejarah-Saus-Asam-Manis.jpg',
            //                     ),
            //                     const SizedBox(width: 10),
            //                     cardHeader(
            //                       name: 'Kepiting',
            //                       imageUrl:
            //                           'http://4.bp.blogspot.com/-IGbIIkqc69w/VqhHuQHReyI/AAAAAAAALHw/D2i13OwuJcQ/s1600/New%2BPicture.png',
            //                     ),
            //                     const SizedBox(width: 10),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //           ListView.builder(
            //             shrinkWrap: true,
            //             physics: const NeverScrollableScrollPhysics(),
            //             itemBuilder: (context, index) {
            //               final Food food = foodMenuList[index];
            //               return InkWell(
            //                 onTap: () {},
            //                 child: Card(
            //                   child: Row(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: <Widget>[
            //                       Expanded(
            //                         flex: 1,
            //                         child: Image.asset(food.imageUrl!),
            //                       ),
            //                       Expanded(
            //                         flex: 2,
            //                         child: Padding(
            //                           padding: const EdgeInsets.all(8.0),
            //                           child: Column(
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.start,
            //                             children: <Widget>[
            //                               Text(
            //                                 food.name!,
            //                                 style:
            //                                     const TextStyle(fontSize: 16.0),
            //                               ),
            //                               const SizedBox(
            //                                 height: 10,
            //                               ),
            //                               Text(food.name!),
            //                             ],
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               );
            //             },
            //             itemCount: foodMenuList.length,
            //           )
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 18,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Hai, ',
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                      Text(
                        customer!.name! + ' ☕ \u{1F91A}',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 12,
                  ),
                  child: Text(
                    'Menu Pilihan!',
                    style: GoogleFonts.lato(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Row(
                        children: [
                          cardHeader(
                            name: 'Ayam',
                            imageUrl:
                                'https://images.bisnis-cdn.com/posts/2021/11/11/1465037/resep-ayam-madu.jpg',
                          ),
                          const SizedBox(width: 10),
                          cardHeader(
                            name: 'Ikan',
                            imageUrl:
                                'https://1.bp.blogspot.com/-KyCqnt9Faes/XC8O1Czt-HI/AAAAAAAAIZw/4gaVFO6sB_U3fneyNRU1NyAbEubg4lywACLcBGAs/s640/Resep-Ikan-Bakar-Spesial-Bikin-Ketagihan-04012019.jpg',
                          ),
                          const SizedBox(width: 10),
                          cardHeader(
                            name: 'Daging',
                            imageUrl:
                                'https://resepayam.id/wp-content/uploads/2021/05/easiest-way-to-prepare-tasty-9-tumis-daging-sapi-lada-hitam.jpg',
                          ),
                          const SizedBox(width: 10),
                          cardHeader(
                            name: 'Cumi',
                            imageUrl:
                                'https://img-global.cpcdn.com/recipes/9ff77c26f024cf02/751x532cq70/balado-cumi-asin-foto-resep-utama.jpg',
                          ),
                          const SizedBox(width: 10),
                          cardHeader(
                            name: 'Kepiting',
                            imageUrl:
                                'http://4.bp.blogspot.com/-IGbIIkqc69w/VqhHuQHReyI/AAAAAAAALHw/D2i13OwuJcQ/s1600/New%2BPicture.png',
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final Food food = foodMenuList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return DetailPage(food: food);
                          },
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        margin: const EdgeInsets.only(bottom: 8),
                        child: Card(
                          elevation: 6,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                // child: Image.network(food.imageUrl!),
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      topLeft: Radius.circular(4),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(food.imageUrl!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        food.name!,
                                        style: GoogleFonts.lato(fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text('Rp ${food.price!.toString()}'),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: foodMenuList.length,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget cardHeader({String? name, String? imageUrl}) {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl!),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name!,
                  style: GoogleFonts.lato(fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
