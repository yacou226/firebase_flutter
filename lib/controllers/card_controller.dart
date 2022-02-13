

import 'package:firestoretest/models/products.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';


class CardController extends GetxController{
  var cartItems=<Products>[].obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Products products){
    cartItems.add(products);
  }
}
