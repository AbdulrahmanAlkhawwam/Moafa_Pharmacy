import 'package:moafa/shared/components/components.dart';
import 'package:moafa/modules/Login/Login.dart';
import 'package:flutter/material.dart';
import '../../shared/components/constants.dart';
import '/shared/styles/colors.dart';

class Onboarding extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body : Stack(
          children: [
            Center(
              child: Image.asset(
                Logos[0],
                width: double.infinity,
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
                          Onboard[0],
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: deepGreen,
                          ),
                        )
                    ),
                  ),
                  Expanded(flex: 2, child: Container()),
                  Expanded  (
                    flex: 3,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(75.0),
                          child: Container(
                            child: Text(
                              Onboard[1],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: deepGreen,
                              ),
                            ),
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: MaterialButton(
                splashColor: noColor,
                highlightColor: noColor,
                onPressed: (){
                  navigateAndFinish(context,Login());
                },
              ),
            ),
          ]
      ),
    );
  }
}
