import 'package:clienteapp/screens/buscandoServicio.dart';
import 'package:clienteapp/screens/chatScreen.dart';
import 'package:clienteapp/screens/enCamino.dart';
import 'package:clienteapp/screens/principal.dart';
import 'package:clienteapp/screens/seleccionDia.dart';
import 'package:clienteapp/screens/seleccionTarifa.dart';
import 'package:clienteapp/screens/seleccionUsuario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/trabajador.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'screens/ayudaScreen.dart';
import 'screens/favoritosScreen.dart';
import 'screens/invitarAmigosScreen.dart';
import 'screens/mainScreen.dart';
import 'screens/resumenServicioScreen.dart';

Color neutro = Colors.grey[300];
Color azul_claro = Color.fromARGB(100, 209, 224, 240);
Color azul_medio = Color.fromARGB(255, 34, 69, 109);
Color azul_oscuro = Color.fromARGB(255, 19, 39, 61);
Color amarillo = Color.fromARGB(255, 252, 201, 35);

//late GoogleMapController mapController;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Trabajador> favs = [
    Trabajador('Gustavos Martínez Polo', 3421, 'Sköda Karoq', '3231JSN'),
    Trabajador('Gustavo Martínez Polo', 9001, 'Kia Sportage', '2218JCC'),
    Trabajador('Gustavo Martínez Polo', 10240, 'Dacia Sandero', '0021HDK'),
    Trabajador('Gustavo Martínez Polo', 870, 'Seat Altea', '3991KTK'),
  ];

  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Clientes',
      theme: ThemeData(fontFamily: 'SFProText-Semibold'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
            //fit: StackFit.expand,
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
              Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: EnCamino(), //EL WIDGET ESTE VA CAMBIANDO
              ),
              Container(
                height: 50,
                color: azul_claro,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_road_rounded,
                        size: 30,
                        color: azul_oscuro,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.electric_car_rounded,
                        size: 30,
                        color: azul_oscuro,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.flag_rounded,
                        size: 30,
                        color: azul_oscuro,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}

/*return Scaffold(
      body: Center(
        child:  SelectedTags(tags: ["terror", "action"]),//Bombeta(),
      ),
    );*/
/*
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }/*
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final inscripcionsUser = FirebaseFirestore.instance
        .collection('Usuaris')
        .doc('${FirebaseAuth.instance.currentUser.uid}')
        .collection(
            'inscripcions'); //recollim les dades de les inscripcions del user logIn

    return StreamBuilder(
      stream: inscripcionsUser.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final inscripcionsDocs =
            snapshot.data.docs; //llista codis activ inscrites user

        final Set<String> inscripcions = Set<String>();
        for (var inscr in inscripcionsDocs) {
          inscripcions.add(inscr.id);
        }

        return StreamBuilder(
          stream: llistaActivitats(),
          builder: (context, AsyncSnapshot<List<Activitat>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final llistaActivitats = snapshot.data;

            for (int i = 0; i < llistaActivitats.length; i++) {
              final activitat = llistaActivitats[i];
              if (inscripcions.contains(activitat.id)) {
                activitat.inscrita = true;
              }
            }

            return Provider.value(
              value: llistaActivitats,
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Gimnàs UFit: User App',
                home: MyHomePage(),
              ),
            );
          },
        );
      },
    );
  }*/
}

int screen = 1;

class MyHomePage extends StatefulWidget {/*
  MyHomePage();
  @override
  _MyHomePageState createState() => _MyHomePageState();*/
}

class _MyHomePageState extends State<MyHomePage> {
  /*
    0 -> newsScreen
    1 -> CalendarGlobal
    2 -> personalCalendar
    */

  String title = "Calendari d'Activitats";
  List<String> listaFiltro = [
    'Spinning',
    'Calistenia',
    'Kickboxing',
    'Ioga',
    'Crossfit',
  ];

  @override
  Widget build(BuildContext context) {
    var mainwidget;
    if (screen == 0) {
      //go to news screen
      mainwidget = NewsScreen();
      title = "Notícies";
    } else if (screen == 1) {
      //calendar global
      mainwidget = GlobalCalendarScreen(
        listaFiltro: listaFiltro,
      );
      title = "Calendari d'Activitats";
    } else {
      //go to Personal calendar Screen
      mainwidget = PersonalCalendarScreen();
      title = "Calendari Personal";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
        backgroundColor: colorGym,
        actions: [
          (screen == 1)
              ? IconButton(
                  icon: Icon(Icons.filter_alt_outlined),
                  onPressed: () {
                    actsFiltre = [];
                    listaFiltro = [
                      'Spinning',
                      'Calistenia',
                      'Kickboxing',
                      'Ioga',
                      'Crossfit',
                    ]; //reiniciem el filtre cada cop que entrem
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                      builder: (context) => FilterScreen(
                        listaFiltro: listaFiltro,
                      ),
                    ))
                        .then((actsFiltre) {
                      setState(() {
                        listaFiltro = actsFiltre;
                      });
                    });
                  },
                )
              : (screen == 2)
                  ? IconButton(
                      icon: Icon(Icons.logout),
                      onPressed: () {
                        screen = 1;
                        FirebaseAuth.instance.signOut();
                      },
                    )
                  : SizedBox(), //cap icona
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: mainwidget,
            ),
            BottomAppBar(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      FlatButton(
                        child: Icon(Icons.list,
                            color: (screen == 0) ? Colors.grey : Colors.black),
                        onPressed: () {
                          setState(() {
                            screen = 0;
                          });
                        },
                      ),
                      Spacer(),
                      FlatButton(
                        child: Icon(Icons.calendar_today,
                            color: (screen == 1) ? Colors.grey : Colors.black),
                        onPressed: () {
                          setState(() {
                            screen = 1;
                          });
                        },
                      ),
                      Spacer(),
                      FlatButton(
                        child: Icon(Icons.perm_contact_calendar,
                            color: (screen == 2) ? Colors.grey : Colors.black),
                        onPressed: () {
                          setState(() {
                            screen = 2;
                          });
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
