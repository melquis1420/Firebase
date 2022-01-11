import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/*
Code => Preferences => Settings => Search setting, 
type in "flutter test" => Dart: Flutter Test Additional Args, 
Add item => Add "--no-sound-null-safety"
*/
/*
Code => Preferences => Settings => Search setting, 
type in "flutter run additional args", 
Add item => Add "--no-sound-null-safety"
*/
void main() async {
  /*
  //starting firebase
  WidgetsFlutterBinding.ensureInitialized();

  //retrieve the database instance
  Firestore db = Firestore.instance;

  //set data manually
  db
      .collection("usuarios")
      .document("002")
      .setData({"nome": "Lara", "idade": "25"});
      */

/*
//set data automatically
  db.collection("noticias").add(
      {"titulo": "Notícia de teste!!! ", "descricao": "texto de exemplo...."});
*/

  //db.collection("usuarios").document("003").delete(); //delete
/*
 //recover a data.
  DocumentSnapshot snapshot =
      await db.collection("usuarios").document("001").get();

  print("dados: " + snapshot.data.toString());

  */

/*
  QuerySnapshot querySnapshot = await db.collection("usuarios").getDocuments();

//take all data
  for (DocumentSnapshot item in querySnapshot.documents) {
    var dados = item.data;
    print("dados usuarios: " + dados.toString());
  }
  */
/*
  WidgetsFlutterBinding.ensureInitialized();
  Firestore db = Firestore.instance;

//Uses "listen" to notify if there is a change and update the watch list.
  db.collection("usuarios").snapshots().listen((snapshot) {
    for (DocumentSnapshot item in snapshot.documents) {
      var dados = item.data;
      print("dados usuarios: " + dados.toString());
    }
  });

  */

  //Applying filters

  WidgetsFlutterBinding.ensureInitialized();

  Firestore db = Firestore.instance;

  QuerySnapshot querySnapshot = await db
      .collection("usuarios")
      //.where("nome", isEqualTo: "lara")
      .where("idade", isGreaterThan: "15")
      //.where("idade", isLessThan: "26")
      .orderBy("idade", descending: true)
      .orderBy("nome", descending: false)
      .limit(3)
      .getDocuments();

  for (DocumentSnapshot item in querySnapshot.documents) {
    var dados = item.data;
    print("filtro nome: ${dados["nome"]} idade: ${dados["idade"]}");
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
