/*
Kelly Johana Ascanio Rodríguez
CBA mosquera
2470980
fecha: 10/10/""
 */
import 'package:flutter/material.dart';
//definimos un valor al background
var myDefaultBackground = Colors.grey;
//definimos valores especificos para el appBar
var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
  title: const Center(child: Text(' C O M P A N N Y'),),
  actions: const [
    Image(image: AssetImage('images/homer.png'))
  ],
);
//definimos el menú
var myDrawer = Drawer(
  child: ListView( //se crea una lista
          padding: EdgeInsets.zero,
          children: [ //children contiene varios widgets.
            DrawerHeader(  //encabezado al menú
              decoration: const BoxDecoration(
              color: Colors.pinkAccent,
              ),
              child: Column( //contiene un solo widget
                children: const[ //se agrega texto y diseño
                  Text(
                    'USUARIO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Icon( //se agrega un incono y diseño
                    Icons.switch_access_shortcut,
                    color: Colors.white,
                    size: 70.0,
                  )
                ],
              ),
            ),
            //Se realizan varias listas por separado donde se encuentra un icono, un texto y el diseño de estos
            const ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text('Principal') ,
            ),
            const ListTile(
              leading: Icon(
                Icons.mark_unread_chat_alt,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text('Mensajes') ,
            ),
            const ListTile(
              leading: Icon(
                Icons.settings_suggest_outlined,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text('Configuraciones') ,
            ),
            const ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text('Salir') ,
            ),
          ],
        ),
      
);