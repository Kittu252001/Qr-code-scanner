import 'package:flutter/material.dart';
import 'package:qr_code_scanner/google.dart';

class googlesignin extends StatefulWidget {
  googlesignin({Key? key}) : super(key: key);

  @override
  State<googlesignin> createState() => _googlesigninState();
}

class _googlesigninState extends State<googlesignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF007991),
            const Color(0xFF78ffd6),
          ],
        )),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Welcome to QR Code Scanner',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white70,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 240,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white70.withOpacity(0.8),
                          ),
                          onPressed: () {
                            signInWithGoogle();
                          },
                          icon: Image.asset(
                            'images/googleicon.png',
                            scale: 2,
                          ),
                          label: Text(
                            'Sign in with Google',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
