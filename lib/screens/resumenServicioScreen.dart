import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class ResumenServicioScreen extends StatefulWidget {
  @override
  _ResumenServicioScreenState createState() => _ResumenServicioScreenState();
}

class _ResumenServicioScreenState extends State<ResumenServicioScreen> {
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
                      'Resumen Servicio',
                      style: TextStyle(
                        fontFamily: 'SFProText-Bold',
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    SizedBox(width: 50),
                  ],
                ),
                SizedBox(height: 18),
                Container(
                  height: 90,
                  child: Image.asset(
                    'assets/avion-de-papel-01.png',
                    color: amarillo,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 230,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '16 Abril 2021, 19:32',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 16.5,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Servicio Taxi Premium',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Coste: 22,60€',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Método de Pago: Efectivo',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Recogida: Av. Carrilet, 229',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Destino: Carrer dels Horts, 32',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Inicio: 16 Abril 2021, 19:32h',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Fin: 16 Abril 2021, 19:51h',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Seat Mii 6902GHY',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Semibold',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'Lic. 4310',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Semibold',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'Paco Sánchez Álamo',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Semibold',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 32),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/Paco.jpg',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      IconButton(
                        icon: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.favorite_rounded,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Text(
                              'Añadir a Favoritos',
                              style: TextStyle(
                                  fontFamily: 'SFProText-Semibold',
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 252, 201, 35)),
                            )
                          ],
                        ),
                        color: Color.fromARGB(255, 252, 201, 35),
                        onPressed: () {},
                      ),
                      SizedBox(height: 6),
                      IconButton(
                        icon: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.chat_bubble_rounded,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Text(
                              'Contactar con Conductor',
                              style: TextStyle(
                                  fontFamily: 'SFProText-Semibold',
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 252, 201, 35)),
                            )
                          ],
                        ),
                        color: Color.fromARGB(255, 252, 201, 35),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
