import 'package:flutter/material.dart';

import 'src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      home: HomePage()
        );
  }
}