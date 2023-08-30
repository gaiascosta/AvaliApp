import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SegundaPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda Página'),automaticallyImplyLeading: false,),
      body: Center(
        child: Text('Esta é a segunda página!'),
      ),
    );
  }
}