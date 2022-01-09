
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Adduserform extends StatelessWidget {
  const Adduserform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }


/*
  Future<void> addUser() {
    CollectionReference users = FirebaseFirestore.instance.collection('users'); // Call the user's CollectionReference to add a new user
    return users
        .add({
    'full_name': _name.text, // John Doe
    'company': _compagny.text, // Stokes and Sons
    'age': age // 42
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));

  }

  Future<void> addFournisseur(){

    CollectionReference fournisseur = FirebaseFirestore.instance.collection('fournisseurs'); // Call the user's CollectionReference to add a new user
    return fournisseur
        .add({
      'full_name': _name.text, // John Doe
      'company': _compagny.text, // Stokes and Sons
      'age': age // 42
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));

  }
  */

  }