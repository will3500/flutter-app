import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      ),
      
    );
  }
}