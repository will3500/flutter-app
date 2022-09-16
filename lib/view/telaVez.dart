import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      
    );
  }
}