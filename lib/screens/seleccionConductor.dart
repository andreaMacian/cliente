import 'package:clienteapp/screens/seleccionDia.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class SeleccionConductor extends StatefulWidget {
  //const SeleccionConductor({ Key? key }) : super(key: key);
  const SeleccionConductor({Key key, this.changeScreen}) : super(key: key);

  final Function(int numScreen) changeScreen;
  @override
  _SeleccionConductorState createState() => _SeleccionConductorState();
}

class _SeleccionConductorState extends State<SeleccionConductor> {
  bool valor = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SeleccionDia(),
        Padding(
          padding: EdgeInsets.only(left: 21, right: 18, top: 6, bottom: 3),
          child: Container(
            height: 50,
            child: Row(
              children: [
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
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${taxista.nombre}',
                      style: TextStyle(
                        fontFamily: 'SFProText-Semibold',
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '${taxista.vehiculo}',
                      style: TextStyle(
                        fontFamily: 'SFProText-Regular',
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Checkbox(
                    value: valor,
                    checkColor: amarillo,
                    onChanged: (bool newValue) {
                      setState(() {
                        valor = newValue;
                        if (valor) {
                          viaje.id_conductor = taxista.id;
                        }
                      });
                    }),
              ],
            ),
          ),
        ),
        Spacer(),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(amarillo)), //COLOR BOTON
          onPressed: () {
            widget.changeScreen(6);
          },
          child: Text(
            'Continuar',
            style: TextStyle(
              fontFamily: 'SFProText-Semibold',
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 21,
        )
      ],
    );
  }
}
