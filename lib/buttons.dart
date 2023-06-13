import 'package:flutter/material.dart';

class button extends StatelessWidget {

  String button_value;
  // Function button_function;
  button(this.button_value, ); //this.button_function
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,10.0,10.0,10.0),
      child: TextButton(
        onPressed: (){}, //button_function
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(10),
            backgroundColor: Colors.indigo[100],
            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    ),
        ),
        child: Text(
          button_value,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'DidactGothic',
            fontSize: 35.0,
            color: Colors.indigo[800],
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}
