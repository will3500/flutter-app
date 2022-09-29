import 'dart:convert';

import 'package:coopertransc/api.dart';
import 'package:coopertransc/model/vez.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


var Lvez = <vez>[];

class telaVez extends StatefulWidget {
  const telaVez({super.key});

  @override
  State<telaVez> createState() => _telaVezState();
}





class _telaVezState extends State<telaVez> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Vez"),
        centerTitle: true,
        backgroundColor:  Colors.green[700],        
      ),

      body: SingleChildScrollView(
        child: Card(
          elevation: 10,
          color: Colors.green[100],
          child: Padding(
            padding: EdgeInsets.all(10),
            
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded){
                setState(() => Lvez[index].setExpanded());
              },
              children: Lvez.map<ExpansionPanel>( (vez vz){
                return ExpansionPanel(
                  backgroundColor: Colors.grey[200],
                  
                  isExpanded: getExpandedVez(vz.isExpanded.toString()),
                  canTapOnHeader: true,              
                  headerBuilder: (BuildContext context, bool isExpanded) { 
                      return ListTile(
                        leading: CircleAvatar(
                          child: 
                          Text((1+ Lvez.indexOf(vz)).toString(), style: TextStyle(fontSize: 26, color: Colors.black),),
                          backgroundColor: getAvatarColor(vz.tipoVeiculo),
                        ),
                        title: Text(vz.cooperado.toString(),style: TextStyle(fontSize: 22),),
                        subtitle: Text(vz.dataMarcacao.toString() + " " + vz.horaMarcacao.toString()),
                      );
                      
                   },
                   body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            Text("Marcou a vez em: " + vz.unidade.toString(),style: TextStyle(fontSize: 18),),
                            Text(""),
                            Text(vz.estados.toString(), style: TextStyle(fontSize: 18),),
                            Divider(thickness: 1, indent: 20,endIndent: 20,),
                            Text(vz.veiculo.toString(),style: TextStyle(fontSize: 18),),
                            Text(""),
                            Text("Engate: " + vz.engatado.toString(),style: TextStyle(fontSize: 18),),
                            Text(""),
                            Text("Chegada: " + vz.chegada.toString(),style: TextStyle(fontSize: 18, color: Colors.red,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      )
                    ],
                   )
                   
                   );
              }).toList(),
            ),
          ),
        ),
      ),
      
    );



     
  }


   getvez(){
      API.getVez().then((response) {
      setState(() {        
        Iterable lista = json.decode(response.body);
        Lvez = lista.map((model) => vez.fromJson(model)).toList();
        
      });
    });
  }

  getAvatarColor(tipo){
    if(tipo.toString().toLowerCase().contains("cvb")){
      return Colors.blue[400];
    }else if(tipo.toString().toLowerCase().contains("tb")){
      return Colors.green[600];
    }else if(tipo.toString().toLowerCase().contains("cv")){
      return Colors.yellow[400];
    }else{
      return Colors.grey[500];
    }
    
  }

 bool getExpandedVez(str){
  
  if(str.toString().toLowerCase().contains("true")){
    return true;
  }else{
    return false;
  }
 }


  _telaVezState(){
  getvez();
}
}