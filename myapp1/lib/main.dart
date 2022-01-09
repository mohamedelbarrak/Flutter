import 'package:flutter/material.dart';
import 'package:myapp1/Formulaire.dart';
import 'package:myapp1/MyApp.dart';
import 'package:myapp1/MyApp1.dart';
import 'package:myapp1/SingUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// initialiser la base de données
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(myapp1());
}
/*
void main() {
  runApp(myapp1());
}
*/

class myapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {//affichage
    return MaterialApp(
      title: 'By EL BARRAK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
//cangement de l'interface: en change context
class MyHomePage extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  Widget _myContacts = MyContacts();
  Widget _myEmails = MyEmails();
  Widget _myProfile = MyProfile();
  Widget _myFunc = MyFunc();
  static const String _title= 'BottomNavigationBar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),




















  body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Hello World'),
              //this.getBody(),
              this.getBody1(),
              //1
              //new RaisedButton(onPressed: () => _onPressed('imane'), child: new Text('Click me'),)
              //
            ],
          ),
        ),
      ),


      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("EL BARRAK Mohamed"),
              accountEmail: Text("mohamedelbarrak@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "MO",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings), title: Text("MyApp"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute( builder: (context) => MyApp()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts), title: Text("Formulaire"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute( builder: (context) => Formulaire()));
                //_title = "Contact Us";
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts), title: Text("MyApp1"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute( builder: (context) => MyApp1()));
                //_title = "Contact Us";
              },
            ),
          ],
        ),
      ),

/*
 body:  this.getBody(),
      body: const Center(
        child: Text('Hello World'),
        child: this.getBody(),
      ),

      child: this.getBody(),
      */


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text("Contacts"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text("Emails"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          )
        ],
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),

    );




  }

  Widget getBody1(){
    return this._myFunc;
  }



  void onTapHandler(int index)  {
    this.setState(() {
      this.selectedIndex = index;
      if(this.selectedIndex == 0) {
        this._myContacts;
      } else if(this.selectedIndex==1) {
        Navigator.push(context, MaterialPageRoute( builder: (context) => Formulaire()));
      } else {
        Navigator.push(context, MaterialPageRoute( builder: (context) => SingUp()));
      }

    });

  }


}






class MyFunc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Func"));
  }
}




class MyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Contacts"));
  }
}

class MyEmails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Emails"));
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile"));
  }
}