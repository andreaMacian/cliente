import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class SeleccionDia extends StatefulWidget {
  //const SeleccionDia({ Key? key }) : super(key: key);

  @override
  _SeleccionDiaState createState() => _SeleccionDiaState();
}

class _SeleccionDiaState extends State<SeleccionDia> {
  bool valorCheckBox = false;
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
                'Programa tu Viaje',
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
                      screen = 1;
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
          SizedBox(height: 12),
          Text(
            'Selecciona día y hora para tu próximo viaje:',
            style: TextStyle(
              fontFamily: 'SFProText-Semibold',
              fontSize: 14,
            ),
          ),
          SizedBox(height: 12),
          Column(
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 36,
                    width: 120,
                    color: azul_claro,
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.calendar_view_day_rounded,
                            size: 21,
                          ),
                          // SizedBox(width: 12),
                          Text(
                            'dd/mm/aaaa',
                            style: TextStyle(
                              fontFamily: 'SFProText-Semibold',
                              fontSize: 14,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(width: 36),
                  Container(
                    height: 36,
                    width: 90,
                    color: azul_claro,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.access_time_filled_rounded,
                            size: 21,
                          ),
                          //SizedBox(width: 12),
                          Text(
                            'hh:mm',
                            style: TextStyle(
                              fontFamily: 'SFProText-Semibold',
                              fontSize: 14,
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: valorCheckBox,
                  checkColor: amarillo,
                  onChanged: (bool newValue) {
                    setState(() {
                      valorCheckBox = newValue;
                      if (valorCheckBox) {
                        screen = 5;
                      }
                      else{
                        screen=4;
                      }
                    });
                  }),
              Text(
                'Elegir conductor entre mis favoritos',
                style: TextStyle(
                  fontFamily: 'SFProText-Regular',
                  fontSize: 14,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
