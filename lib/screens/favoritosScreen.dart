import 'package:clienteapp/home.dart';
import 'package:clienteapp/model/trabajador.dart';
import 'package:flutter/material.dart';

class Conductor extends StatelessWidget {
  //const Conductor({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Trabajador> favs = [
      /*Trabajador('Gustavo Martínez Polo', 3421, 'Sköda Karoq', '3231JSN'),
      Trabajador('Gustavo Martínez Polo', 9001, 'Kia Sportage', '2218JCC'),
      Trabajador('Gustavo Martínez Polo', 10240, 'Dacia Sandero', '0021HDK'),
      Trabajador('Gustavo Martínez Polo', 870, 'Seat Altea', '3991KTK'),*/
    ];
    return ListView.builder(
      itemCount: favs.length,
      itemBuilder: (context, index) {
        return FavoritosScreen(
          favoritos: favs,
        );
      },
    );
  }
}

class FavoritosScreen extends StatefulWidget {
  const FavoritosScreen({
    Key key,
    @required this.favoritos,
  }) : super(key: key);

  final List<Trabajador> favoritos;

  @override
  _FavoritosScreenState createState() => _FavoritosScreenState();
}

class _FavoritosScreenState extends State<FavoritosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, //pantalla mapa
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 660,
            width: 290,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 39,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 6,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                        color: azul_oscuro,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Taxistas Favoritos',
                      style: TextStyle(
                        fontFamily: 'SFProText-Bold',
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    SizedBox(width: 40),
                  ],
                ),
                SizedBox(height: 39),
                Container(
                  height: 90,
                  child: Image.asset(
                    'assets/volante-01.png',
                    color: amarillo,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    width: 230,
                    child: Column(
                      children: [/*
                        ListView.builder(
                          itemBuilder: (context, index) =>
                              Text(widget.favoritos[index].nombre),
                          itemCount: widget.favoritos.length,
                          //separatorBuilder: (_, index) => Divider(),
                        )*/
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
