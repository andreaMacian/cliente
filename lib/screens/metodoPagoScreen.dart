import 'dart:async';
//import 'dart:js';

import 'package:flutter/material.dart';

import '../home.dart';

class MetodoPagoScreen extends StatefulWidget {
  const MetodoPagoScreen({Key key, this.changeScreen}) : super(key: key);

  final Function(int numScreen) changeScreen;
  @override
  _MetodoPagoScreenState createState() => _MetodoPagoScreenState();
}

class _MetodoPagoScreenState extends State<MetodoPagoScreen> {
  bool valorCheckBox = false;

  Map<String, bool> values = {
    'Efectivo': false,
    'Contactless': false,
    'Tarjeta Bancaria': false,
    'Paypal': false,
    'Bizum': false,
  };

  @override
  Widget build(BuildContext context) {
    showAlertDialog() {
      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('El pago ha sido recibido correctamente. Gracias'),
            actions: [
              TextButton(
                child: Text(
                  'Ok',
                  style: TextStyle(
                    fontFamily: 'SFProText-Bold',
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  viaje.fechaFin = DateTime.now(); //FECHA DE FINAL
                  Navigator.of(context).pop();
                  widget.changeScreen(11);
                },
              ),
            ],
          );
        },
      );
    }

    void _startTimer() {
      Timer(Duration(seconds: 3), () {
        //widget.changeScreen(11);
        showAlertDialog();
      });
    }

    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 21, right: 18, top: 21, bottom: 11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      'Métodos de Pago',
                      style: TextStyle(
                        fontFamily: 'SFProText-Bold',
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 35), //SCROLL DE ESA PARTE
                Container(
                  width: 260,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Servicio Taxi ${viaje.tipo}',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Tarifa: ${viaje.tarifa}',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Coste Final:',
                            style: TextStyle(
                              fontFamily: 'SFProText-Semibold',
                              fontSize: 14,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '22,60€',
                            style: TextStyle(
                              fontFamily: 'SFProText-Bold',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.credit_card_off_rounded,
                            size: 28,
                            color: amarillo,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Métodos de Pago',
                            style: TextStyle(
                              fontFamily: 'SFProText-Semibold',
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 0.5,
                        color: amarillo,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Efectivo',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Confirmación del conductor',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Checkbox(
                              value: values['Efectivo'],
                              activeColor: amarillo,
                              onChanged: (bool newValue) {
                                setState(() {
                                  values['Efectivo'] = newValue;
                                  viaje.metodo_pago= 'Efectivo';
                                });
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 0.5,
                        color: amarillo,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contactless',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Checkbox(
                              value: values['Contactless'],
                              activeColor: amarillo,
                              onChanged: (bool newValue) {
                                setState(() {
                                  values['Contactless'] = newValue;
                                  viaje.metodo_pago= 'Contactless';
                                });
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 0.5,
                        color: amarillo,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tarjeta Bancaria',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Checkbox(
                              value: values['Tarjeta Bancaria'],
                              activeColor: amarillo,
                              onChanged: (bool newValue) {
                                setState(() {
                                  values['Tarjeta Bancaria'] = newValue;
                                  viaje.metodo_pago= 'Tarjeta Bancaria';
                                });
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 0.5,
                        color: amarillo,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Paypal',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Checkbox(
                              value: values['Paypal'],
                              activeColor: amarillo,
                              onChanged: (bool newValue) {
                                setState(() {
                                  values['Paypal'] = newValue;
                                  viaje.metodo_pago= 'Paypal';
                                });
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 0.5,
                        color: amarillo,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bizum',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Desde el móvil registrado',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Checkbox(
                              value: values['Bizum'],
                              activeColor: amarillo,
                              onChanged: (bool newValue) {
                                setState(() {
                                  values['Bizum'] = newValue;
                                  viaje.metodo_pago= 'Bizum';
                                });
                              }),
                        ],
                      ),
                      SizedBox(height: 24),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.savings_rounded,
                            size: 28,
                            color: amarillo,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Código Promocional',
                            style: TextStyle(
                              fontFamily: 'SFProText-Semibold',
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 0.5,
                        color: amarillo,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      //aqui caudro texto
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 160,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Añade tu código',
                                labelStyle: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 12,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.0)),
                                  borderSide: BorderSide(color: azul_oscuro),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '5% Descuento',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Checkbox(
                              value: valorCheckBox,
                              checkColor: amarillo,
                              onChanged: (bool newValue) {}),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '10% Descuento',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Checkbox(
                              value: valorCheckBox,
                              checkColor: amarillo,
                              onChanged: (bool newValue) {}),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    amarillo)), //COLOR BOTON
                            onPressed: () {
                              _startTimer();
                              //showAlertDialog();
                            },
                            child: Text(
                              'Proceder al Pago',
                              style: TextStyle(
                                fontFamily: 'SFProText-Semibold',
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
