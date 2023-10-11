import 'package:flutter/material.dart';

class apptext extends StatelessWidget {
  apptext({Key? key,required this.text,this.color=Colors.black,this.bold=false,this.size=20}) : super(key: key);
  String text;
  Color color;
  bool bold;
  double size;
  @override
  Widget build(BuildContext context) {
    final textscale = MediaQuery.of(context).textScaleFactor;
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: bold?FontWeight.bold:null,
        fontSize: size*textscale,
      ),
    );
  }
}






