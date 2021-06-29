import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';


//CHAT MENU IZQUIERDA

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
              color: neutro,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 39,
                ),
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: azul_oscuro, width: 0.1),
                    color: azul_claro,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 6,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 20,
                          color: azul_oscuro,
                        ),
                        onPressed: () {},
                      ),
                      Spacer(),
                      Text(
                        'Gustavo Martínez',
                        style: TextStyle(
                          fontFamily: 'SFProText-Bold',
                          fontSize: 16.5,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/Gustavo.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
                SizedBox(height: 39),
                Expanded(
                  child: Container(
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextField(
                          //controller: ,
                          style: TextStyle(height: 0.8),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                          ),
                        ),
                        SizedBox(height: 24),
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
