import 'package:flutter/material.dart';

class AyudaScreen extends StatefulWidget {
  @override
  _AyudaScreenState createState() => _AyudaScreenState();
}

class _AyudaScreenState extends State<AyudaScreen> {
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
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Ayuda',
                      style: TextStyle(
                        fontFamily: 'SFProText-Bold',
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    SizedBox(width: 50),
                  ],
                ),
                SizedBox(height: 39),
                SingleChildScrollView(
                  //SCROLL NO VA
                  child: Container(
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Uso de Datos',
                          style: TextStyle(
                            fontFamily: 'SFProText-Semibold',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Desde la aplicación nos comprometemos con el cliente a no usar de forma inadecuada los datos proporcionados en la plataforma.',
                          style: TextStyle(
                            fontFamily: 'SFProText-Regular',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'De la misma manera, se asegura que esta información será confidencial y no se utilizará para el tráfico de datos ni estadísticas.',
                          style: TextStyle(
                            fontFamily: 'SFProText-Regular',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Ayuda',
                          style: TextStyle(
                            fontFamily: 'SFProText-Semibold',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Cuando un cliente desee contactar con un conductor, este podrá hacerlo desde el chat proporcionado por la aplicación de forma segura y confidencial.',
                          style: TextStyle(
                            fontFamily: 'SFProText-Regular',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Estas conversaciones son provadas y quedarán eliminadas una vez el servicio finalice..',
                          style: TextStyle(
                            fontFamily: 'SFProText-Regular',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'La difusión de estas fuera del ámbito de la plataforma será penalizado por el servicio.',
                          style: TextStyle(
                            fontFamily: 'SFProText-Regular',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Uso de Datos',
                          style: TextStyle(
                            fontFamily: 'SFProText-Semibold',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Desde la aplicación nos comprometemos con el cliente a no usar de forma inadecuada los datos proporcionados en la plataforma.',
                          style: TextStyle(
                            fontFamily: 'SFProText-Regular',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
