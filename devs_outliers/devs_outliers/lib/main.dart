import 'package:devs_outliers/routes/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Introdução Humano Computador',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 4, 125, 141),
        scaffoldBackgroundColor: Color.fromARGB(255, 4, 125, 141),
        backgroundColor: Color.fromARGB(255, 4, 125, 141),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Color.fromARGB(255, 4, 125, 141),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        
     );
  }
}

