import 'package:flutter/material.dart';



class Formulaire extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);
  //**
  @override
  _State createState() => new _State();
//**
}

//radio
enum Groups { group1, group2}
//checkbox

//flutter_app3
class _State extends State<Formulaire>{

  @override
  static const String _title= 'first application';
  //radio
  Groups?_character = Groups.group1;
  String _value = '';
  //checkbox
  bool isChecked1 = false;
  bool isChecked2 = false;
  //Calendrier
  String _valueDate = '';
  Future _selectDate() async{
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate:  new DateTime.now(),
      firstDate: new DateTime(2016),
      lastDate: new DateTime(2099)
    );
    if(picked != null) setState(() {
      _valueDate = picked.toString().substring(0,10);
    });
  }
  //Calendrier

  /*
  //détecter l’état de votre bouton
  void _onPressed(String value){
    setState(() {
      _value = value as int;
    });
  }

  void _add(){
    setState(() {
      _value = _value+1;
    });
  }

  void _subtract(){
    setState(() {
      _value = _value - 1;
    });
  }
  */


  void _onChange(String value){
    setState(() {
      // _value = 'Change: ${value}';
     _value = 'Change: '+ value;
    });
  }
  void _onSubmit(String value){
    setState(() {
      _value = 'Submit: ${value}';
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_title),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Center(

          child: new Column(
            children: <Widget>[
              //Image(image: AssetImage('assets/images/hello.jpg')),
              Image.asset('assets/images/hello.jpg', width: 300,
                  height: 150,
                  fit:BoxFit.fill ),
              new Text(_value),
              new Text("mohamed"),
              //4
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Nom',
                  hintText: 'tapez votre nom',
                  icon: new Icon(Icons.people)
                ),
                autocorrect: true,
                //autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              ),

              //radio/0//////////////////////////////////////////////////
              new ListTile(
                title: const Text('group1'),
                leading: Radio<Groups>(
                  value: Groups.group1,
                  groupValue: _character,
                  onChanged: (Groups? value){
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),


              new ListTile(
                title: const Text('group2'),
                leading: Radio<Groups>(
                  value: Groups.group2,
                  groupValue: _character,
                  onChanged: (Groups? value){
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              //radio/1//////////////////////////////////////////////////


              //checkbox/0//////////////////////////////////////////////////
              //checkbox()     ou     checkboxlist()
              new CheckboxListTile(
                  value: isChecked1,
                  onChanged: (bool? value){
                    setState(() {
                      isChecked1 = value!;
                    });
                  },
                title:
                  new Text('Archive1'),
                controlAffinity:
                ListTileControlAffinity.leading,
                subtitle:
                new Text('Subtitle'),
                secondary:
                new Icon(Icons.archive),
                activeColor:
                Colors.red,
              ),

              new CheckboxListTile(
                value: isChecked2,
                onChanged: (bool? value){
                  setState(() {
                    isChecked2 = value!;
                  });
                },
                title:
                new Text('Archive2'),
                controlAffinity:
                ListTileControlAffinity.leading,
                subtitle:
                new Text('Subtitle'),
                secondary:
                new Icon(Icons.archive),
                activeColor:
                Colors.red,
              ),

              ////checkbox/1///////////////////////////////////////////////////1//////////////////////////////////////////////////

              ////chal/0///////////////////////////////////////////////////0//////////////////////////////////////////////////

              new Text(_valueDate),
              new ElevatedButton(onPressed: _selectDate, child: new Text('Date d''inscription')),

              //cal/1//////////////////////////////////////////////////

              //3
              //new Text('_value = ${_value}'),
              //new IconButton(icon: new Icon(Icons.add), onPressed: _add),
              //new IconButton(icon: new Icon(Icons.remove), onPressed: _subtract)


              //2
              //new ElevatedButton(onPressed: () => _onPressed, child: new Text('Click me'),),
              //new TextButton(onPressed: () => _onPressed, child: new Text('Click me'),)
              //1
              //new RaisedButton(onPressed: () => _onPressed('imane'), child: new Text('Click me'),)
              //






            ],



          ),
        ),
      ),
    );
  }
}

