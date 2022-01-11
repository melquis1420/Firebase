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
void main() {
  //starting firebase
  WidgetsFlutterBinding.ensureInitialized();

  //retrieve the database instance
  Firestore db = Firestore.instance;

  /*

  //set data manually
  db
      .collection("usuarios")
      .document("002")
      .setData({"nome": "Lara", "idade": "25"});
      */

//set data automatically
  db.collection("noticias").add(
      {"titulo": "Notícia de teste!!! ", "descricao": "texto de exemplo...."});

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
