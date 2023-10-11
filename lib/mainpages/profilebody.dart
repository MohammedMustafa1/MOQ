import 'package:flutter/material.dart';
import 'package:intl/intl.dart';// to get normal time
import 'package:hijri/hijri_calendar.dart';
import 'package:message_of_quran/global/boxshadow.dart';
import 'package:message_of_quran/global/globaltext.dart';

import 'homebody.dart';//to get arabic time

class profilebody extends StatefulWidget {
  const profilebody({Key? key}) : super(key: key);

  @override
  _profilebodyState createState() => _profilebodyState();
}

class _profilebodyState extends State<profilebody> {
  var _today = HijriCalendar.now();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/(100/20),//20%of the page
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 8,//size of shadow
                      blurRadius: 8,
                      offset: Offset(0,0),//change position of shadow
                    )]),
                    child: Image.asset("images/home/quran.png",fit: BoxFit.fitWidth,)
                ),
                Positioned(
                    top: 15,
                    left: 20,
                    child:apptext(text: "Welcome to \nYour Profile",bold: true,color: Colors.white,size: 25,)
                ),
                Positioned(
                  top: 15,
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
                    top: 35,
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
                    top: 55,
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
                  bottom: 25,
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
                  bottom: 45,
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
          Container(
            height: MediaQuery.of(context).size.height/(100/16),//20%of the page
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width/20,),
                Expanded(flex:3,child: Container(
                  height: MediaQuery.of(context).size.height/(100/12),//20%of the page
                  width: MediaQuery.of(context).size.width/(100/15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("images/home/quran.png",fit: BoxFit.fill,),
                  ),
                )),
                SizedBox(width: MediaQuery.of(context).size.width/(100/3),),
                Expanded(flex:6,child: Container(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: "Users Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0xFF666666),
                      ),
                      children: [
                        TextSpan(
                          text: "\nSomething about Yourself",
                        style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF666666),
                        ),
                        )
                      ]
                    ),
                  ),
                )),
                Expanded(flex:1,child: Container(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.edit,color:Color(0xFF666666),),
                )),
                SizedBox(width: MediaQuery.of(context).size.width/20,),
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
                  height: MediaQuery.of(context).size.height/(100/44),//45%of the page height
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
                            Expanded(child: Container(
                              alignment: Alignment.centerLeft,
                              child: apptext(text: "Today Prayer",color: Colors.white,size: 18,bold: true,),
                            )),
                            Expanded(child: Container(
                              alignment: Alignment.centerRight,
                              child: apptext(text: "Done",color: Colors.white,size: 14,),
                            )),
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
                  height: MediaQuery.of(context).size.height/(100/44),//45%of the page height
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
                            Expanded(child: Container(
                              alignment: Alignment.centerLeft,
                              child: apptext(text: "Daily Tilawat",color: Colors.white,size: 18,bold: true,),
                            )),
                            Expanded(child: Container(
                              alignment: Alignment.centerRight,
                              child: apptext(text: "Edit",color: Colors.white,size: 14,),
                            )),
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
          SizedBox(height: MediaQuery.of(context).size.height/5,),
        ],
      ),
    );
  }
}
