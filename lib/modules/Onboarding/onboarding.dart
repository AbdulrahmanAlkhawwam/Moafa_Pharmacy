import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moafa/shared/components/components.dart';

class Onboarding extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFFFFF"),
      body : Stack(
          children: [
            Center(
              child: Container(
                  width: double.infinity,
                  child: Image.asset("images/design/whiteLogo.png",width: double.infinity,)
              ),
            ),
            mainDesignV(),
            SafeArea(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Center(
                        child: Text(
                          "Moafa",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: HexColor("#19473A"),
                          ),
                        )
                    ),
                  ),
                  Expanded(flex: 2, child: Container(),),
                  Expanded  (
                    flex: 3,
                    child: Center(
                        child: Text(
                          "is the best portable pharmacy , which\ndelivery your medicine in lase than 30\nminute ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: HexColor("#19473A"),
                          ),
                        )
                    ),
                  ),
                ],
              ),
            )
          ]
      ),
    );
  }
}
