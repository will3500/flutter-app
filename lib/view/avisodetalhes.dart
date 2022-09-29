
import 'package:coopertransc/model/avisos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class avisosD extends StatefulWidget {
  const avisosD({super.key});

  @override
  State<avisosD> createState() => _avisosDState();
}

class _avisosDState extends State<avisosD> {
  @override
  Widget build(BuildContext context) {
      Map mapa = ModalRoute.of(context)!.settings.arguments as Map;
      var id = mapa["id"];
      var mensagem = mapa["mensagem"];
      var titulo = mapa["titulo"];
      var data = mapa["data"];


    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Aviso"),
        centerTitle: true,
        backgroundColor:  Colors.green[700],        
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          
          children: <Widget>[
            Container(
              child: Text(
                titulo.toString(),
                style: TextStyle(
                  fontSize: 30
                ),         
              ),
            ),
            
            SizedBox(height: 30),

            Container(
              child: Text(
                data.toString(),
                style: TextStyle(
                  fontSize: 22
                  
                ),         
              ),
            ),

            SizedBox(height: 30),

            Container(
              child: Text(
                mensagem.toString(),
                style: TextStyle(
                  fontSize: 18
                ),         
              ),
            ),
            
            
          ],

        )

      ),




    );
  }
}