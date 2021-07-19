import 'dart:async';

import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class EnRuta extends StatefulWidget {
  //const EnRuta({ Key? key }) : super(key: key);
  const EnRuta({Key key, this.changeScreen}) : super(key: key);

  final Function(int numScreen) changeScreen;
  @override
  _EnRutaState createState() => _EnRutaState();
}

class _EnRutaState extends State<EnRuta> {
  //ESTE TIMER DEBERÍA QUITARSE
  void _startTimer() {
    Timer(Duration(seconds: 5), () {
      widget.changeScreen(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    _startTimer();
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 18, top: 31, bottom: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'En Ruta',
            style: TextStyle(
              fontFamily: 'SFProText-Bold',
              fontSize: 17,
              color: azul_oscuro,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Destino: Av. Diagonal, 133',
            style: TextStyle(
              fontFamily: 'SFProText-Semibold',
              fontSize: 14,
              color: azul_oscuro,
            ),
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Tiempo estimado de llegada:',
                style: TextStyle(
                  fontFamily: 'SFProText-Regular',
                  fontSize: 14,
                  color: Colors.blueGrey[200],
                ),
              ),
              Text(
                '14 min',
                style: TextStyle(
                  fontFamily: 'SFProText-Bold',
                  fontSize: 17,
                  color: azul_oscuro,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
