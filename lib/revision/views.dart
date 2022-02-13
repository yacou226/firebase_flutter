import 'package:firestoretest/controllers/shopping_controller.dart';
import 'package:firestoretest/revision/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Views extends StatefulWidget {
  const Views({Key? key}) : super(key: key);

  @override
  _ViewsState createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  var shopcontroller=Get.put(ShopController());


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
          SafeArea(
            child: GetX<ShopController>(
                builder: (controller){
                  return ListView.builder(
                    itemCount: controller.produit.length,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children:  [
                                                   CircleAvatar(
                                                   child:  Text("${controller.produit[index].id}"),

                                                 ),const SizedBox(
                                                  width: 16.0,
                                                ),
                                                Text(controller.produit[index].nomduProduit ?? ''),
                                              ],
                                            ),
                                            const Icon(Icons.add),
                                          ],
                                        ),
                                        const SizedBox(height: 10,),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width,
                                          height: 200,
                                        child: Image.network(controller.produit[index].produitImage??'',
                                          fit: BoxFit.cover,
                                        ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("${controller.produit[index].description}"),
                                        )

                                      ],
                                    ),
                                  ),
                                ),
                        );
                      });
                }
            ),
          )

 


         
      
    );
  }
}
