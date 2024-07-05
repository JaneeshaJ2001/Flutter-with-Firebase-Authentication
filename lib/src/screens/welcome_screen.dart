import "package:authentication_app/src/screens/login_screen.dart";
import "package:flutter/material.dart";
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Image(image: AssetImage('assets/img/welcome.png')),
            Column(
              children: [
                Text('Welcome to Go Connect',
                    style: Theme.of(context).textTheme.headlineLarge),
                Text(
                  'Connect with friends and family',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => LoginScreen()),
                        child: const Text('Login'),
                        style: OutlinedButton.styleFrom(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.purple,
                            side: BorderSide(color: Colors.purple),
                            padding:
                                EdgeInsets.symmetric(vertical: size * 0.01)))),
                SizedBox(width: size * 0.01),
                Expanded(
                    child: OutlinedButton(
                        //onPressed: () => Get.to(() => SignUpScreen()),
                        onPressed: () {},
                        child: const Text('Sign In'),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(),
                            foregroundColor: Colors.purple,
                            side: BorderSide(color: Colors.purple),
                            padding:
                                EdgeInsets.symmetric(vertical: size * 0.01))))
              ],
            ),
          ],
        )),
      ),
    );
  }
}
