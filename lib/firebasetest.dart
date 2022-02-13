import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Fiorebasetest extends StatefulWidget {
  const Fiorebasetest({Key? key}) : super(key: key);

  @override
  _FiorebasetestState createState() => _FiorebasetestState();
}

class _FiorebasetestState extends State<Fiorebasetest> {

  final  textcontroller = TextEditingController();

  CollectionReference groceries =
  FirebaseFirestore.instance.collection('groceries');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed:()=>{
          groceries.add({
          'name': textcontroller.text,

          }),
            textcontroller.clear()
          }, label: Icon(Icons.save)),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:   TextFormField(
          controller: textcontroller,
        ),


      ),
      body: Center(
        child: StreamBuilder(
            stream: groceries.orderBy('name').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              return ListView(
                children: snapshot.data!.docs.map((grocery) {
                  return Center(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(grocery['name']),
                          onLongPress: () {
                            grocery.reference.delete();
                          },
                        ),


                      ],
                    ),
                  );
                }).toList(),
              );
            }),
      ),
    );
  }
}
