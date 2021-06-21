import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


import 'home.dart';

final db = FirebaseFirestore.instance;

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
runApp(Home());
}

/* VER UN DOCUMENTO puntual:
FutureBuilder(
future: db.collection('...').document('...').get(),
builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
// Construir un widget en función de los datos
},
)*/

/* UNA COLECCION puntual:
FutureBuilder(
future: db.collection('...').getDocuments(),
builder: (context, AsyncSnapshot<QuierySnapshot> snapshot) {
// Construir un widget en función de los datos
},
)*/

/* VER UN DOCUMENTO permanente:
StreamBuilder(
stream: db.collection('...').document('...').snapshots(),
builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
// Construir un widget en función de los datos
},
)*/

/* UNA COLECCION permanente:
StreamBuilder(
stream: db.collection('...').snapshots(),
builder: (context, AsyncSnapshot<QuierySnapshot> snapshot) {
// Construir un widget en función de los datos
},
)*/