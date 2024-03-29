import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class SeleccionTarifa extends StatefulWidget {
  //const SeleccionTarifa({ Key? key }) : super(key: key);
  const SeleccionTarifa({Key key, this.changeScreen}) : super(key: key);

  final Function(int numScreen) changeScreen;
  @override
  _SeleccionTarifaState createState() => _SeleccionTarifaState();
}

class _SeleccionTarifaState extends State<SeleccionTarifa> {
  int numScreen=6;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6, top: 21, bottom: 11),
      child: Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      widget.changeScreen(2);
                      numScreen=2;
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 21,
                      color: azul_oscuro,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {
                      viaje.tarifa='Precio Cerrado';
                      widget.changeScreen(7);
                      numScreen=7;
                    },
                    child: Container(
                      width: 270,
                      height: 70,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.emoji_events_rounded,
                            size: 28,
                            color: (numScreen == 7) ? amarillo : azul_oscuro,
                          ),
                          SizedBox(width: 6),
                          Container(
                            width: 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${viaje.tipo}',
                                  style: TextStyle(
                                    fontFamily: 'SFProText-Bold',
                                    fontSize: 17,
                                    color: azul_oscuro,
                                  ),
                                ),
                                Text(
                                  'Tarifa precio cerrado',
                                  style: TextStyle(
                                    fontFamily: 'SFProText-Regular',
                                    fontSize: 14,
                                    color: azul_oscuro,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            '24,75€',
                            style: TextStyle(
                              fontFamily: 'SFProText-Bold',
                              fontSize: 17,
                              color: azul_oscuro,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {
                      viaje.tarifa='Taxímetro';
                      widget.changeScreen(7);
                      numScreen=7;
                    },
                    child: Container(
                      width: 270,
                      height: 70,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.emoji_events_rounded,
                            size: 28,
                            color: (numScreen == 7) ? amarillo : azul_oscuro,
                          ),
                          SizedBox(width: 6),
                          Container(
                            width: 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${viaje.tipo}',
                                  style: TextStyle(
                                    fontFamily: 'SFProText-Bold',
                                    fontSize: 17,
                                    color: azul_oscuro,
                                  ),
                                ),
                                Text(
                                  'Tarifa taximetro',
                                  style: TextStyle(
                                    fontFamily: 'SFProText-Regular',
                                    fontSize: 14,
                                    color: azul_oscuro,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            '21-26€',
                            style: TextStyle(
                              fontFamily: 'SFProText-Bold',
                              fontSize: 17,
                              color: azul_oscuro,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
