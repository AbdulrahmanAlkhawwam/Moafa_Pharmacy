import 'package:moafa/shared/components/components.dart';
import 'package:moafa/modules/Login/Login.dart';
import 'package:flutter/material.dart';
import '../../shared/components/constants.dart';
import '/shared/styles/colors.dart';

class Onboarding extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // choose light / dark mode
      backgroundColor: white,
      body : Stack(
          children: [
            Center(
              child: Image.asset(
                // choose light / dark mode
                Logos[0],
               // width: double.infinity,
              ),
            ),
            mainDesignV(),
            Column(
              children: [
                Expanded(
                  child: Center(
                      child: Text(
                        Onboard[0][0],
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: deepGreen,
                        ),
                      )
                  ),
                ),
                emptySpace(),
                Expanded  (
                  child: Padding(
                    padding: const EdgeInsets.all(75.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            Onboard[1][0],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: deepGreen,
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: ()=> navigateAndFinish(context,Login()),
                            child: Text(
                              "Click me to go to Moafa",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.red,
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }
}
