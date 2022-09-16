import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        title: Text("Avisos"),
        centerTitle: true,
        backgroundColor:  Colors.green[700],        
      ),
      
    );
  }
}