import 'dart:js';
import 'package:coopertransc/view/TelaPrincipal.dart';
import 'package:coopertransc/PageviewPrincipal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "coopertransc",

      // navegaçao:

      initialRoute: "t1",
      routes: {
        "t1" : (context) => TelaPrincipal(),
        "t2" : (context) => PageviewPrincipal()
      },
    )
  );
}

