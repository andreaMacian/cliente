import 'dart:async';

import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class EnCamino extends StatefulWidget {
  //const EnCamino({ Key? key }) : super(key: key);
  const EnCamino({Key key, this.changeScreen}) : super(key: key);

  final Function(int numScreen) changeScreen;
  @override
  _EnCaminoState createState() => _EnCaminoState();
}

class _EnCaminoState extends State<EnCamino> {

  void _startTimer() {
    Timer(Duration(seconds: 7), () {
      widget.changeScreen(9);
    });
  }

  @override
  Widget build(BuildContext context) {
    _startTimer();
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 6, top: 31, bottom: 11),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'En Camino...',
                style: TextStyle(
                  fontFamily: 'SFProText-Bold',
                  fontSize: 17,
                  color: azul_oscuro,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Recogida: ${viaje.origen}',
                style: TextStyle(
                  fontFamily: 'SFProText-Semibold',
                  fontSize: 14,
                  color: azul_oscuro,
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    'Tiempo estimado de llegada:',
                    style: TextStyle(
                      fontFamily: 'SFProText-Regular',
                      fontSize: 14,
                      color: Colors.blueGrey[200],
                    ),
                  ),
                  SizedBox(width: 32),
                  Text(
                    '4 min',
                    style: TextStyle(
                        fontFamily: 'SFProText-Bold',
                        fontSize: 17,
                        color: azul_oscuro),
                  ),
                ],
              ),
              SizedBox(height: 18),
              Text(
                '${taxista.vehiculo} ${taxista.matricula} - Licencia ${taxista.licencia} ',
                style: TextStyle(
                  fontFamily: 'SFProText-Semibold',
                  fontSize: 14,
                  color: azul_oscuro,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '${taxista.nombre}',
                style: TextStyle(
                  fontFamily: 'SFProText-Regular',
                  fontSize: 14,
                  color: Colors.blueGrey[200],
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              widget.changeScreen(1);
            },
            icon: Icon(
              Icons.close,
              size: 27,
              color: Colors.blueGrey[200],
            ),
          ),
        ],
      ),
    );
  }
}
