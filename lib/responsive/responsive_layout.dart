/*
Kelly Johana Ascanio Rodríguez
CBA mosquera
2470980
fecha: 10/10/""
 */
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key,required this.tvScaffold, required this.mobileScaffold, required this.tabletScaffold, required this.desktopScaffold}) : super(key: key);

  final Widget mobileScaffold; //Widget que ajusta tamaño a dispositivos móviles
  final Widget tabletScaffold; //Widget que ajusta tamaño a dispositivos tablets
  final Widget desktopScaffold; //Widget que ajusta tamaño a dispositivos desktop
  final Widget tvScaffold;
  //Constructores de la clase
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder( //ayuda a realizar seguimiento a las
      // restriccionesde esta ventana y determinar su funcionamiento en cada instante
        builder: (context, constraints){
          if (constraints.maxWidth < 300){ //Números definidos en pixeles aproximados
            return mobileScaffold;
          }else if (constraints.maxWidth < 700){
            return tabletScaffold;}
          else if (constraints.maxWidth < 1000){
            return desktopScaffold;
          }else {
            return tvScaffold;
          }
        },
    );
  }
}

