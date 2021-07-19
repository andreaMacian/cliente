import 'dart:async';

import 'package:clienteapp/model/servicio.dart';
import 'package:clienteapp/screens/buscandoServicio.dart';
import 'package:clienteapp/screens/enCamino.dart';
import 'package:clienteapp/screens/enRuta.dart';
import 'package:clienteapp/screens/escogerTrayecto.dart';
import 'package:clienteapp/screens/pagoServicioScreen.dart';
import 'package:clienteapp/screens/principal.dart';
import 'package:clienteapp/screens/seleccionConductor.dart';
import 'package:clienteapp/screens/seleccionDia.dart';
import 'package:clienteapp/screens/seleccionTarifa.dart';
import 'package:clienteapp/screens/seleccionUsuario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/cliente.dart';
import 'model/trabajador.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'screens/metodoPagoScreen.dart';
import 'screens/resumenServicioScreen.dart';

//VARIABLES GENERALS DEL PROGRAMA:

Color neutro = Colors.grey[300];
Color azul_claro = Color.fromARGB(100, 209, 224, 240);
Color azul_medio = Color.fromARGB(255, 34, 69, 109);
Color azul_oscuro = Color.fromARGB(255, 19, 39, 61);
Color amarillo = Color.fromARGB(255, 252, 201, 35);

//late GoogleMapController mapController;

Trabajador taxista = Trabajador(
    'TAX0001', 'Gustavo Martínez Polo', 3421, 'Sköda Karoq', '3231JSN');
Cliente cliente = Cliente('CLI0001', 'Andrea', 'HFK34', 144.97, 685245177);
Servicio viaje = Servicio(id_usuario: cliente.id);

/*List<Trabajador> favs = [
    Trabajador('Gustavos Martínez Polo', 3421, 'Sköda Karoq', '3231JSN'),
    Trabajador('Gustavo Martínez Polo', 9001, 'Kia Sportage', '2218JCC'),
    Trabajador('Gustavo Martínez Polo', 10240, 'Dacia Sandero', '0021HDK'),
    Trabajador('Gustavo Martínez Polo', 870, 'Seat Altea', '3991KTK'),
  ];*/

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /* 1-> PantallaPrincipal()
     2-> PantallaTrayecto()
     3-> SeleccionUsuario()
     4-> SeleccionDia()
     5-> SeleccionConductor()
     6-> SeleccionTarifa()
     7-> BuscandoServicio()
     8-> Espera Servicio()
     9-> EnRuta()
     10-> MetodoPago()
     11-> ResumenServicio()
  
  */
  int screen = 1; //POR DEFECTO AL INICIO ES LA 1
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _changeScreens(int numScreen) {
    setState(() {
      screen = numScreen;
    });
  }

  Widget build(BuildContext context) {
    var mainWidget;
    if (screen == 1) {
      mainWidget = PrincipalWidget(changeScreen: _changeScreens);
    } else if (screen == 2) {
      mainWidget = EscogerTrayecto(changeScreen: _changeScreens);
    } else if (screen == 3) {
      mainWidget = SeleccionUsuario(changeScreen: _changeScreens);
    } else if (screen == 4) {
      mainWidget = SeleccionDia(changeScreen: _changeScreens);
    } else if (screen == 5) {
      mainWidget = SeleccionConductor(changeScreen: _changeScreens);
    } else if (screen == 6) {
      mainWidget = SeleccionTarifa(changeScreen: _changeScreens);
    } else if (screen == 7) {
      mainWidget = BuscandoServicio(changeScreen: _changeScreens);
    } else if (screen == 8) {
      mainWidget = EnCamino(changeScreen: _changeScreens);
    } else if (screen == 9) {
      mainWidget = EnRuta(changeScreen: _changeScreens);
    } else if (screen == 10) {
      mainWidget = MetodoPagoScreen(changeScreen: _changeScreens);
    } else if (screen == 11) {
      mainWidget = ResumenServicioScreen(changeScreen: _changeScreens);
    }

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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: (screen == 2 ||
                          screen == 5 ||
                          screen == 10 ||
                          screen == 11)
                      ? 710
                      : (screen == 9)
                          ? 120
                          : 240, //120, //240,   //ESTA ALTURA VA CAMBIANDO opc 1, 2, 3
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: mainWidget,
                ),
                /*Container(
                  height: 50,
                  color: Colors.blueGrey[100],//azul_claro,
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
                ),*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
