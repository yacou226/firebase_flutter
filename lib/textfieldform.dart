import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';




class Textfielf extends StatefulWidget {
  const Textfielf({Key? key}) : super(key: key);

  @override
  _TextfielfState createState() => _TextfielfState();
}

class _TextfielfState extends State<Textfielf> {
  TextEditingController matriculeController= TextEditingController();
  TextEditingController serviceController= TextEditingController();

  CollectionReference groceries =
  FirebaseFirestore.instance.collection('courssier');

  @override
  Widget build(BuildContext context) {
    final courssier=['CE021 ZEBA NOUFOU','CE022 YAO OGOU JEAN JACQUES','CE023 SANOGO BOUKARY'];
    final service=['Assurance','ressource humaine',''];
    var select="Selectionnez le courssier";
    return Scaffold(
      appBar:  AppBar(
        title:const  Text('Key generator '),
        centerTitle: true,

      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,

        children: [
        const   Padding(
            padding:  EdgeInsets.all(30.0),
            child:  Text('Veillez Remplir tout les champs',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18.0
              )
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: matriculeController,
              decoration: const InputDecoration(
                hintText:'Entrez votre matricule',

                border:  OutlineInputBorder(),
                contentPadding: EdgeInsets.all(10.0),
              ),
            ),
          ),
          const SizedBox(height: 15.0,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: serviceController,
              decoration: const InputDecoration(
                hintText:'Entrez le service',

                border:  OutlineInputBorder(),
                contentPadding: EdgeInsets.all(10.0),


              ),
            ),
          ),


      const  SizedBox(height: 15.0,),
       MaterialButton(
         color: Colors.amber,
         child:const  Text('Valider'),
         onPressed: ()=>{
           groceries.add({
             'matricule': matriculeController.text,

             'service':serviceController.text,



           }),
           matriculeController.clear(),
           serviceController.clear(),

         Get.snackbar(
         "Merci",
         "votre demande est en cour",
         icon:const  Icon(Icons.person, color: Colors.white),
         snackPosition: SnackPosition.BOTTOM,
         ),
         },
       )


        ],
      ),
    );
  }
}
