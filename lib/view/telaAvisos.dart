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
    
    return ListView.separated(
      itemCount: Lavisos.length,
      itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 8,
            
            child: ListTile(
              leading: Icon(Icons.warning_sharp, size: 40,color: Colors.green[900],),
              title: Text(
                Lavisos[index].titulo.toString(),
              ),
              subtitle: Text(Lavisos[index].dataPublicacao.toString()) ,
              trailing: Icon(Icons.arrow_forward_ios),
              textColor: Colors.black,
              onTap: (){
                Navigator.pushNamed(context, "t3", arguments:{"id" : Lavisos[index].id, "mensagem" : Lavisos[index].mensagem.toString(), "data" : Lavisos[index].dataPublicacao.toString(), "titulo" : Lavisos[index].titulo.toString() } );
              },
               
            ),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) => Divider(), 
    );
  }
}