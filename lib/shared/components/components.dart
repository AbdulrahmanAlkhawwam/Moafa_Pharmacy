import 'package:flutter/cupertino.dart';

// you should use stack with this widget
Widget mainDesignV () => Column (
  children: [
    Row(
      children: [
        upDesign(),
        Expanded(child: Container()),
      ],
    ),
    Expanded(child: Container()),
    Row(
      children: [
        Expanded(child: Container()),
        downDesign(),
       ],
    )
  ],
);
Widget mainDesignH () => Row (
  children: [
    Column(
      children: [
        upDesign(),
        Expanded(child: Container()),
      ],
    ),
    Expanded(child: Container()),
    Column(
      children: [
        Expanded(child: Container()),
        downDesign(),
      ],
    )
  ],
);
Widget upDesign ()=> Stack(
  alignment: Alignment.topLeft,
  children: [
    Image.asset("images/design/topGreen.png"),
    Image.asset("images/design/topYellow.png"),
  ],
);
Widget downDesign ()=> Stack(
  alignment: Alignment.bottomRight,
  children: [
    Image.asset("images/design/bottomGreen.png"),
    Image.asset("images/design/bottomYellow.png"),
  ],
);