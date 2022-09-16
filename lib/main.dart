import 'dart:js';
import 'package:coopertransc/view/telaprincipal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "IBGE",

      // navegaçao:

      initialRoute: "t1",
      routes: {
        "t1" : (context) => TelaPrincipal(),
       // "t2" : (context) => TelaDetalhes()
      },
    )
  );
}

