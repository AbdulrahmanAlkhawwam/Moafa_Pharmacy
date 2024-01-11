import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moafa/modules/onboarding/onboarding.dart';
import 'package:moafa/route.dart';
import 'package:moafa/shared/Bloc_observer.dart';

import 'modules/Login/Login.dart';

void main() {
  Bloc.observer=MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}