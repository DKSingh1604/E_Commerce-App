// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_commmerce/components/shoe_tile.dart';
import 'package:e_commmerce/models/cart.dart';
import 'package:e_commmerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //SEARCH BAR
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                Icon(Icons.search),
              ],
            ),
          ),

          //MEASSAGE

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Text(
              'Everyone flies..some fly longer than the others!',
              style: GoogleFonts.abrilFatface(
                fontSize: 13,
                color: Colors.grey[700],
              ),
            ),
          ),

          //HOT PICKS

          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: GoogleFonts.merriweather(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '...See all',
                  style: GoogleFonts.kanit(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 15, 3, 250),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          //LIST OF SHOES FOR SALE
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //create shoe
                Shoe shoe = Shoe(
                  name: 'Limited Edition',
                  price: '100',
                  imagePath: 'lib/images/new1.png',
                  description: 'Nike Air Max 90',
                );
                return ShoeTile(
                  shoe: shoe,
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Divider(
              color: Color.fromARGB(255, 70, 186, 224),
            ),
          ),
        ],
      ),
    );
  }
}
