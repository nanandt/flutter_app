import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/theme.dart';
import 'package:flutter_app/pages/course_pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo.png'),
                )
            ),
          ),
          SizedBox(height: 96,),
          Container(
            width: 267,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo-second.png'),
                )
            ),
          ),
          SizedBox(height: 52,),
          Text('Up Your Skills', style: blackTextStyle.copyWith(
            fontSize: 28
          ),),
          SizedBox(height: 7,),
          Text('We provide content that help\neveryone to learn anything',
            textAlign: TextAlign.center,
            style: secondaryTextStyle.copyWith(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 96,
          ),
          Container(
            width: MediaQuery.of(context).size.width - (2 * defaultMargin),
            height: 50,
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CoursePage(),),);
              },
              color: blueColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17)
              ),
              child: Text(
                  'Get Started',
                  style: whiteTextStyle.copyWith(
                    fontSize: 22
                  ),
              ),
            ),
          )
        ],
      ),
      ),
    );
  }
}
