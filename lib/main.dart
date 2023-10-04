import 'package:flutter/material.dart';
import 'package:latihan_layout/profile.dart';
//import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeAnimationCurve: Curves.bounceIn,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Poppins',
      ),
      title: 'Login',
      home: LoginPage(), // Gunakan LoginPage sebagai halaman awal
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Column(
                children: [
                  Image.asset('asset/gambar1-r.png'), // <-- SEE HERE
                ]
            ),

            SizedBox(
                height: MediaQuery.of(context).size.height * 0.006),
            Text('Tugas1',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 32,
                  letterSpacing: 4.0,
                  fontWeight: FontWeight.bold),),


            SizedBox (height: 3),
            Text('Halo, silahkan Login dulu ya!',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  letterSpacing: 1.0),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                  labelText: ('Username'),
                  labelStyle:TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Colors.deepPurple,
                  ),
                  labelText: ('Password'),
                  labelStyle:TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Profile(),
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}