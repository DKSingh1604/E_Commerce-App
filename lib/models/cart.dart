import 'package:e_commmerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //LIST OF SHOES FOR SALE
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      description: 'A very cool design just for you',
      imagePath: 'lib/images/new2.png',
    ),
    Shoe(
      name: 'Best Ones',
      price: '400',
      description: 'A very cool design just for you',
      imagePath: 'lib/images/new3.png',
    ),
    Shoe(
      name: 'Gucci Ones',
      price: '500',
      description: 'A very cool design just for you',
      imagePath: 'lib/images/new4.png',
    ),
    Shoe(
      name: 'Balanciaga',
      price: '1000',
      description: 'A very cool design just for you',
      imagePath: 'lib/images/new5.png',
    ),
  ];

  //LIST OF ITEMS IN USER CART
  List<Shoe> userCart = [];

  //GET LIST OF SHOES FOR SALE
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //GET CART
  List<Shoe> getUserCart() {
    return userCart;
  }

  //ADD ITEMS TO CART
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //REMOVE ITEMS FROM CART
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
