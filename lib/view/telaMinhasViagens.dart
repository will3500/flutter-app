import 'dart:convert';

import 'package:coopertransc/api.dart';
import 'package:coopertransc/model/minhaViagem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



var Lminhaviagem = <minhasViagems>[];


class telaMinhasViagens extends StatefulWidget {
  const telaMinhasViagens({super.key});

  @override
  State<telaMinhasViagens> createState() => _telaMinhasViagensState();
}

class _telaMinhasViagensState extends State<telaMinhasViagens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Minhas viagens"),
        centerTitle: true,
        backgroundColor:  Colors.green[700], 
          actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_alt_sharp,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],       
      ),

      body: minhaViagem(),
      
    );
  }



      minhaViagem(){
       return ListView.builder(
      itemCount: Lminhaviagem.length,
      itemBuilder: (context,index){
        return Container(
          
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 8,
            
            child: ListTile(
              leading: Column(
                children: [
                  Text(Lminhaviagem[index].dataMarcacao.toString() ),
                  Text( Lminhaviagem[index].escolha.toString(), style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                ],
              ),
              title: Text(Lminhaviagem[index].cidadeOrigem.toString()+" - " + Lminhaviagem[index].estadoOrigem.toString() + " -> " + Lminhaviagem[index].cidadeDestino.toString() + " - " + Lminhaviagem[index].estadoDestino.toString()),
              
              textColor: Colors.black,
              subtitle: Container(
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Marcou em: " + Lminhaviagem[index].dataMarcacao.toString()),
                    Text("viajou em: " + Lminhaviagem[index].dataEscolha.toString()),
                    Text("diferença de:  dias" ),
                    Text("OBS: " + Lminhaviagem[index].obs.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                
                
                ),
               
            ),
          ),
        );
      }, 
    );
    }



  getminhaviagem(){
      API.getminhaViagem().then((response) {
       setState(() {        
        Iterable lista = json.decode(response.body);        
        Lminhaviagem = lista.map((model) => minhasViagems.fromJson(model)).toList();             
        
      });
    });
  }


  _telaMinhasViagensState(){
    getminhaviagem();
  }
}