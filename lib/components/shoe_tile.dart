// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //shoe pic
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                shoe.imagePath,
              ),
            ),
            //description
            Text(
              shoe.description,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),

            //price + details
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //shoe name
                      Text(
                        shoe.name,
                        style: GoogleFonts.acme(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      //price
                      Text(
                        shoe.price,
                        style: GoogleFonts.aBeeZee(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  //plus button
                  GestureDetector(
                    onTap: onTap ?? () {},
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(33),
                          bottomRight: Radius.circular(33),
                          topRight: Radius.circular(33),
                          bottomLeft: Radius.circular(33),
                        ),
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
