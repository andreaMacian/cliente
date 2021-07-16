import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class SeleccionUsuario extends StatefulWidget {
  //const SeleccionUsuario({ Key? key }) : super(key: key);

  @override
  _SeleccionUsuarioState createState() => _SeleccionUsuarioState();
}

class _SeleccionUsuarioState extends State<SeleccionUsuario> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 6, top: 21, bottom: 11),
      child: Container(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Selecciona Usuario',
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
                      screen = 1;
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
                    color: (screen == 4) ? amarillo : azul_oscuro,
                  ),
                ),
              ),
              SizedBox(width: 3),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 21,
                  color: azul_oscuro,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Text(
            '¿Quieres contratar el servicio para otra persona?',
            style: TextStyle(
              fontFamily: 'SFProText-Semibold',
              fontSize: 14,
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 40,
            width: 340,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nombre Completo Cliente',
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
          SizedBox(height: 12),
          Text(
            'El usuario deberá enseñar el DNI para identificarse',
            style: TextStyle(
              fontFamily: 'SFProText-Regular',
              fontSize: 14,
            ),
          )
        ]),
      ),
    );
  }
}
