// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  
  
  GlobalKey<FormState> _loginkey = GlobalKey<FormState>();
  TextEditingController txtCpf = TextEditingController();
  TextEditingController txtSenha = TextEditingController();
  


    @override
  Widget build(BuildContext context) {
    return Scaffold(      

      
      backgroundColor: Colors.green[400],
      body: SingleChildScrollView(
        child: 
                      
        Column(
          children: <Widget>[

             //area superior
            Container(    
              color: Colors.green[400],                                
              child: Row(                
                children: [
                  Image.asset("assets/images/coopertransc_inicial.png",fit: BoxFit.contain,width: MediaQuery.of(context).size.width),
                  
                ],
              )
            ), 



            Container(   
              padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 52), 
              color: Colors.green.shade400,                                
              child: Form(                
                key: _loginkey,
                
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "Acesso do cooperado",
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      ),
                    
                    Icon(Icons.people, size: 80, color: Colors.green[900]),
                    campoTexto("CPF", txtCpf),
                    campoTextoSenha("Senha", txtSenha),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[                         
                          BotaoCadastro(context),
                          
                          botaoLogin(context),
                        ],
                    )
                ]
                ),
                
              )
            ),


            Container(    
              color: Colors.green[400],   
               padding: const EdgeInsets.symmetric(vertical: 12),                      
              child: Row(   
                mainAxisAlignment: MainAxisAlignment.center,  
                         
                children: [
                  Image.asset("assets/images/logo_coopertransc.png",fit: BoxFit.fitWidth,width: MediaQuery.of(context).size.width*0.7),
                  
                ],
              )
            ), 


            

          ],
        ),

      )
    );
  }




campoTexto(rotulo, controle) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.black, fontSize: 24),
        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          errorStyle: TextStyle(color: Colors.black, fontSize: 16),
        ),
        controller: controle,
        validator: (value) {
          return (value!.isEmpty) ? "Informe o valor" : null;
          
        },

        
      ),
    );
  }



campoTextoSenha(rotulo, controle) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.black, fontSize: 24),
        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          errorStyle: TextStyle(color: Colors.black, fontSize: 16),
        ),
        controller: controle,
        validator: (value) {
          return (value!.isEmpty) ? "Informe o valor" : null;
          
        },

        
      ),
    );
  }




  botaoLogin(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20),
        child: ElevatedButton(
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              
            ),
          ),
          
          onPressed: () {
            if (_loginkey.currentState!.validate()) {
              //login();

              Navigator.pushNamed(context, "t2");
            }
          },
          style: ButtonStyle (
              backgroundColor:  MaterialStateProperty.all(Colors.green[900]),
            ),
        ));
  }




    BotaoCadastro(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20),
        child: ElevatedButton(
          child: Text(
            "Cadastro",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              
            ),
          ),
          
          onPressed: () {
            if (_loginkey.currentState!.validate()) {
              //cadastro();

              //Navigator.pushNamed(context, "t2");
            }
          },
          style: ButtonStyle (
              backgroundColor:  MaterialStateProperty.all(Colors.green[900]),
            ),
        ));
  }



  
}


        
