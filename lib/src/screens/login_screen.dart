import 'package:authentication_app/src/screens/dashboard.dart';
import 'package:authentication_app/src/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_sharp)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forgot password?'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => Dashboard()),
                      child: const Text('Login'),
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
                        onPressed: () => Get.to(() => SignUpScreen()),
                        child: const Text.rich(
                            TextSpan(text: 'Dont have an account', children: [
                          TextSpan(
                            text: 'Sign up',
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
