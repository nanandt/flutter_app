import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/theme.dart';
import 'package:flutter_app/widgets/course_tile.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    'assets/video.png'
                ),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 230,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30)
                  ),
                  color: backgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text('Brand Maketing Design',
                      style: blackTextStyle.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('How to build strong company with passion',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text('# Preparing',
                      style: blackTextStyle.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CourseTile(
                        imageUrl:'assets/icon1.png',
                        title:'Ideation',
                        value: 0.7,
                        isLocked:false),
                    CourseTile(
                        imageUrl:'assets/icon2.png',
                        title:'Validate Idea',
                        value: 0.1,
                        isLocked:true),
                    CourseTile(
                        imageUrl:'assets/icon3.png',
                        title:'Strong Promotion',
                        value: 0,
                        isLocked:true),
                    SizedBox(
                      height: 25,
                    ),
                    Text('# Targeting Customer',
                      style: blackTextStyle.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CourseTile(
                        imageUrl:'assets/icon4.png',
                        title:'App Survey',
                        value: 0,
                        isLocked:true),
                    CourseTile(
                        imageUrl:'assets/icon5.png',
                        title:'Get Funding',
                        value: 0,
                        isLocked:true),
                    CourseTile(
                        imageUrl:'assets/icon6.png',
                        title:'Ship to Investor',
                        value: 0,
                        isLocked:true),
                    SizedBox(
                      height: 50,
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
                          'Finish and Take Quiz',
                          style: whiteTextStyle.copyWith(
                              fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
                      height: 50,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CoursePage(),),);
                        },
                        color: Color(0xffECEEF5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)
                        ),
                        child: Text(
                          'Skip to Home',
                          style: skipTextStyle.copyWith(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
