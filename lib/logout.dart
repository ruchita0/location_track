import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:location_track/screens/login_screen.dart';

class LogOutPage extends StatelessWidget {
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Call the logout method and redirect to login screen
    logout(context);
    // You can also return a loading or splash screen here while the logout is being processed.
    return CircularProgressIndicator();
  }
}
