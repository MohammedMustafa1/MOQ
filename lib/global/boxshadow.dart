import 'package:flutter/material.dart';
BoxShadow boxshadow(){
  return BoxShadow(
    color: Colors.black.withOpacity(0.1),
    spreadRadius: 4,//size of shadow
    blurRadius: 8,
    offset: Offset(0,0),//change position of shadow
  );
}


