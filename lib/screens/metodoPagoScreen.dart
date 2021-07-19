import 'package:flutter/material.dart';

import '../home.dart';

class MetodoPagoScreen extends StatelessWidget {
  bool valorCheckBox = false;
  @override
  Widget build(BuildContext context) {
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
                        'Servicio Taxi Premium',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Tarifa: Taximetro',
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
                              value: valorCheckBox,
                              checkColor: amarillo,
                              onChanged: (bool newValue) {}),
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
                              value: valorCheckBox,
                              checkColor: amarillo,
                              onChanged: (bool newValue) {}),
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
                              value: valorCheckBox,
                              checkColor: amarillo,
                              onChanged: (bool newValue) {}),
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
                              value: valorCheckBox,
                              checkColor: amarillo,
                              onChanged: (bool newValue) {}),
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
                              value: valorCheckBox,
                              checkColor: amarillo,
                              onChanged: (bool newValue) {}),
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
                              /*setState(() {
                                screen = 1;
                              });*/
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
