/*
Kelly Johana Ascanio Rodríguez
CBA mosquera
2470980
fecha: 10/10/""
 */
import 'package:flutter/material.dart';
import 'package:responsive_0/responsive/constantes.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget { //se usa cuando se crea algo que pueda cambiar su estado
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //La arquitectura,distribución de la interfaz, se define en donde va a ser ubicado cada widget.
        appBar: myAppBar, //es el head el cual importamos de la pagina "Constantes"
        backgroundColor: myDefaultBackground,  //llamamos un background el cual se define en constantes.
        //se crea un row
        body: Row(children: [ //children contiene varios widgets.
          myDrawer, //llamamos el menu el cual se encuentra en constantes, este esta permanente.
          //Expanded un widget que expande un elemento secundario de Row , Column o Flex para que el elemento secundario llene el espacio disponible.
          Expanded(
            flex: 3,
            child: Column(
                children: [
              AspectRatio(  // AspectRatio nos ayuda a que ancho debe ser dos veces más grande que la altura
                //se utiliza para no definir valoores fijos de width y heigth
                aspectRatio: 2.5,
                child: SizedBox( //es un cuadro con un tamaño definido
                  width: double.infinity,
                  child: ListView.builder( // mostramos las imagenes en una lista las cuales estan en la hoja MyBox
                    itemCount: 1,
                    itemBuilder: (context, index) {

                      return const MyBox();
                    },
                  ),
                ),
              ),
                  Expanded(
                      child: lista //Muestro la lista que cree en my_tile
                  )
            ]),
          ),
          Expanded(
            
            child: Column(
              children: const [
                Expanded(child: Image(image: AssetImage('images/minions_aside.jpg')),),
              ],
            ),
            
          )
        ]));
  }
}
