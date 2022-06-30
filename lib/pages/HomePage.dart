// ignore: file_names
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Catalog app')),
        body: const Center(
          
          child: Text('Hello welcome to Home screen !!',style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
