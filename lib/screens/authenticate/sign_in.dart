import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:hewa_tell_air/screens/authenticate/forgot_pw_page.dart';
import 'package:hewa_tell_air/services/auth.dart';
import 'package:hewa_tell_air/shared/constants.dart';
import 'package:hewa_tell_air/shared/loading.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  const SignIn({super.key, required this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return loading
        ? const Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 2, 55, 60),
              elevation: 0.0,
              title: const Text('Sign in to Hewa Tell'),
              actions: <Widget>[
                TextButton.icon(
                    onPressed: () async {
                      widget.toggleView();
                    },
                    icon: const Icon(Icons.person_2),
                    label: const Text('Register'))
              ],
            ),
            body: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 50.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 20.0),
                      // Hello Again
                      Text(
                        'Hello Again!',
                        style: GoogleFonts.bebasNeue(fontSize: 52),
                      ),

                      const SizedBox(height: 20.0),
                      TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: 'Email'),
                        validator: (val) =>
                            val!.isEmpty ? 'Enter an email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: 'Password'),
                        obscureText: true,
                        validator: (val) => val!.length < 6
                            ? 'Enter a password 6+ chars long'
                            : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                      // Padding(
                      // padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      // child: Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      //children: [
                      //GestureDetector(
                      // onTap: () {
                      // Navigator.push(
                      // context,
                      //MaterialPageRoute(
                      //  builder: (context) {
                      //  return const ForgotPasswordPage();
                      // },
                      // ),
                      // );
                      //},
                      //child: const Text(
                      //'Forgot Password?',
                      //style: TextStyle(
                      // color: Colors.red,
                      //fontWeight: FontWeight.bold,
                      //),
                      // ),
                      // ),
                      //],
                      //),
                      // ),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            setState(() => loading = true);
                            dynamic user = await _auth
                                .signInWithEmailAndPassword(email, password);

                            if (user == null) {
                              setState(() {
                                error =
                                    'could not sign in with those credentials';
                                loading = false;
                              });
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 2, 55, 60),
                          foregroundColor: Colors.black12,
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Text(
                        error,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                )),
          );
  }
}
