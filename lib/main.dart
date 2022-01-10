import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/*
Code => Preferences => Settings => Search setting, 
type in "flutter test" => Dart: Flutter Test Additional Args, 
Add item => Add "--no-sound-null-safety"
*/
void main() {
  //starting firebase
  WidgetsFlutterBinding.ensureInitialized();

  //recupera a instancia do banco de dados
  Firestore db = Firestore.instance;

  db
      .collection("usuarios")
      .document("002")
      .setData({"nome": "Lara Lávisc", "idade": "25"});

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
