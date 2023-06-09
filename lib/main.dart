import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quitamos el debug
      debugShowCheckedModeBanner: false,
      //Configurar el tema 
      initialRoute: "/listview1",
      routes: {
      "/listview1":(BuildContext context)=>ListView1(),
      "/listview2":(BuildContext context)=>ListView2(),

      },
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.amber,
        //configurar texto
        textTheme: TextTheme(
          bodyText2:TextStyle(color: Colors.red,
          fontSize: 30)

        )
      ),

            // Pagina Inicial

    );
  }
}