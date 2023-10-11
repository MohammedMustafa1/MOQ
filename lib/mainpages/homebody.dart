import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message_of_quran/global/boxshadow.dart';
import 'package:message_of_quran/global/globaltext.dart';
import 'dart:async';
import 'package:intl/intl.dart';// to get normal time
import 'package:hijri/hijri_calendar.dart';//to get arabic time


class homebody extends StatefulWidget {
  const homebody({Key? key}) : super(key: key);

  @override
  _homebodyState createState() => _homebodyState();
}

class _homebodyState extends State<homebody> {
  var _today = HijriCalendar.now();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/1.67,//60%of page height
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset("images/home/quran.png",fit: BoxFit.fitWidth,)
                ),
                Positioned(
                  top: 5,
                    left: 20,
                    child:apptext(text: "Welcome to \nMessage of Quran",bold: true,color: Colors.white,size: 25,)
                ),
                Positioned(
                  top: 5,
                  right: 15,
                  child: Row(
                    children: [
                      Icon(Icons.watch_later_outlined,color: Colors.white,),
                      StreamBuilder(
                        stream: Stream.periodic(const Duration(seconds: 1)),
                        builder: (context, snapshot) {
                          return Center(
                            child: Text(
                              DateFormat('hh:mm:ss').format(DateTime.now()),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 25,
                    right: 15,
                    child: Row(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height/35,
                            width: MediaQuery.of(context).size.width/35,
                            child: Image.asset("images/home/sunrise.png")
                        ),
                        apptext(text: "06:03",color: Colors.white,size: 13,)
                      ],
                    )
                ),
                Positioned(
                    top: 45,
                    right: 15,
                    child: Row(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height/35,
                            width: MediaQuery.of(context).size.width/35,
                            child: Image.asset("images/home/sunset.png")
                        ),
                        apptext(text: "17:34",color: Colors.white,size: 13,)
                      ],
                    )
                ),
                Positioned(
                  bottom: 145,
                    left: 0,
                    child:Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/5,
                      child: Row(
                        children: [
                          Expanded(flex:5,child: Text("")),
                          Expanded(
                              flex:27,
                              child: homebox(image: "images/home/understandquran.png",text2: "Quran",),
                          ),
                          Expanded(flex:5,child: Text("")),
                          Expanded(
                              flex:26,
                            child: homebox(text: "Translation",image: "images/home/translation.png",),
                          ),
                          Expanded(flex:5,child: Text("")),
                          Expanded(
                              flex:27,
                            child: homebox(text: "13 Lines of",text2: "Quran",image: "images/home/13linesofquran.png",),
                          ),
                          Expanded(flex:5,child: Text("")),
                        ],
                      ),
                    ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child:Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    child: Row(
                      children: [
                        Expanded(flex:5,child: Text("")),
                        Expanded(
                          flex:27,
                          child: homebox(text: "Spiritual",text2: "Count",image: "images/home/spiritualcontent.png",),
                        ),
                        Expanded(flex:5,child: Text("")),
                        Expanded(
                          flex:26,
                          child: homebox(text: "Reading",text2: "Quran",image: "images/home/readingquran.png",),
                        ),
                        Expanded(flex:5,child: Text("")),
                        Expanded(
                          flex:27,
                          child: homebox(text:"Understand",text2: "Islam",image: "images/home/understandislam.png",),
                        ),
                        Expanded(flex:5,child: Text("")),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 305,
                    left: 20,
                    child:StreamBuilder(
                      stream: Stream.periodic(const Duration(seconds: 1)),
                      builder: (context, snapshot) {
                        return Center(
                          child: Text(
                            DateFormat('EEEE,MMM dd,yyyy').format(DateTime.now()),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                ),
                Positioned(
                  bottom: 325,
                  left: 20,
                  child:StreamBuilder(
                    stream: Stream.periodic(const Duration(seconds: 1)),
                    builder: (context, snapshot) {
                      return Center(
                        child: Text(
                          _today.toFormat("dd,MMMM,yyyy"),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(flex:5,child: Text("")),
              Expanded(
                  flex:90,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/2.27,//45%of the page height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [boxshadow()],
                      color: Colors.white
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              boxShadow: [boxshadow()],
                            color: Color(0xFF4CB151),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width/20,),
                              Expanded(
                                flex: 3,
                                  child: Row(
                                    children: [
                                      Icon(Icons.watch_later_outlined,color: Colors.white,size: 35,),
                                      SizedBox(width: 5,),
                                      apptext(text: "ISHA",color: Colors.white,size: 20,)
                                    ],
                                  ),
                              ),
                              Expanded(flex:1,child: Text("")),
                              Expanded(
                                  flex:2,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Container(
                                            alignment:Alignment.bottomRight,
                                            child: apptext(text: "Next Prayer",color: Colors.white,size: 15,),
                                          )
                                      ),
                                      Expanded(
                                          child: Container(alignment:Alignment.topRight,
                                            child: apptext(text:"Fajr 5:32 AM",color: Colors.white,size: 15,),
                                          )
                                      ),
                                    ],
                                  ),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width/20,),
                            ],
                          ),
                        ),
                        namaztime(),
                        divider(),
                        namaztime(namaz: "Zuhar",time: "1:30 AM",),
                        divider(),
                        namaztime(namaz: "Asr",time: "4:30 AM",),
                        divider(),
                        namaztime(namaz: "Magrib",time: "7:30 AM",),
                        divider(),
                        namaztime(namaz: "Isha",time: "8:30 AM",),
                      ],
                    ),
                  ),
              ),
              Expanded(flex:5,child: Text("")),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20,),
          Row(
            children: [
              Expanded(flex:5,child: Text("")),
              Expanded(
                flex:90,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.27,//45%of the page height
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [boxshadow()],
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          boxShadow: [boxshadow()],
                          color: Color(0xFF4CB151),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width/20,),
                            Expanded(
                              flex: 1,
                              child: Container(alignment:Alignment.centerLeft,child: Icon(Icons.play_circle_outline_rounded,color: Colors.white,size: 35,)),
                            ),
                            Expanded(
                                flex:5,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        child: apptext(text: "Dua of the Day",color: Colors.white,size: 17,bold: true,),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        child: apptext(text: "For travelling at night",color: Colors.white,size: 12,),
                                      ),
                                    ),
                                  ],
                                ),
                            ),
                            Expanded(
                              flex:2,
                              child: Container(alignment:Alignment.centerRight,child: apptext(text: "View All",color: Colors.white,size: 12,)),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width/20,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(flex:5,child: Text("")),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/5,),
        ],
      ),
    );
  }
}

class divider extends StatelessWidget {
  const divider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.25,
      child: Divider(
        color: Colors.black,
      ),
    );
  }
}

class namaztime extends StatelessWidget {
  namaztime({
    Key? key,
    this.namaz="Fajr",
    this.time="05:23 AM"
  }) : super(key: key);
  String namaz;
  String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/20,
      child: Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width/20,),
          Expanded(child: Container(
            alignment: Alignment.centerLeft,
            child:apptext(text:namaz,size: 15,bold: true,),
          )
          ),
          Expanded(child: Container(
            alignment: Alignment.centerRight,
            child: apptext(text:time,size: 15,bold: true,),
          )
          ),
          SizedBox(width: MediaQuery.of(context).size.width/20,),
        ],
      ),
    );
  }
}

class homebox extends StatelessWidget {
   homebox({
    Key? key,
     this.text="Understand",
     this.text2="",
     this.image="images/home/sunrise.png",
  }) : super(key: key);
 String image;
 String text;
 String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/4,
      height: MediaQuery.of(context).size.height/8,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
            BoxShadow(
        color: Colors.black.withOpacity(0.1),
        spreadRadius: 2,//size of shadow
        blurRadius: 8,
        offset: Offset(0,0),//change position of shadow
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5,),
          Container(
            width: MediaQuery.of(context).size.width/5,
              height: MediaQuery.of(context).size.height/14,
              child: Image.asset(image)
          ),
          SizedBox(height: 5,),
          apptext(text: text,color: Colors.black,size: 10,bold: true,),
          apptext(text: text2,color: Colors.black,size: 10,bold: true,)
        ],
      ),
    );
  }
}
