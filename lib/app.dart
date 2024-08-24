import 'package:flutter/material.dart';
import 'package:flutter_local_notification_setup/screens/home_screen.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: 'local notification',
       debugShowCheckedModeBanner: false,
       home: const HomeScreen(),
       theme: ThemeData(
         appBarTheme: const AppBarTheme(
           backgroundColor: Colors.blueAccent,
           foregroundColor: Colors.white70
         ),
         elevatedButtonTheme: ElevatedButtonThemeData(
           style: ElevatedButton.styleFrom(
             backgroundColor: Colors.blueAccent,
             foregroundColor: Colors.white70,
           )
         )
       ),
     );
  }

}