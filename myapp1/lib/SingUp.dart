import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'adduserform.dart';



class SingUp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);
  //**
  @override
  _State createState() => new _State();
//**
}

class _State extends State<SingUp>{
  TextEditingController _username=new TextEditingController();
  TextEditingController	_password = new TextEditingController();




  Future<void> Signup() async{
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _username.text, 
          password: _password.text);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Adduserform()));
    }catch(e){
      print(e);
    }
  }







  @override
  Widget build(BuildContext context) {
    // TODD: implement build
    return Scaffold(body: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child:
            new TextField(
              decoration: new InputDecoration(
                  labelText: 'Usernare',
                  hintText: 'Enter your usernaae',
                  icon: new Icon(Icons.person)
              ),
              controller: _username,
            ),
          ), // Container
          Container(
            padding: EdgeInsets.all(20.0), child:
          new TextField(
            obscureText: true,


            decoration: new InputDecoration(
              labelText: 'Passnord',
              hintText: 'Enter your password',
              icon: new Icon(Icons.lock),
            ),
            controller: _password,
          ),
          ),
          Container(
              padding: EdgeInsets.all(30.0),
              child: ElevatedButton(onPressed: () {
                Signup();
              },
                  child: Text("SingUp")) // ElevatedButton
          )
        ],
      ),
    ));
  }


  }