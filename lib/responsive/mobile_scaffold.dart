/*
Kelly Johana Ascanio Rodríguez
CBA mosquera
2470980
fecha: 10/10/""
 */
import 'package:flutter/material.dart';
import 'package:responsive_0/responsive/constantes.dart';
import 'package:responsive_0/util/my_box.dart';
import 'package:responsive_0/util/my_tile.dart';

class MobileScaffold extends StatefulWidget { //se usa cuando se crea algo que pueda cambiar su estado
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //La arquitectura,distribución de la interfaz, se define en donde va a ser ubicado cada widget.
      appBar: myAppBar, //es el head el cual importamos de la pagina "Constantes"
      backgroundColor: myDefaultBackground,  //llamamos un background el cual se define en constantes.
      drawer: myDrawer, //llamamos el menu el cual se encuentra en constantes.
      body: Column(//creamos una columna
          children: [ //children contiene varios widgets.
        AspectRatio( // AspectRatio nos ayuda a que ancho debe ser dos veces más grande que la altura
          aspectRatio: 1,
          child: SizedBox( //es un cuadro con un tamaño definido
            width: double.infinity,
            child: GridView.builder(
              itemCount: 4, //se muestran 4 cajas
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return const MyBox();
              },
            ),
          ),
        ),
            //Expanded un widget que expande un elemento secundario de Row , Column o Flex para que el elemento secundario llene el espacio disponible.
            Expanded(
                child: lista //Muestro la lista que cree en my_tile
            )
      ]),
    );
  }
}
