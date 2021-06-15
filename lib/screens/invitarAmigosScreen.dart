import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class InvitarAmigosScreen extends StatefulWidget {
  @override
  _InvitarAmigosScreenState createState() => _InvitarAmigosScreenState();
}

class _InvitarAmigosScreenState extends State<InvitarAmigosScreen> {
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
                      'Invitar Amigos',
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
                    'assets/grupo-de-usuario-01.png',
                    color: amarillo,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    width: 230,
                    child: Column(
                      children: [
                        SizedBox(height: 12),
                        TextField(
                          enabled: false,
                          style: TextStyle(
                            height: 0.8,
                          ),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              fontFamily: 'SFProText-Bold',
                              color: Colors.black87,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            labelText: '4QR90F6',
                          ),
                        ),
                        SizedBox(height: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Text(
                              '¡Invita a 5 amigos!',
                              style: TextStyle(
                                fontFamily: 'SFProText-Semibold',
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Si introducen tu código en su primer viaje, obtendrás ofertas exclusivas.',
                              style: TextStyle(
                                fontFamily: 'SFProText-Regular',
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
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
