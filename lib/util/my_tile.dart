/*
Kelly Johana Ascanio Rodríguez
CBA mosquera
2470980
fecha: 10/10/""
 */
import 'package:flutter/material.dart';

//defino una variable que contiene una lista
var lista= ListView(
  children: const <Widget>[ //children contiene varios widgets.
    /*se crean varios widgets los cuales todos son un ListTile dentro de estos podemos encontrar
    una imagen con sus caracteristicas*/
    ListTile(
      leading: Image(
          alignment: Alignment.topLeft,
          image: AssetImage('images/personaje1.jpg'),
          width: 100,
          height: 70,
    ),
      title: Text('Es una niña pequeña, por lo tanto se porta como tal, está llena de alegría e imaginación, es una persona muy dulce y sociable'),
    ),
    ListTile(
      leading: Image(
        alignment: Alignment.topLeft,
        image: AssetImage('images/personaje2.jpg'),
        width: 100,
        height: 70,
      ),
      title: Text('Felonius Gru es el protagonista principal de las películas Despicable Me, Despicable Me 2 y Despicable Me 3.'),
    ),
    ListTile(
      leading: Image(
        alignment: Alignment.topLeft,
        image: AssetImage('images/personaje3.jpg'),
        width: 100,
        height: 70,
      ),
      title: Text('Kevin es el protagonista en la precuela de Mi villano favorito, Los minions. Le encanta hacer bromas a la gente u otros Minions.'),
    ),
    ListTile(
      leading: Image(
        alignment: Alignment.topLeft,
        image: AssetImage('images/personaje4.jpg'),
        width: 100,
        height: 70,
      ),
      title: Text('Stuart es un Minion bajito tuerto con el pelo peinado.'),
    ),
    ListTile(
      leading: Image(
        alignment: Alignment.topLeft,
        image: AssetImage('images/personaje5.jpg'),
        width: 100,
        height: 70,
      ),
      title: Text('Scarlett Overkill es la principal antagonista en la película de los Minions, doblada al inglés por la actriz Sandra Bullock, y en español por la cantante y actriz Thalía.'),
    )

  ],
);


