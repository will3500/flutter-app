
import 'package:coopertransc/view/TelaPrincipal.dart';
import 'package:coopertransc/PageviewPrincipal.dart';
import 'package:coopertransc/view/avisodetalhes.dart';
import 'package:coopertransc/view/telaCadastro.dart';

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
        "t2" : (context) => PageviewPrincipal(),
        "t3" : (context) => avisosD(),
        "t4" : (context) => TelaCadastro(),
      },
    )
  );
}

