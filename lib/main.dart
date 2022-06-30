import 'package:flutter/material.dart';
import 'package:flutter_trials/pages/HomePage.dart';
import 'package:flutter_trials/utils/myroutes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      myroutes.home_page: ((context) => HomePage()),
      myroutes.login_page: ((context) => Home()),
    },
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello flutter trial"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/undraw_Mobile_login_re_9ntv.png",
              fit: BoxFit.cover,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                'Welcome to login page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  scrollPadding: const EdgeInsets.only(left: 15, right: 15),
                  decoration: const InputDecoration(
                      hintText: "Enter Email ID", labelText: "Email ID"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  scrollPadding: const EdgeInsets.only(left: 15, right: 15),
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                  obscureText: true,
                ),
              ]),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: (() =>
                    Navigator.pushNamed(context, myroutes.home_page)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(200, 50),
                ),
                child: const Text('Login !'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
