import 'package:erp/pages/signinn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthClass {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> googleSignIn(BuildContext context) async {
    try {
      GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
      if(googleSignInAccount!=null)
        {
          GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
          AuthCredential credential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.accessToken,
            accessToken: googleSignInAuthentication.idToken,
          );
          try{
            UserCredential userCredential =
            await auth.signInWithCredential(credential);
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (builder)=>signinn()),
                    (route) => false);
          }
          catch(e)
    {
      final snackbar = SnackBar(content: Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }

        } else{
        final snackbar = SnackBar(content: Text("Not Able To Sign In"));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }
    }
    catch (e) {


    }
  }
}


