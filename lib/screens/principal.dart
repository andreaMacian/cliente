import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class PrincipalWidget extends StatefulWidget {
  //const PrincipalWidget({ Key ? key }) : super(key: key);

  @override
  _PrincipalWidgetState createState() => _PrincipalWidgetState();
}

class _PrincipalWidgetState extends State<PrincipalWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 6, top: 21, bottom: 11),
      child: Container(
        child: Column(children: [
          Row(
            children: [
              Text(
                '¡Hola ${cliente.nombre}!',
                style: TextStyle(
                  fontFamily: 'SFProText-Bold',
                  fontSize: 17,
                ),
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                height: 32,
                width: 40,
                decoration: BoxDecoration(
                  color: azul_claro,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    topLeft: Radius.circular(6),
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      screen = 3;
                    });
                  },
                  icon: Icon(
                    Icons.person_rounded,
                    size: 21,
                    color: (screen == 3) ? amarillo : azul_oscuro,
                  ),
                ),
              ),
              SizedBox(width: 6),
              Container(
                alignment: Alignment.center,
                height: 32,
                width: 40,
                decoration: BoxDecoration(
                  color: azul_claro,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    topLeft: Radius.circular(6),
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      screen = 4;
                    });
                  },
                  icon: Icon(
                    Icons.calendar_today_rounded,
                    size: 21,
                    color: (screen ==4) ? amarillo : azul_oscuro,
                  ),
                ),
              ),
              SizedBox(width: 3),
              IconButton(
                onPressed: () {
                  setState(() {
                    screen = 6;
                  });
                },
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 21,
                  color: azul_oscuro,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 340,
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.location_pin,
                      color: azul_oscuro,
                    ),
                    labelText: '¿A dónde vamos?',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      borderSide: BorderSide(color: azul_oscuro),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                alignment: Alignment.center,
                height: 44,
                width: 60,
                decoration: BoxDecoration(
                  color: azul_claro,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    topLeft: Radius.circular(6),
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (viaje.tipo != 'Eco') {
                        viaje.tipo = 'Eco';
                      }
                      else{
                        viaje.tipo=null;
                      }
                    });
                    //print(viaje.tipo);
                  },
                  icon: Icon(
                    Icons.eco_rounded,
                    size: 24,
                    color: (viaje.tipo == 'Eco') ? amarillo : azul_oscuro,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                alignment: Alignment.center,
                height: 44,
                width: 60,
                decoration: BoxDecoration(
                  color: azul_claro,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    topLeft: Radius.circular(6),
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (viaje.tipo != 'Premium') {
                        viaje.tipo = 'Premium';
                      }
                      else{
                        viaje.tipo=null;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.emoji_events_rounded,
                    size: 24,
                    color: (viaje.tipo == 'Premium') ? amarillo : azul_oscuro,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                alignment: Alignment.center,
                height: 44,
                width: 60,
                decoration: BoxDecoration(
                  color: azul_claro,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    topLeft: Radius.circular(6),
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (viaje.tipo != 'XL') {
                        viaje.tipo = 'XL';
                      }
                      else{
                        viaje.tipo=null;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.people_rounded,
                    size: 24,
                    color: (viaje.tipo == 'XL') ? amarillo : azul_oscuro,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                alignment: Alignment.center,
                height: 44,
                width: 60,
                decoration: BoxDecoration(
                  color: azul_claro,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    topLeft: Radius.circular(6),
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (viaje.tipo != 'Adaptable') {
                        viaje.tipo = 'Adaptable';
                      }
                      else{
                        viaje.tipo=null;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.accessible_forward_rounded,
                    size: 24,
                    color: (viaje.tipo == 'Adaptable') ? amarillo : azul_oscuro,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                alignment: Alignment.center,
                height: 44,
                width: 60,
                decoration: BoxDecoration(
                  color: azul_claro,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    topLeft: Radius.circular(6),
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (viaje.tipo != 'Paquetería') {
                        viaje.tipo = 'Paquetería';
                      }
                      else{
                        viaje.tipo=null;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.inventory_2_rounded,
                    size: 24,
                    color: (viaje.tipo == 'Paquetería') ? amarillo : azul_oscuro,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                alignment: Alignment.center,
                height: 44,
                width: 60,
                decoration: BoxDecoration(
                  color: azul_claro,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    topLeft: Radius.circular(6),
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (viaje.tipo != 'Comidas') {
                        viaje.tipo = 'Comidas';
                      }
                      else{
                        viaje.tipo=null;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.flatware_rounded,
                    size: 24,
                    color: (viaje.tipo == 'Comidas') ? amarillo : azul_oscuro,
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
