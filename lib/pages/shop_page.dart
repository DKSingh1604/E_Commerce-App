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
  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert the user after adding to cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 70, 186, 224),
        title: Text(
          'Successfully added to cart',
          style: TextStyle(
              color: Colors.green[700],
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        content: Padding(
          padding: const EdgeInsets.only(left: 58),
          child: Text('Check your cart'),
        ),
      ),
    );
  }

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
                Shoe shoe = value.getShoeList()[index];
                //RETURN THE SHOE
                return ShoeTile(
                  onTap: () => addShoeToCart(shoe),
                  shoe: shoe,
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(5),
            child: Divider(
              color: Color.fromARGB(255, 70, 186, 224),
            ),
          ),
        ],
      ),
    );
  }
}
