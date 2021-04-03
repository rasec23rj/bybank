import 'package:bytbank/src/app/app.dart';
import 'package:bytbank/src/app/tranferir.dart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => App(),
        '/transferir': (BuildContext context) => Transferir(),
      },
      locale: Locale('pt-br', 'PT-BR'),
    );
  }
}
