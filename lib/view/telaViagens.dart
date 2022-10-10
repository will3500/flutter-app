import 'dart:convert';

import 'package:coopertransc/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:coopertransc/model/viagens.dart';

var Lviagem = <viagens>[];

class telaViagens extends StatefulWidget {
  const telaViagens({super.key});

  @override
  State<telaViagens> createState() => _telaViagensState();
}

class _telaViagensState extends State<telaViagens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Viagens"),
        centerTitle: true,
        backgroundColor:  Colors.green[700],        
      ),
      
       body: listaviagens()
      
    );
  }

    listaviagens(){
       return ListView.builder(
      itemCount: Lviagem.length,
      itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 8,
            
            child: ListTile(
              leading: geticon(Lviagem[index].escolha.toString()),
              title: Text(
                Lviagem[index].nome.toString() +" -> " + Lviagem[index].tipo.toString()+" - "+ Lviagem[index].placa.toString()+" ("+ Lviagem[index].marca.toString()+" "+ Lviagem[index].placa.toString()+")",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              subtitle: Container(
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Lviagem[index].dataEscolha.toString()+": " +Lviagem[index].estadoOrigem.toString() + " - " +Lviagem[index].cidadeOrigem.toString() + " -> "+Lviagem[index].estadoDestino.toString() + " - " + Lviagem[index].cidadeDestino.toString() + " - " + Lviagem[index].distancia.toString()+"Km"),
                    Text("Marcou em: "+ Lviagem[index].dataMarcacao.toString()+ ", viajou em: " + Lviagem[index].dataEscolha.toString() + " -> Diferença em dias: " + " Dia(s)")
                    
                  ],
                ),
                
                
                ),
              textColor: Colors.black,
              
               
            ),
          ),
        );
      }, 
    );
    }


  geticon(String status){
    if(status.toLowerCase().contains("aceita")){
      return Icon(Icons.thumb_up_alt, size: 40,color: Colors.green[700]);
    }else{
      return Icon(Icons.thumb_down_alt, size: 40,color: Colors.red[700]);
    }
  }
  
   getviagem(){
    
      API.getViagem().then((response) {
       setState(() {        
        Iterable lista = json.decode(response.body);        
        Lviagem = lista.map((model) => viagens.fromJson(model)).toList();             
            
      });
    });
  }

  getAvatarColor(tipo){
    if(tipo.toString().toLowerCase().contains("cvb")){
      return Colors.blue[400];
    }else if(tipo.toString().toLowerCase().contains("tb")){
      return Colors.green[600];
    }else{
      return Colors.grey[500];
    }
    
  }


  _telaViagensState(){
  getviagem();
  }
}