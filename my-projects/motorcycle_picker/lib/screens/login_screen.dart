import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/firebase_auth_methods.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Motorcycle Picker',
            textScaleFactor: 3,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Center(
            child: FloatingActionButton.extended(
              onPressed: () {
                context.read<FirebaseAuthMethods>().signInWithGoogle(context);
              },
              icon: Image.asset(
                'assets/images/icons8-google-144.png',
                height: 32,
                width: 32,
              ),
              label: Text('Google Sign In'),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
