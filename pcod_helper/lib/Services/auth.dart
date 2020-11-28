import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pcod_helper/Services/Database.dart';
import 'package:pcod_helper/models/Usermodel.dart';
import 'dart:async';

class Auth{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User _UserFromFirebase(FirebaseUser user){
    return user != null ? User(uid : user.uid) : null;
  }
  // Tells when user state has changed
  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_UserFromFirebase);
  }
  //Sign In Anonymously
  Future SignInAnon() async{
    try {
      AuthResult result = await _auth.signInAnonymously();

    }
    catch(e){
      print(e.toString());
    }
  }
  Future SignOut() async {
    try{
      return await _auth.signOut();
    }
    catch(e){
      print(e);
      return null;
    }
  }

  Future registerWithEmail(String email, String Password) async{
   try{
     AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: Password);
     FirebaseUser user = result.user;
     await DataBaseService(uid: user.uid).UpdateUserData(0, false, false, false, false, false, false, false);
     return _UserFromFirebase(user) ;
   }
   catch(e){
     print(e);
   }
  }
  Future SignInWithEmail(String email, String Password) async{
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: Password);
      FirebaseUser user = result.user;
      return _UserFromFirebase(user) ;
    }
    catch(e){
      print(e);
    }
  }
}


