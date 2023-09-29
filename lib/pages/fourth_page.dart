import 'package:flutter/material.dart';
import 'package:medic_app/pages/first_page.dart';
import 'package:medic_app/widget/button.dart';

class FourthPage extends StatelessWidget{

  final String btnBack = 'Назад';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(8.0, 48.0, 8.0, 8.0),
          child: Center(
            child: Button(
              txt: btnBack, 
              page: (context) => FirstPage(), 
              width: 0.2, 
              height: 0.05, 
              backgroundColor: Colors.green, 
              colortxt: Colors.white
            ),
          ),
        ) ,
      )
    );
  }

}