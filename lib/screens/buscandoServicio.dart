import 'dart:async';

import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class BuscandoServicio extends StatefulWidget {
  //const BuscandoServicio({ Key? key }) : super(key: key);
  const BuscandoServicio({Key key, this.changeScreen}) : super(key: key);

  final Function(int numScreen) changeScreen;

  @override
  _BuscandoServicioState createState() => _BuscandoServicioState();
}

class _BuscandoServicioState extends State<BuscandoServicio> {
  void _startTimer() {
    Timer(Duration(seconds: 3), () {
      widget.changeScreen(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    _startTimer();
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6, top: 21, bottom: 11),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 21,
              color: azul_oscuro,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text(
                'Buscando Servicio...',
                style: TextStyle(
                  fontFamily: 'SFProText-Bold',
                  fontSize: 17,
                  color: azul_oscuro,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Resumen Viaje:',
                style: TextStyle(
                  fontFamily: 'SFProText-Semibold',
                  fontSize: 14,
                  color: azul_oscuro,
                ),
              ),
              SizedBox(height: 3),
              Container(
                  height: 90,
                  //color: Colors.deepOrange,/////////////////////////////////////
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Servicio Premium',
                            style: TextStyle(
                              fontFamily: 'SFProText-Regular',
                              fontSize: 14,
                              color: Colors.blueGrey[200],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Origen: Calle Aragón, 321',
                        style: TextStyle(
                          fontFamily: 'SFProText-Regular',
                          fontSize: 14,
                          color: Colors.blueGrey[200],
                        ),
                      ),
                      Text(
                        'Destino: Avenida Diagonal, 133',
                        style: TextStyle(
                          fontFamily: 'SFProText-Regular',
                          fontSize: 14,
                          color: Colors.blueGrey[200],
                        ),
                      ),
                      Text(
                        'Hoy - Inmediatamente',
                        style: TextStyle(
                          fontFamily: 'SFProText-Regular',
                          fontSize: 14,
                          color: Colors.blueGrey[200],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
          Spacer(),
          Container(
            width: 110,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        size: 27,
                        color: Colors.blueGrey[200],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18),
                Text(
                  '21-26€',
                  style: TextStyle(
                    fontFamily: 'SFProText-Bold',
                    fontSize: 17,
                    color: azul_oscuro,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
