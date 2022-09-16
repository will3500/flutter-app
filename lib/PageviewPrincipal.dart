import 'package:coopertransc/view/telaAvisos.dart';
import 'package:coopertransc/view/telaMinhasViagens.dart';
import 'package:coopertransc/view/telaVez.dart';
import 'package:coopertransc/view/telaViagens.dart';
import 'package:flutter/material.dart';

class PageviewPrincipal extends StatefulWidget {
  const PageviewPrincipal({super.key});

  @override
  State<PageviewPrincipal> createState() => _PageviewPrincipalState();
}

class _PageviewPrincipalState extends State<PageviewPrincipal> {

  int paginaAtual=0;
  int pagina=0;
  late PageController PVcontroller;

  @override
  void initState(){
    super.initState();
    PVcontroller=PageController(initialPage: paginaAtual);
  }


  setPaginaAtual(pagina){
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PVcontroller,
        children: [
          telaAvisos(),
          telaVez(),
          telaViagens(),
          telaMinhasViagens(),
        ],

        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, 
          backgroundColor: Colors.green[700],
          selectedItemColor: Color.fromARGB(255, 15, 35, 15),
          unselectedItemColor: Colors.green[100],
          currentIndex: paginaAtual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Avisos"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Vez"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Viagens"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Minhas"),
        ],
        
        
        
        onTap: (paginaAtual){
          PVcontroller.animateToPage(
            paginaAtual,
            duration: Duration(milliseconds: 400),
            curve: (Curves.ease)
          );
        },
        ),
    );
  }
}


