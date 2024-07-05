import 'package:authentication_app/src/screens/dashboard.dart';
import 'package:authentication_app/src/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage('assets/img/welcome.png')),
          Text('Welcome to Go Connect'),
          Text(
            'Connect with friends and family, Connect with friends and family',
          ),
          Form(
            child: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Full Name'),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.grey,
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.purple),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Email'),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.grey,
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.purple),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Phone No'),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.grey,
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.purple),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.grey,
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.purple),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => Dashboard()),
                      child: const Text('Sign Up'),
                      style: OutlinedButton.styleFrom(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.purple,
                          side: BorderSide(color: Colors.purple))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('or'),
                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                            icon: Image(
                              image: AssetImage('assets/img/google.jpeg'),
                              width: 20,
                            ),
                            onPressed: () {},
                            label: Text('sign in with google'))),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: const Text.rich(TextSpan(children: [
                          TextSpan(
                            text: 'Already have an account? ',
                          ),
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(color: Colors.purple),
                          )
                        ]))),
                  ],
                )
              ],
            )),
          )
        ],
      ),
    )));
  }
}
