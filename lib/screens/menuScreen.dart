import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
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
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                    ),
                    Spacer(),
                    Text(
                      '¡Hola Andrea!',
                      style: TextStyle(
                        fontFamily: 'SFProText-Bold',
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    SizedBox(width:20),
                  ],
                ),
                SizedBox(height: 39),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 39),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //IconButton (icon: Icons.adjust_rounded, iconSize: 12,onPressed: () {  },),
                        Icon(Icons.person_rounded),
                        SizedBox(width: 12),
                        Text(
                          'Mi Cuenta',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      color: Colors.blueGrey[100],
                      height: 0.5,
                      width: 180,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.shopping_bag_rounded),
                        SizedBox(width: 12),
                        Text('Promociones'),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      color: Colors.blueGrey[100],
                      height: 0.5,
                      width: 180,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.ac_unit_rounded),
                        SizedBox(width: 12),
                        Text('Taxistas Favoritos'),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      color: Colors.blueGrey[100],
                      height: 0.5,
                      width: 180,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                            Icons.send_rounded), //airplanemode_active_rounded),
                        SizedBox(width: 12),
                        Text('Mis Viajes'),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      color: Colors.blueGrey[100],
                      height: 0.5,
                      width: 180,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.people_alt_rounded),
                        SizedBox(width: 12),
                        Text('Invitar Amigos'),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      color: Colors.blueGrey[100],
                      height: 0.5,
                      width: 180,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.credit_score),
                        SizedBox(width: 12),
                        Text('Métodos de Pago'),
                        SizedBox(width: 6),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      color: Colors.blueGrey[100],
                      height: 0.5,
                      width: 180,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.settings),
                        SizedBox(width: 12),
                        Text('Ayuda'),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
