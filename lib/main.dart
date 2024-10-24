import 'package:flutter/material.dart';
import 'package:login/register/data.dart';
import 'package:login/register/login._page.dart';
import 'package:login/register/profil_page.dart';
import 'package:login/register/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/profil',
      routes: {
        '/': (context) {
          Data useData = Data(namaUser: 'Nurviamalina', email: 'nurvia12@gmail.com');
          return LoginPage(useData: useData);
        },
        '/register': (context) => RegisterPage(),
        '/profil' : (context) {
          Data useData = Data(namaUser: 'Nurviamalina', email: 'nurvia12@gmail.com');
          return ProfilePage(useData: useData);
        },
        },
    );
  }
}