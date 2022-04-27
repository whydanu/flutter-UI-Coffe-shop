import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  final String coffeimagepath;
  final String coffename;
  final String coffeprice;

  CoffeTile({
    required this.coffeimagepath,
    required this.coffename,
    required this.coffeprice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(25),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black54,
        ),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            //coffe image
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
             child : Image.asset(coffeimagepath),
            ),


            //coffe name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                // ignore: prefer_const_constructors
                Text(
                  coffename,
                  style: TextStyle(fontSize: 14),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 1,
                ),
                Text(
                  'Creaming With Milk',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],),
            ),

            //harga
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\Rp'+ coffeprice),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                       borderRadius:BorderRadius.circular(4),
                  ),
                    child: Icon(Icons.add),
                ),
              ],
            ),
            ),
          ],
        )
      ),
    );
  }
}

