import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Impact 4s',
      price: '236',
      imagePath: 'lib/images/impact_4.jpeg',
      description: 'The forward-thinking design of his latest signature shoe.',
    ),

    Shoe(
      name: 'Jam W',
      price: '349',
      imagePath: 'lib/images/jam_w.jpeg',
      description:
          'Bring your body, mind and soul with JAM—Nike\'s first shoe created for breakers on the world stage.',
    ),

    Shoe(
      name: 'Running Shoes',
      price: '199',
      imagePath: 'lib/images/running.jpeg',
      description:
          'The maximum cushioning provides a comfortable ride for everyday runs. ',
    ),
  ];

  //List of items in the user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to the cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
