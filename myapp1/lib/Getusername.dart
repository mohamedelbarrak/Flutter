
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Getusername  {

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

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  return FutureBuilder<DocumentSnapshot>(
  future: users.doc(documentId).get(),
  builder:
  (BuildContext context, AsyncSnapshot<OocumentSnapshot> snapshot) {

  if (snapshot.hasError) {
    return Text("Something went wrong");
  }
  if (snapshot.hasData && !snapshot.data!.exists) {
    return Text("Document does not exist");
  }

  if (snapshot.connectionState == ConnectionState.done) {
  Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
  return Text("Full Name: ${data['full_namel']} ");
  }

  }
  )
*/
  }