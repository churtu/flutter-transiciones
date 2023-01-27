import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
   
  const Pagina2Page({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: const Center(
         child: Text('Pagina2Page'),
      ),
    );
  }
}