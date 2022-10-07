import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../services/firebase_auth_methods.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
  ],
);

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Center(
        child: FloatingActionButton.extended(
            onPressed: () {
              // GoogleSignIn.signIn();
              FirebaseAuthMethods(FirebaseAuth.instance)
                  .signInWithGoogle(context);
            },
            icon: Image.asset(
              'assets/images/icons8-google-144.png',
              height: 32,
              width: 32,
            ),
            label: Text('Sign in with Google'),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black),
      ),
    );
  }
}
