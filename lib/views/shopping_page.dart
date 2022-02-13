import 'package:firestoretest/controllers/card_controller.dart';
import 'package:firestoretest/controllers/shopping_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cardcontroller=Get.put(CardController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.amber,
           icon: const Icon(Icons.add_shopping_cart) ,
           
          onPressed:()=>{} ,
        label: GetX<CardController>(

            builder: (controller) {
              return  Text(controller.count.toString());
            }
          ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.product.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.product[index].productName,
                                        style: const TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                          controller.product[index].productDescription,
                                        style: Theme.of(context).textTheme.headline5,),


                                    ],

                                  ),
                                  Text(
                                     " ${controller.product[index].price}"
                                  ),


                                ],
                              ),
                              ElevatedButton(


                                  onPressed: ()=>{
                                    cardcontroller.addToCart(
                                      controller.product[index]
                                    )
                                  },
                                  child: const Text('Add to Card'),


                              )

                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),

        GetX<CardController>(

          builder: (controller) {
            return   Text("\$${
            controller.totalPrice
            }",
             style: Theme.of(context).textTheme.headline4!.copyWith(
               color: Colors.amber
             ),
       );
          }
        ),
         const    SizedBox(
              height: 100,
            )
          ],
        ),
      ),

    );
  }

}