import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message_of_quran/global/globaltext.dart';
import 'package:message_of_quran/utility/routes.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/4,
            decoration: BoxDecoration(
                color: Color(0xFF4CB151).withOpacity(0.15),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("images/Logo.png"),
                Positioned(bottom:10,child: apptext(text: "MESSAGE OF QURAN",bold: true,color: Color(0xFF4CB151),size: 25,)),
                Positioned(
                  top:25,
                  right:25,
                  child: GestureDetector(
                      onTap:(){setState(() {
                        Navigator.pop(context);
                      });},
                      child: Icon(Icons.close,color: Color(0xFF4CB151),size: 40,)
                  )
                  ,),
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.53846154,
              child: ListView(
                shrinkWrap: true,
                scrollDirection:Axis.vertical,
                children: [
                 InkWell(
                     onTap: (){
                       setState(() {
                         Navigator.pushNamed(context,MyRoutes.profileroute);
                       });
                     },
                     child: menuRow(image: "images/menu/profile.png",text: "Profile",)
                 ),
                  menuRow(image: "images/menu/addpost.png",text: "Add Post",),
                  menuRow(image: "images/menu/viewpost.png",text: "View Post",),
                  menuRow(image: "images/menu/translate.png",text: "Translate",),
                  menuRow(image: "images/menu/gotoverse.png",text: "gotoverse",),
                  menuRow(image: "images/menu/help.png",text: "Help & Support",),
                  menuRow(image: "images/menu/settings.png",text: "Settings",),
                  menuRow(image: "images/menu/about.png",text: "About",),
                  menuRow(image: "images/menu/shareapp.png",text: "Share App",),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.pushNamed(context,MyRoutes.loginroute);
                      });
                    },
                    child: menuRow(image: "images/menu/logout.png",text: "Logout",),
                  ),
                ],
              ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/10,
            decoration: BoxDecoration(
              color: Color(0xFF4CB151).withOpacity(0.15),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
            ),
            child: Row(
              children: [
                Expanded(child: Text("")),
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset("images/menu/facebook.png",),
                    )
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset("images/menu/twitter.png",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset("images/menu/linkdinbg.png",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset("images/menu/youtubebg.png",),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset("images/menu/instagram.png",),
                )),
                Expanded(child: Text("")),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class menuRow extends StatelessWidget {
  menuRow({
    Key? key,
    required this.text,
    required this.image
  }) : super(key: key);
String text;
String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex:25,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                alignment:Alignment.centerRight ,
                height: MediaQuery.of(context).size.height/15,
                child: Image.asset(image,color: Color(0xFF253053),scale: 1.7)
              ),
            )
        ),
        Expanded(
            flex:75,
            child: Container(
              alignment: Alignment.centerLeft,
              child: apptext(text: text,color:Color(0xFF253053).withOpacity(0.7),bold: true,size: 20,),
            )
        ),
      ],
    );
  }
}
