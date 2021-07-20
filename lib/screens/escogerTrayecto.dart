import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class EscogerTrayecto extends StatefulWidget {
  //const escogerTrayecto({ Key? key }) : super(key: key);
  const EscogerTrayecto({Key key, this.changeScreen}) : super(key: key);

  final Function(int numScreen) changeScreen;
  @override
  _EscogerTrayectoState createState() => _EscogerTrayectoState();
}

class _EscogerTrayectoState extends State<EscogerTrayecto> {
  int numScreen = 2;
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
                    widget.changeScreen(3);
                    numScreen = 3;
                  },
                  icon: Icon(
                    Icons.person_rounded,
                    size: 21,
                    color: (numScreen == 3) ? amarillo : azul_oscuro,
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
                    widget.changeScreen(4);
                    numScreen = 4;
                  },
                  icon: Icon(
                    Icons.calendar_today_rounded,
                    size: 21,
                    color: (numScreen == 4) ? amarillo : azul_oscuro,
                  ),
                ),
              ),
              SizedBox(width: 3),
              IconButton(
                onPressed: () {
                  widget.changeScreen(6);
                  numScreen = 6;
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
                    labelText: '${viaje.origen}',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Destino',
                style: TextStyle(
                  fontFamily: 'SFProText-Bold',
                  fontSize: 17,
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
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
                    labelText: '${viaje.destino}',
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
          SizedBox(
            height: 24,
          ),
          Container(
            color: azul_oscuro,
            height: 0.5,
          ),
          Container(
            height: 50,
            //color: Colors.blueGrey[100],//azul_claro,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    if (viaje.origen == null) {
                      viaje.origen = 'Calle Aragón 321';
                    } else {
                      viaje.destino = 'Calle Aragón 321';
                    }
                  },
                  icon: Icon(
                    Icons.house_rounded,
                    size: 30,
                    color: azul_oscuro,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (viaje.origen == null) {
                      viaje.origen = 'Calle Cinca 30';
                    } else {
                      viaje.destino = 'Calle Cinca 30';
                    }
                  },
                  icon: Icon(
                    Icons.work_rounded,
                    size: 30,
                    color: azul_oscuro,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.save_rounded,
                    size: 30,
                    color: azul_oscuro,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: azul_oscuro,
            height: 0.5,
          ),
        ]),
      ),
    );
  }
}
