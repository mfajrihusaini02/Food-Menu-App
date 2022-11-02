// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:food_menu_app/model/customer.dart';
import 'package:food_menu_app/ui/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({Key? key}) : super(key: key);

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  final TextEditingController _name = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.yellow[100],
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Masuk sebagai \nAnonymous',
                  style: GoogleFonts.lato(fontSize: 30),
                ),
                const SizedBox(height: 40),
                Text(
                  'Masukkan Nama Anda:',
                  style: GoogleFonts.lato(fontSize: 18),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: _name,
                  style: GoogleFonts.lato(fontSize: 18),
                  decoration: const InputDecoration(
                    hintText: 'Nama Lengkap',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => _name,
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Customer customer = Customer(name: _name.text);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                            customer: customer,
                          ),
                        ),
                      );
                      print(_name.text);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange),
                    ),
                    child: Text(
                      'Masuk',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
