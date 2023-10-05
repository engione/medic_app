import 'package:flutter/material.dart';
import 'package:medic_app/widget/button.dart';
import 'package:medic_app/widget/button_text.dart';
import 'package:medic_app/widget/field_input.dart';

class SeventhPage extends StatelessWidget {  
  
  final String info = 'Создание карты пациента';
  final String btnSkip = 'Пропустить';
  final String fdescrip = 'Без карты пациента вы не сможете заказать анализы.';
  final String sdescrip = 'В картах пациентов будут храниться результаты анализов вас и ваших близких.';
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: screenWidth * 0.63,
                    height: screenHeight * 0.12,
                    child: Column(
                      children: [
                        SizedBox(height: screenHeight * 0.05,),
                        Text(
                          info,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: screenHeight * 0.02,),
                        ButtonText(
                          txt: btnSkip, 
                          width: 0.1, 
                          height: 0.025, 
                          backgroundColor: Colors.white, 
                          colortxt: Colors.blue
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.025,),
              Container(
                height: screenHeight * 0.15,
                width: screenWidth * 0.93,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      fdescrip,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01,),
                    Text(
                      sdescrip,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FieldInput(lbltxt: 'Имя', width: 0.93, height: 0.07),
                    SizedBox(height: screenHeight * .03,),
                    FieldInput(lbltxt: 'Фамилия', width: 0.93, height: 0.07,),
                    SizedBox(height: screenHeight * .03,),
                    FieldInput(lbltxt: 'Отчество', width: 0.93, height: 0.07,),
                    SizedBox(height: screenHeight * .03,),
                    FieldInput(lbltxt: 'Дата рождения', width: 0.93, height: 0.07,),
                    SizedBox(height: screenHeight * .03,),
                    FieldInput(lbltxt: 'Пол', width: 0.93, height: 0.07,),
                  ],
                ),
              ),
              Button(
                txt: 'Создать', 
                page: (context) => SeventhPage(), 
                width: 0.93, 
                height: 0.07, 
                backgroundColor: Color.fromRGBO(26, 111, 238, 1), 
                colortxt: Colors.white
              )

            ],
          ),
        ),
      )
    );
  }
}


