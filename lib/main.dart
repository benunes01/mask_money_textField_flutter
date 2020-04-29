import 'package:flutter/material.dart';
import 'package:maskmoneytextfield/mask/mascara_dinheiro_textField.dart';

void main() {
  runApp(MyApp());
}

//In Brazil the standard is a comma instead of a period to separate the cents. And place a dot every 3 places to be better visible.

class MyApp extends StatelessWidget {


  //It can be a value that comes from an API
  double value = 130999564.96;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Text(
              '${mask_money_textField(value.toString())}',
              style: TextStyle(
                fontSize: 32.0
              ),
            ),
          ),

      ),
    );
  }


}
