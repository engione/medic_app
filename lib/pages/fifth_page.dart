import 'package:flutter/material.dart';
import 'package:medic_app/pages/sixth_page.dart';
import 'package:medic_app/widget/button.dart';
import 'package:medic_app/widget/text_container.dart';

class FifthPage extends StatelessWidget {  @override
  Widget build(BuildContext context) {

    final String titleTxt = 'Введите код из E-mail';
    final String msgCode = 'Отправить код повторно можно будет через 59 секунд';
    List<TextEditingController> _codeControllers = List.generate(4, (index) => TextEditingController());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              children: [
                SizedBox(height: screenHeight*0.3,),
                TextPlace(
                  txt: titleTxt,
                  st: FontWeight.w600,
                  width: 0.5,
                  height: 0.04,
                  backgroundColor: Colors.white,
                  colortxt: Colors.black,
                  size: 19
                ),
                SizedBox(height: screenHeight*0.015,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      for (var i = 0; i < 4; i++)
                      Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(245, 245, 249, 1),
                          border: Border.all(width: .25),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _codeControllers[i],
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 24),
                          decoration: InputDecoration(
                            counterText: '',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                ),
                SizedBox(height: screenHeight*0.01,),
                Container(
                  width: screenWidth * 0.65,
                  height: screenHeight * 0.15,
                  child: Text(
                    msgCode,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(147, 147, 150, 1),
                      fontSize: 17,
                    ),
                  ),
                ),
                Button(
                  txt: 'next',
                  page: (context) => SixthPage(),
                  width: 0.1,
                  height: 0.05, 
                  backgroundColor: Colors.blue, 
                  colortxt: Colors.white
                )
              ],
            ),
            ),
        )
      ),
    );
  }
}
