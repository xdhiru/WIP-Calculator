import 'package:flutter/material.dart';
import 'buttons.dart';

void main() => runApp(MaterialApp(
  home: Calculator()
));

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  List<String> textList1= ['1', '2', '3', '4', '5', '6', '4', '5', '6', '7', '8', '0', '0'];
  List<String> textList2= ['1', '2', '3', '4', '5', '6', '4', '5', '6', '7', '8', '0', '0'];
  double number1=0, number2=0;

  String list1ToString() => textList1.join('');
  String list2ToString() => textList2.join('');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo[200],
        title: Center(
          child: Text(
            'Calculator',
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 15,),
            Expanded(
              flex: 3,
              child: Container(
                decoration:BoxDecoration(
                    color: Colors.indigo[300],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                padding: EdgeInsets.fromLTRB(50, 10, 25, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(height: 8,),
                    Expanded(
                      flex: 1,
                      child: Text(
                        list1ToString(),
                        style: TextStyle(

                          fontFamily: 'DidactGothic',
                          fontSize: 30.0,
                          color: Colors.indigo[50],
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.7,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          list2ToString(),
                          // textLine2.join(''),
                          style: TextStyle(
                            fontFamily: 'DidactGothic',
                            fontSize: 60.0,
                            color: Colors.indigo[50],
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                      child: button('AC', (){
                        setState(() {
                          textList1=['0'];
                          textList2=['0'];
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('( )', (){})),
                  Expanded(
                      flex:1 ,
                      child: button('^', (){
                        setState(() {
                          textList2.add('^');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('!',  (){
                        setState(() {
                          textList2.add('!');
                        });
                      })),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex:1 ,
                      child: button('DEL', (){
                        setState(() {
                          if (list2ToString()!='0'){
                            textList2.removeLast();
                          } else{
                            textList2=['0'];
                          }
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('+/-', (){})),
                  Expanded(
                      flex:1 ,
                      child: button('%', (){})),
                  Expanded(
                      flex:1 ,
                      child: button('/',  (){
                        setState(() {
                          textList2.add('/');
                        });
                      })),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex:1 ,
                      child: button('7',  (){
                        setState(() {
                          textList2.add('7');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('8',  (){
                        setState(() {
                          textList2.add('8');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('9',  (){
                        setState(() {
                          textList2.add('9');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('*',  (){
                        setState(() {
                          textList2.add('*');
                        });
                      })),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex:1 ,
                      child: button('4',  (){
                        setState(() {
                          textList2.add('4');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('5',  (){
                        setState(() {
                          textList2.add('5');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('6',  (){
                        setState(() {
                          textList2.add('6');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('-',  (){
                        setState(() {
                          textList2.add('-');
                        });
                      })),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex:1 ,
                      child: button('1',  (){
                        setState(() {
                          textList2.add('1');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('2',  (){
                        setState(() {
                          textList2.add('2');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('3',  (){
                        setState(() {
                          textList2.add('3');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('+',  (){
                        setState(() {
                          textList2.add('+');
                        });
                      })),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex:2 ,
                      child: button('0',  (){
                        setState(() {
                          textList2.add('0');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('.',  (){
                        setState(() {
                          textList2.add('.');
                        });
                      })),
                  Expanded(
                      flex:1 ,
                      child: button('=', (){})),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

