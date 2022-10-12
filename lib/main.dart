/*
Kelly Johana Ascanio Rodríguez
CBA mosquera
2470980
fecha: 10/10/""
 */
import 'package:flutter/material.dart';
import 'package:responsive_0/responsive/desktop_scaffold.dart';
import 'package:responsive_0/responsive/mobile_scaffold.dart';
import 'package:responsive_0/responsive/responsive_layout.dart';
import 'package:responsive_0/responsive/tablet_scaffold.dart';
import 'package:responsive_0/responsive/tv_scaffold.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       debugShowCheckedModeBanner: false,
       home: ResponsiveLayout(
           mobileScaffold: MobileScaffold(),
           tabletScaffold: TabletScaffold(),
           desktopScaffold: DesktopScaffold(),
            tvScaffold: TvScaffold(),
       ),
     );
   }
 }

