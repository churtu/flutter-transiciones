
import 'package:flutter/material.dart';
import 'package:transiciones/src/pages/pages.dart';

class Pagina1Page extends StatelessWidget {
   
  const Pagina1Page({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      body: const Center(
         child: Text('Pagina1Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _crearRuta());
        },
        child: const Icon(Icons.access_time),

      ),
    );
  }
  
  Route _crearRuta() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const Pagina2Page();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curveAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        
        // Transicion 1

        // return SlideTransition(
        //   position: Tween<Offset>(begin: const Offset(0.5, 1.0), end: Offset.zero).animate(curveAnimation),
        //   child: child,
        // );

        // Transicion 2
        // return ScaleTransition(
        //   scale: Tween<double>(begin:0, end: 1).animate(curveAnimation),
        //   child: child,
        // );

        // Transicion 3
        // return RotationTransition(
        //   turns: Tween<double>(begin:0 ,end:1 ).animate(curveAnimation),
        //   child: child,
        // );

        // Transicion 4
        // return FadeTransition(
        //   opacity: Tween<double>(begin:0 ,end:1 ).animate(curveAnimation),
        //   child: child,
        // );

        // Transiciones mezladas
        return RotationTransition(
          turns: Tween<double>(begin:0 ,end:1 ).animate(curveAnimation),
          child: FadeTransition(
          opacity: Tween<double>(begin:0 ,end:1 ).animate(curveAnimation),
          child: child,
        ));
      },
    );
  }
}