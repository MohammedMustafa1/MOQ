
import 'package:flutter/material.dart';
import 'package:message_of_quran/global/boxshadow.dart';
import 'package:message_of_quran/global/globaltext.dart';
import 'package:message_of_quran/utility/routes.dart';
//import 'package:message_of_quran/utility/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool change=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/5,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset("images/logindecoration.png",
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    //height: MediaQuery.of(context).size.height/6,
                  ),
                  Positioned(
                    bottom: 0,
                      child: Image.asset("images/Logo.png",),
                      )
                ],
              ),
            ),
            apptext(text: "پیغامِ قران",bold: true,color: Color(0xFF4CB151),size: 30,),
           apptext(text: "MESSAGE OF QURAN",bold: true,color: Color(0xFF4CB151),size: 25,),
            SizedBox(height: MediaQuery.of(context).size.height/20,),
            Container(
              height: MediaQuery.of(context).size.height/16,
              width: MediaQuery.of(context).size.width/1.5,
              decoration: BoxDecoration(
                color: Color(0xFF4CB151),
                boxShadow: [boxshadow()],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  change?
                  dualcontainer(text: "LOGIN", textcolor: Colors.white, boxcolor: Color(0xFF4CB151),)
                      :InkWell(
                      onTap:(){
                        setState(() {
                          change=true;
                        });
                      },
                      child: dualcontainer(text: "LOGIN", textcolor: Color(0xFF4CB151), boxcolor:Colors.white, )
                  ),
                  change?
                  InkWell(
                    onTap: (){
                      setState(() {
                        change=false;
                      });
                    },
                      child: dualcontainer(text: "REGISTER",textcolor: Color(0xFF4CB151),boxcolor: Colors.white,)
                  ):dualcontainer(text: "REGISTER",textcolor: Colors.white,boxcolor:Color(0xFF4CB151), ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20,),
            change?Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/8.5,),
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  alignment:Alignment.centerLeft,
                  child: apptext(text: "Mobile Number",color: Color(0xFF4CB151),size:15,),
                ),
                SizedBox(height: 10,),
                Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height:MediaQuery.of(context).size.height/16,
                    alignment:Alignment.center,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [boxshadow()]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,//to remove underline under text
                            hintText: "Enter Mobile Number",
                            labelText: null,
                            hintStyle: TextStyle(color:Color(0xFF4CB151), fontSize: 15)
                        ),
                      ),
                    )
                ),
                SizedBox(height: MediaQuery.of(context).size.height/30,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: apptext(text: "Enter OTP",color:Color(0xFF4CB151),size: 15,),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(flex:16,child: Text("")),
                    Expanded(
                        flex:30,
                        child:dualcontainer(text: "Send OTP", textcolor: Colors.white, boxcolor: Color(0xFF4CB151),heightsize: 16,shadow: true,)
                    ),
                    Expanded(flex:4,child:Text("")),
                    Expanded(
                      flex:34,
                      child:Container(

                          height:MediaQuery.of(context).size.height/16,
                          alignment:Alignment.center,
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [boxshadow()]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,//to remove underline under text
                                  hintText: "Enter OTP",
                                  labelText: null,
                                  hintStyle: TextStyle(color:Color(0xFF4CB151), fontSize: 15)
                              ),
                            ),
                          )
                      ),
                    ),
                    Expanded(flex:16,child:Text("")),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/20,),
                Row(
                  children: [
                    Expanded(flex:16,child: Text("")),
                    Expanded(
                        flex:68,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.pushNamed(context,MyRoutes.homeroute);
                            });
                          },
                            child: dualcontainer(text: "Login", textcolor: Colors.white, boxcolor: Color(0xFF4CB151),shadow: true,heightsize: 16,)
                        ),
                    ),
                    Expanded(flex:16,child: Text("")),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        change=false;
                      });
                    },
                    child: RichText(
                      text: TextSpan(
                          text: "Dont have an account?",
                          style: TextStyle(
                              color: Color(0xFF4CB151),
                              fontSize: 15
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: " Register",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            TextSpan(),//can have as many as u want
                          ]
                      ),
                    ),
                  ),
                ),
              ],
            )
                :Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                    alignment:Alignment.centerLeft,
                    child: apptext(text: "Name",color: Color(0xFF4CB151),size:15,),
                ),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  height:MediaQuery.of(context).size.height/16,
                  alignment:Alignment.center,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [boxshadow()]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,//to remove underline under text
                        hintText: "Enter Username",
                        labelText: null,
                          hintStyle: TextStyle(color:Color(0xFF4CB151), fontSize: 15)
                      ),
                    ),
                  )
                ),
                SizedBox(height: MediaQuery.of(context).size.height/45,),
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  alignment:Alignment.centerLeft,
                  child: apptext(text: "Mobile Number",color: Color(0xFF4CB151),size:15,),
                ),
                SizedBox(height: 10,),
                Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height:MediaQuery.of(context).size.height/16,
                    alignment:Alignment.center,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [boxshadow()]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,//to remove underline under text
                          hintText: "Enter Mobile Number",
                          labelText: null,
                          hintStyle: TextStyle(color:Color(0xFF4CB151), fontSize: 15)
                        ),
                      ),
                    )
                ),
                SizedBox(height: MediaQuery.of(context).size.height/30,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: apptext(text: "Enter OTP",color:Color(0xFF4CB151),size: 15,),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(flex:16,child: Text("")),
                    Expanded(
                        flex:30,
                        child:dualcontainer(text: "Send OTP", textcolor: Colors.white, boxcolor: Color(0xFF4CB151),heightsize: 16,shadow: true,)
                    ),
                    Expanded(flex:4,child:Text("")),
                    Expanded(
                        flex:34,
                        child:Container(

                            height:MediaQuery.of(context).size.height/16,
                            alignment:Alignment.center,
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [boxshadow()]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,//to remove underline under text
                                    hintText: "Enter OTP",
                                    labelText: null,
                                    hintStyle: TextStyle(color:Color(0xFF4CB151), fontSize: 15)
                                ),
                              ),
                            )
                        ),
                    ),
                    Expanded(flex:16,child:Text("")),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/20,),
                Row(
                  children: [
                    Expanded(flex:16,child: Text("")),
                    Expanded(
                        flex:68,
                        child: dualcontainer(text: "Register", textcolor: Colors.white, boxcolor: Color(0xFF4CB151),shadow: true,heightsize: 16,)
                    ),
                    Expanded(flex:16,child: Text("")),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        change=true;
                      });
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                          color: Color(0xFF4CB151),
                          fontSize: 15
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                           text: " Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          TextSpan(),//can have as many as u want
                        ]
                      ),
                    ),
                  ),
                ),

                //apptext(text: "Already have an account?",color:Color(0xFF4CB151),size: 15,)
                //apptext(text: "LOGIN",color: Colors.black,bold: true,size: 15,)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class dualcontainer extends StatefulWidget {
  dualcontainer({
    Key? key,
    this.widthsize=3,
    required this.text,
    required this.textcolor,
    this.shadow=false,
    required this.boxcolor,
    this.heightsize=16,
  }) : super(key: key);
double widthsize;
String text;
Color textcolor;
bool shadow;
Color boxcolor;
double heightsize;
  @override
  State<dualcontainer> createState() => _dualcontainerState();
}

class _dualcontainerState extends State<dualcontainer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/widget.heightsize,
      width: MediaQuery.of(context).size.width/widget.widthsize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.boxcolor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          widget.shadow?
          boxshadow():BoxShadow()
        ],
        border: null,
      ),
      child: apptext(text: widget.text,color: widget.textcolor,bold: true,),
    );
  }
}
