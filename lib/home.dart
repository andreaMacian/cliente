import 'dart:math';

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
import 'package:provider/provider.dart';

import 'model/cliente.dart';
import 'model/directionsProvider.dart';
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
Servicio viaje = Servicio(
    id_usuario: cliente.id,
    origen: 'Av. Fernando Pessoa, 27',
    destino: 'Calle Palomar, 55',
    fechaInicio: DateTime.now());

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

  double latitudActual;
  double longitudActual;

  LatLng origen = LatLng(41.4406964, 2.1929965);
  /*final*/ LatLng destino = LatLng(41.4422415, 2.1914872);

  _centreView() async {
    await mapController.getVisibleRegion();
    var left = min(origen.latitude, destino.latitude);
    var right = max(origen.latitude, destino.latitude);
    var top = max(origen.longitude, destino.longitude);
    var bottom = min(origen.longitude, destino.longitude);
    var bounds = LatLngBounds(
        southwest: LatLng(left, bottom), northeast: LatLng(right, top));
    var cameraUpdate = CameraUpdate.newLatLngBounds(bounds, 50);
    mapController.animateCamera(cameraUpdate);
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

    /* List<LatLng> trayecto = [
      center,
      LatLng(45.521563, -122.977433),
      LatLng(45.721563, -123.277433),
      LatLng(45.921563, -123.677433),
      LatLng(46.121563, -124.077433),
      LatLng(46.321563, -124.477433),
      LatLng(46.521563, -124.877433),
      LatLng(46.721563, -125.277433),
      LatLng(46.921563, -125.777433),
    ];*/

    void _onMapCreated(GoogleMapController controller) {
      mapController = controller;
      _centreView();

      //var api = Provider.of<DirectionsProvider>(context, listen: false);
      //Provider.of<DirectionsProvider>(context, listen: false).findDirections(origen, destino);
    }

    Set<Marker> _createMarkers() {
      var tmp = Set<Marker>();
      tmp.add(Marker(
          markerId: MarkerId('origen'),
          position: origen,
          infoWindow: InfoWindow(title: 'Origen')));
      tmp.add(Marker(
          markerId: MarkerId('destino'),
          position: destino,
          infoWindow: InfoWindow(title: 'Destino')));
      return tmp;
    }

    bool visible;
    return ChangeNotifierProvider(
      create: (_) => DirectionsProvider(),
      child: MaterialApp(
        title: 'App de Clientes',
        theme: ThemeData(fontFamily: 'SFProText-Semibold'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            //fit: StackFit.expand,
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Consumer<DirectionsProvider>(
                builder: (BuildContext context, DirectionsProvider api,
                    Widget child) {
                  return GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: origen,
                      zoom: 9.0,
                    ),
                    markers: _createMarkers(),
                    polylines: api.currentRoute,
                    myLocationEnabled: true,
                    zoomGesturesEnabled: true,
                    myLocationButtonEnabled: true,
                  );
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: (screen == 2 ||
                            screen == 5 ||
                            screen == 10 ||
                            screen == 11)
                        ? 694
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
                  Container(
                    height: (screen == 1 ||
                            screen == 2 ||
                            screen == 3 ||
                            screen == 4 ||
                            screen == 5)
                        ? 50
                        : 0,
                    color: Colors.blueGrey[100], //azul_claro,
                    child: (screen == 1 ||
                            screen == 2 ||
                            screen == 3 ||
                            screen == 4 ||
                            screen == 5)
                        ? Row(
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
                          )
                        : null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
