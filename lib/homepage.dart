

import 'package:flutter/material.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
class Homepage extends StatelessWidget {
    Homepage({Key? key}) : super(key: key);
final courssier=['CE021 ZEBA NOUFOU','CE022 YAO OGOU JEAN JACQUES','CE023 SANOGO BOUKARY'];
final service=['Assurance','ressource humaine',''];
  var select="Selectionnez le courssier";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 50,right: 30,left: 30),
            child: Text('Veillez selectionnez les differents champs et validez',textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5

            ),
          ),
          AwesomeDropDown(

              dropDownList: courssier,
            selectedItem:select ,
             selectedItemTextStyle: const TextStyle(
               color: Colors.blueAccent,
               fontSize: 16.0,
               fontWeight: FontWeight.bold,
             ),

          ),
        const   SizedBox(height: 30.0,),
          AwesomeDropDown(

            dropDownList: service,
            selectedItem:select ,
            selectedItemTextStyle: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 14.0,




            ),

          ),
       const    SizedBox(height: 30.0,),
     MaterialButton(
       color: Colors.amber,
       onPressed: ()=>{},
       child:const  Text(('Validez')),
     )
        ],
      ),
    );
  }
}

