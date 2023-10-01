import 'package:flutter/material.dart';
import 'package:medic_app/widget/button.dart';
import 'package:medic_app/widget/button_text.dart';
import 'package:medic_app/widget/img.dart';
import 'package:medic_app/widget/img_cross.dart';
import 'package:medic_app/widget/text_container.dart';
import 'package:medic_app/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  
  final String btnSkip = 'Пропустить';
  final String imgCross = 'img';
  final String txtMain = 'Анализы';
  final String txtDescription = 'Экспресс сбор и получение проб';
  final String btnNext = 'Дальше';
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: ButtonText(
                          txt: btnSkip, 
                          width: 0.1, 
                          height: 0.05, 
                          backgroundColor: Colors.white, 
                          colortxt: Colors.blue
                        ),
                      ),
                      SizedBox(width:screenWidth * 0.2),
                      Container(
                        child: CrossImage(
                          txt: imgCross, 
                          width: 0.5, 
                          height: 0.20, 
                          colortxt: Colors.white
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.1,),
                  Column(
                    children: [
                      Center(
                        child: TextPlace(
                          txt: txtMain, 
                          st: FontWeight.bold, 
                          width: 0.3, 
                          height: 0.04, 
                          backgroundColor: Colors.white, 
                          colortxt: Colors.green, 
                          size: 24
                        ), 
                      ),
                      SizedBox(height: screenHeight * 0.015,),
                      Center(
                        child: TextPlace(
                          txt: txtDescription, 
                          st: FontWeight.normal, 
                          width: 0.7, 
                          height: 0.05, 
                          backgroundColor: Colors.white, 
                          colortxt: Color.fromRGBO(147, 147, 150, 1), 
                          size: 18
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02,),
                  Button(
                    txt: btnNext, 
                    page:(context) => SecondPage(), 
                    width: 0.2, 
                    height: 0.05, 
                    backgroundColor: Colors.green, 
                    colortxt: Colors.white
                  ),
                  SizedBox(height: screenHeight * 0.1,),
                  ImageMain(
                    txt: '', 
                    width: 0.8, 
                    height: 0.3, 
                    colortxt: Colors.white, 
                    picture: 'assets/images/first_image.jpg'
                  )
                ],
              ),
              
            ),
          ) ,
        ),
      )
    );
  }

  
}