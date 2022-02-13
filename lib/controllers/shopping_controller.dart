import 'package:firestoretest/models/products.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var product=<Products>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchproducts();
  }

  void fetchproducts()async {
    await Future.delayed(const Duration(seconds:1));
    var productResult=[
      Products(
          id: 1,
          productName: "Arachid",
          productImage: "productImage",
          productDescription: "Produit Bio",
          price: 30.0

      ),
      Products(
        id: 2,
        productName: "Bueure",
        productImage: "productImage",
        productDescription: "Its so good",
        price: 40.0

      ),

      Products(
        id: 4,
        productName: "huile",
        productImage: "productImage",
        productDescription: "Its so good",
          price: 50.0

      ),

    ];
  product.value=productResult;
  }
}