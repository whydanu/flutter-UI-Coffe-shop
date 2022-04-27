
import 'package:coffe_ui_apps/util/coffe_tile.dart';
import 'package:coffe_ui_apps/util/coffe_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List coffeType = [
    [
      'Capucino',
      true,

    ],
    [
      'Low Sugar',
      false,
    ],
    [
      'Cream latte',
      false,
    ],
  ];

  //pengguna mengklik pilihan menu
  void coffeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeType.length; i++) {
        coffeType [i][1] = false;
      }
      coffeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            )
          ]),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Temukan Kopi Terbaik Untuk Mu Disini",
            style: GoogleFonts.bebasNeue(
              fontSize: 50,
            ),
          ),
        ),
        SizedBox(height: 25),

        //searcbar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Temukan kopi mu disini.....',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
              ),
            ),
          ),
        ),

        SizedBox(height: 25),

        //horizontal listview of coffe type
        Container(
            height: 30,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeType.length,
                itemBuilder: (context, index) {
                  return CoffeType(
                    coffeType: coffeType[index][0],
                    isSelected: coffeType[index][1],
                    onTap: (){
                      coffeTypeSelected(index);
                });
                })),

        //horizontal listview coffe tile
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeTile(
                  coffeimagepath : 'lib/image/latte.jpg',
                  coffename: 'latte',
                 coffeprice: '20000',
              ),
              CoffeTile(
                coffeimagepath : 'lib/image/cremlatte.jpg',
                coffename: 'CreamLatte',
                coffeprice: '30000',
              ),
              CoffeTile(
                coffeimagepath : 'lib/image/kopilowsugar.jpg',
                coffename: 'LowCoffe',
                coffeprice: '18000',
              ),
            ],
          ),
        )
      ]),
    );
  }
}