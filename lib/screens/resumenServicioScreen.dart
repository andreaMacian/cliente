import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

//RESUMEN DE UN SERVICIO PASADO ACCEDIENDO DESDE LA LISTA DEL MENÚ DONDE SE VEN TODAS LAS CONTRATACIONES

class ResumenServicioScreen extends StatefulWidget {
  const ResumenServicioScreen({Key key, this.changeScreen}) : super(key: key);

  final Function(int numScreen) changeScreen;
  @override
  _ResumenServicioScreenState createState() => _ResumenServicioScreenState();
}

class _ResumenServicioScreenState extends State<ResumenServicioScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 16, top: 21, bottom: 11),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 660,
            //width: 290,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 12,
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
                    IconButton(
                      onPressed: () {
                        widget.changeScreen(1);
                      },
                      icon: Icon(
                        Icons.close,
                        size: 25,
                        color: azul_oscuro,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
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
                      Row(
                        children: [
                          Text(
                            'Tarifa: ${viaje.tarifa}',
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
                      SizedBox(height: 8),
                      Text(
                        'Método de Pago: ${viaje.metodo_pago}',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 32),
                      Text(
                        'Recogida: ${viaje.origen}',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Destino: ${viaje.destino}',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Inicio:  ${viaje.fechaInicio.day} ${viaje.fechaInicio.month.toString()} ${viaje.fechaInicio.year} ${viaje.fechaInicio.hour}:${viaje.fechaInicio.minute}',// 16 Abril 2021, 19:32h',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Fin: ${viaje.fechaFin.day} ${viaje.fechaFin.month.toString()} ${viaje.fechaFin.year} ${viaje.fechaFin.hour}:${viaje.fechaFin.minute}',
                        style: TextStyle(
                          fontFamily: 'SFProText-Semibold',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 32),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${taxista.vehiculo} ${taxista.matricula}',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Semibold',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'Lic. ${taxista.licencia}',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Semibold',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                '${taxista.nombre}',
                                style: TextStyle(
                                  fontFamily: 'SFProText-Regular',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 32,
                            height: 32,
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
                      SizedBox(height: 8),
                      TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.favorite_rounded,
                              size: 18,
                              color: azul_oscuro,
                            ),
                            SizedBox(width: 6),
                            Text(
                              'Añadir a Favoritos',
                              style: TextStyle(
                                fontFamily: 'SFProText-Semibold',
                                fontSize: 14,
                                color: azul_oscuro,
                              ),
                            )
                          ],
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(height: 36),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'PUNTUA TU EXPERIENCIA',
                            style: TextStyle(
                              fontFamily: 'SFProText-Semibold',
                              fontSize: 14,
                              color: azul_oscuro,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_border_rounded,
                            size: 30,
                            color: amarillo,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.star_border_rounded,
                            size: 30,
                            color: amarillo,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.star_border_rounded,
                            size: 30,
                            color: amarillo,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.star_border_rounded,
                            size: 30,
                            color: amarillo,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.star_border_rounded,
                            size: 30,
                            color: amarillo,
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    amarillo)), //COLOR BOTON
                            onPressed: () {
                              widget.changeScreen(1);
                              viaje.tipo = null;
                              viaje.destino = null;
                              viaje.origen = null;
                            },
                            child: Text(
                              'Finalizar Servicio',
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
            ),
          )
        ],
      ),
    );
  }
}
