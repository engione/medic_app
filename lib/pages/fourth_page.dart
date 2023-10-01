import 'package:flutter/material.dart';
import 'package:medic_app/pages/first_page.dart';
import 'package:medic_app/widget/button.dart';
import 'package:medic_app/widget/img.dart';
import 'package:medic_app/widget/text_container.dart';

class FourthPage extends StatelessWidget{

  final String btnNext = 'Далее';
  final String welcomeTxt = 'Добро пожаловать!';
  final String infoTxt = 'Войдите, чтобы пользоваться функциями приложения';
  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home:  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: screenWidth * 0.115),
                      ImageMain(
                        txt: '', 
                        width: 0.1, 
                        height: 0.05, 
                        colortxt: Colors.white, 
                        picture: 'assets/images/emojies.jpg'
                      ),
                      TextPlace(
                        txt: welcomeTxt, 
                        st: FontWeight.bold, 
                        width: 0.6, 
                        height: 0.05, 
                        backgroundColor: Colors.white, 
                        colortxt: Colors.black, 
                        size: 24
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: screenWidth * 0.115),
                      TextPlace(
                        txt: infoTxt, 
                        st: FontWeight.normal, 
                        width: 0.75, 
                        height: 0.05, 
                        backgroundColor: Colors.white, 
                        colortxt: Colors.black, 
                        size: 15
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Введите e-mail',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        )
                      )
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02,),
                  Button(
                    txt: btnNext, 
                    page: (context) => FirstPage(), 
                    width: 0.92,
                    height: 0.06, 
                    backgroundColor: Colors.lightBlue, 
                    colortxt: Colors.white
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