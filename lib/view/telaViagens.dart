import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      
    );
  }
}