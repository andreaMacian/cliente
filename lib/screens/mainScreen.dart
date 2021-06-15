import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // CREEM UNA LLISTA AMB LA INFO DE LES ACTIVITATS INSCRITES
    /* final serviciosContratados = [];
    for (int j = 0; j < serviciosContratados.length; j++) {
      final activitat = serviciosContratados[j];
      if (activitat.inscrita) {
        serviciosContratados.add(activitat);
      }
    }

    return ListView.builder(
      itemCount: serviciosContratados.length,
      itemBuilder: (context, index) {
        final item = serviciosContratados[index];
        return ActivitatInscrita(activitat: item);
      },
    );*/

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
                      'Resumen Servicio',
                      style: TextStyle(
                        fontFamily: 'SFProText-Bold',
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 39),
                Container(
                  width: 80,
                  child: Image.asset(
                    'assets/ajustes-01.png',
                    fit: BoxFit.contain,
                    color: Color.fromARGB(255, 252, 201, 35),
                    
                  ),
                ), 
                Icon(
                  Icons.send_rounded,
                  size: 100,
                  color: Color.fromARGB(255, 252, 201, 35),
                ),
                SizedBox(height: 12),
                Container(
                  width: 230,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //cosas
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
