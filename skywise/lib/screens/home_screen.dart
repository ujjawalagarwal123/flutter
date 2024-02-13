import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(8,-0.3),
                child: Container(
                  height: 300,
                  width: 300,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-8,-0.3),
                child: Container(
                  height: 300,
                  width: 300,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1.3),
                child: Container(
                  height: 300,
                  width: 600,

                  decoration: BoxDecoration(
                    color: Color(0xFFFFAB40),
                  ),
                ),
              ),
              BackdropFilter(filter: ImageFilter.blur(sigmaX: 100.0,sigmaY: 100.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                ),),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("📍Gharuan",
                      style:TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300
                      ) ,),
                    SizedBox(height: 5,),
                    Text("Good Afternoon",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                    // SizedBox(height: ),
                    Image.asset('assets/8.png'),
                    Center(
                        child: Text("21°C",
                          style: TextStyle(color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w600),)),
                    Center(
                        child: Text("Haze",
                          style: TextStyle(color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),)),
                    SizedBox(height: 5,),
                    Center(
                        child: Text("Saturday 10 - 1:57 P.M",
                          style: TextStyle(color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),)),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Row(

                          children: [Image.asset('assets/11.png',scale: 8,),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sunrise",style: TextStyle(color: Colors.white),),
                                Text("7:09 A.M", style: TextStyle(color: Colors.white),),
                              ],
                            )],
                        ),
                        Row(

                          children: [Image.asset('assets/12.png',scale: 8,),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("SunSet",style: TextStyle(color: Colors.white),),
                                Text("6:09 P.M", style: TextStyle(color: Colors.white),),
                              ],
                            )],
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Row(

                          children: [Image.asset('assets/13.png',scale: 8,),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Temp Min",style: TextStyle(color: Colors.white),),
                                Text("21°C", style: TextStyle(color: Colors.white),),
                              ],
                            )],
                        ),
                        Row(

                          children: [Image.asset('assets/14.png',scale: 8,),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Temp Min",style: TextStyle(color: Colors.white),),
                                Text("7°C", style: TextStyle(color: Colors.white),),
                              ],
                            )],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
