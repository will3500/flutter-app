import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {


    GlobalKey<FormState> _cadastrokey = GlobalKey<FormState>();
  TextEditingController txtCpf = TextEditingController();
  TextEditingController txtSenha = TextEditingController();  
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.green[400],

      body: SingleChildScrollView(
        child:  Container(   
              padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 52), 
              color: Colors.green.shade400,                                
              child: Form(                
                key: _cadastrokey,
                
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "Cadastro do cooperado",
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      ),
                    
                    Icon(Icons.people, size: 80, color: Colors.green[900]),
                    campoTexto("Nome", txtNome),
                    campoTexto("CPF", txtCpf),                    
                    campoTextoSenha("Senha", txtSenha),
                    campoTexto("Email", txtEmail),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[   
                          BotaoVoltar(),                       
                          BotaoCadastrar(context),  
                                                 
                        ],
                    )
                ]
                ),
                
              )
            ),
        
      
      ),

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



BotaoCadastrar(BuildContext context) {
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
            if (_cadastrokey.currentState!.validate()) {
              //cadastro();
                Navigator.pop(context);
            }
          },
          style: ButtonStyle (
              backgroundColor:  MaterialStateProperty.all(Colors.green[900]),
            ),
        ));
  }


  BotaoVoltar(){
       return Container(
        padding: const EdgeInsets.only(top: 20),
        child: ElevatedButton(
          child: Text(
            "Voltar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              
            ),
          ),
          
          onPressed: () {
            
                Navigator.pop(context);
            
          },
          style: ButtonStyle (
              backgroundColor:  MaterialStateProperty.all(Colors.green[900]),
            ),
        ));
  }
}