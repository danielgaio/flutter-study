import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import '../services/firebase_auth_methods.dart';
import '../widgets/custom_button.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
  ],
);

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: CustomButton(
        onTap: () {
          context.read<FirebaseAuthMethods>().signInWithGoogle(context);
        },
        text: 'Sign In With Google',
      ),
    );
  }
}
