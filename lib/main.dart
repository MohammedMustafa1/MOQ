import 'package:flutter/material.dart';
import 'package:message_of_quran/utility/routes.dart';

import 'mainpages/Home.dart';
import 'mainpages/Menu.dart';
import 'mainpages/login.dart';
import 'mainpages/profile.dart';

void main(){
  runApp(home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.homeroute:(context)=>Home(),
        MyRoutes.menuroute:(context)=>Menu(),
        MyRoutes.loginroute:(context)=>LoginPage(),
        MyRoutes.profileroute:(context)=>Profile(),
      },
    );
  }
}
