import 'package:flutter/material.dart';
import 'package:login/register/data.dart';


class LoginPage extends StatelessWidget {
  final Data useData;

  LoginPage({required this.useData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Halaman Login',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color:  const Color.fromARGB(255, 184, 217, 245)),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person_2, size: 200, color: Colors.blue,),

                SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 184, 217, 245))
                    )
                  ),
                  style: TextStyle(color: const Color.fromARGB(255, 184, 217, 245)),
                ),

                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 184, 217, 245))
                    )
                  ),
                  style: TextStyle(color: const Color.fromARGB(255, 184, 217, 245)),
                  obscureText: true,
                ),

                SizedBox(height: 60),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: Center(
                          child: Text(
                            'Selamat Datang!',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(5),
                        children: [
                          Center(
                            child: Text('${useData.namaUser}', style: TextStyle(fontWeight: FontWeight.w500),),
                          ),
                          SizedBox(height: 18),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/profil');
                              },
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Oke',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );

                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text('Login', style: TextStyle(
                        color:  const Color.fromARGB(255, 184, 217, 245),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum memiliki Akun?',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
                  ],
                )
              ],
            )
          )
      ),
    )
    );
  }
}