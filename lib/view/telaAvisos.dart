import 'dart:convert';

import 'package:coopertransc/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/avisos.dart';


 
var Lavisos = <avisos>[];


class telaAvisos extends StatefulWidget {
  const telaAvisos({super.key});

  @override
  State<telaAvisos> createState() => _telaAvisosState();
}

class _telaAvisosState extends State<telaAvisos> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Avisos"),
        centerTitle: true,
        backgroundColor:  Colors.green[700],        
      ),
      body: ListaAvisos(),
      
    );
  }


  getavisos(){
    API.getAvisos().then((response) {
      setState(() {        
        Iterable lista = json.decode(response.body);
        Lavisos = lista.map((model) => avisos.fromJson(model)).toList();
        
      });
    });
  }

  _telaAvisosState(){
    getavisos();
  }


  ListaAvisos(){
    
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context,index){
        return ListTile(
          //widget
          title: Text(
            Lavisos[index].mensagem.toString(),
          ),
        );
      },
    );
  }
}