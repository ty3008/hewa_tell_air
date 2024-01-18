import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hewa_tell_air/models/user.dart';
import 'package:hewa_tell_air/screens/wrapper.dart';
import 'firebase_options.dart';
import 'package:hewa_tell_air/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return StreamProvider<Users?>.value(
      value: AuthService().person,
      initialData: null,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // ignore: prefer_const_constructors
        home: Wrapper(),
      ),
    );
  }
}
