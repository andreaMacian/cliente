import 'package:clienteapp/home.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  //const Chat({ Key? key }) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 60),
      child: Column(
        children: [
          Container(
            height: 60,
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
               // Spacer(),
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
                SizedBox(width: 24),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 40,
            width: 340,
            child: TextField(
              decoration: InputDecoration(
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
    );
  }
}
