
import 'package:firestoretest/revision/produit.dart';
import 'package:get/get.dart';

class ShopController extends GetxController{

  var produit=<Produits>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProduits();
  }

  void fetchProduits() async {
    await Future.delayed(const Duration(seconds: 1));

    var resultaProduits=[
      Produits(
        id: 1,
        nomduProduit: "Avocat",
        description: "Ce produit est tres bon pour la santé",
        prix:18.0,
        produitImage: "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"
      ),
      Produits(
          id: 2,
          nomduProduit: "Banane",
          description: "Ce produit est tres bon pour la santé",
          prix:18.0,
          produitImage: "https://images.unsplash.com/photo-1528825871115-3581a5387919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFuYW5hfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"

      ),
      Produits(
          id: 1,
          nomduProduit: "Avocat",
          description: "Ce produit est tres bon pour la santé",
          prix:18.0,
          produitImage: "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"
      ),
    ];

    produit.value=resultaProduits;

  }




}