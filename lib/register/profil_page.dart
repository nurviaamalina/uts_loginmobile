import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/register/data.dart';

class ProfilePage extends StatelessWidget {
  final Data useData;
 
  ProfilePage({required this.useData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Halaman Profile',
          style: TextStyle(color: const Color.fromARGB(255, 184, 217, 245)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto profil dalam CircleAvatar
            // ignore: prefer_const_constructors
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/photo.jpg'),
              backgroundColor: const Color.fromARGB(255, 184, 217, 245),
            ),
            SizedBox(height: 20),
            
            Card(
              elevation: 5, 
              margin: EdgeInsets.symmetric(horizontal: 20), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), 
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0), 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Teks rata kiri
                  children: [
                    Text('Nama: ${useData.namaUser}', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    Text('Email: ${useData.email}', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    Text('Alamat: Grogol,Banyuwangi', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    Text('No Telp: 085811667173', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else if (Platform.isIOS) {
                  exit(0);
                }
              },
              child: Text('Log Out'),
            )
          ],
        ),
      ),
    );
  }
}