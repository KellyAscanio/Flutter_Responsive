/*
Kelly Johana Ascanio Rodríguez
CBA mosquera
2470980
fecha: 10/10/""
 */
import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //determino un espacio entre cada imagen
      padding: const  EdgeInsets.all(3.0),
      child: Row( //creo una fila
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //se le hace alineacion y se le da espacio
        children: const [ //insertamos imagenes
          Expanded(child: Image(image: AssetImage('images/mini1.png')),),
          Expanded(child: Image(image: AssetImage('images/mini2.png')),),
          Expanded(child: Image(image: AssetImage('images/mini3.png')),),
          Expanded(child: Image(image: AssetImage('images/mini4.png')),),

        ],
        
    ),
    );
  }
}
