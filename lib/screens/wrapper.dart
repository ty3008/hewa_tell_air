import 'package:flutter/material.dart';
import 'package:hewa_tell_air/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:hewa_tell_air/screens/home/home.dart';
import 'package:hewa_tell_air/models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final person = Provider.of<Users?>(context);

    if (person == null) {
      return const Authenticate();
    } else {
      return Home();
    }
    // return either Home or Authenticate widget
    // ignore: prefer_const_constructors
  }
}
