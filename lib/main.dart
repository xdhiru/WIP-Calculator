import 'package:flutter/material.dart';
import 'buttons.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo[200],
        title: Center(
          child: Text(
            'CALCULATOR',
            style: TextStyle(
              fontFamily: 'DidactGothic',
              fontSize: 25.0,
              color: Colors.indigo[800],
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 20,),
            Expanded(
              flex: 3,
              child: Container(
                decoration:BoxDecoration(
                    color: Colors.indigo[300],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),

                

                padding: EdgeInsets.fromLTRB(20, 16, 16, 16),
                child: Text(
                  '123\n123\n123',
                  textAlign: TextAlign.end,

                  style: TextStyle(
                    fontFamily: 'DidactGothic',
                    fontSize: 45.0,
                    color: Colors.indigo[50],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex:1 ,
                      child: button('AC')),
                  Expanded(
                      flex:1 ,
                      child: button('+/-')),
                  Expanded(
                      flex:1 ,
                      child: button('%')),
                  Expanded(
                      flex:1 ,
                      child: button('/')),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex:1 ,
                      child: button('7')),
                  Expanded(
                      flex:1 ,
                      child: button('8')),
                  Expanded(
                      flex:1 ,
                      child: button('9')),
                  Expanded(
                      flex:1 ,
                      child: button('*')),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex:1 ,
                      child: button('4')),
                  Expanded(
                      flex:1 ,
                      child: button('5')),
                  Expanded(
                      flex:1 ,
                      child: button('6')),
                  Expanded(
                      flex:1 ,
                      child: button('-')),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex:1 ,
                      child: button('1')),
                  Expanded(
                      flex:1 ,
                      child: button('2')),
                  Expanded(
                      flex:1 ,
                      child: button('3')),
                  Expanded(
                      flex:1 ,
                      child: button('+')),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex:2 ,
                      child: button('0')),
                  Expanded(
                      flex:1 ,
                      child: button('.')),
                  Expanded(
                      flex:1 ,
                      child: button('=')),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

