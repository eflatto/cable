import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  var _isLogin = false;
  var _enteredUsername = '';
  var _enteredPassword = '';
  final _form = GlobalKey<FormState>();

  void _authenticate(bool isLogin) {
    String route;

    if (isLogin) {
      route = 'login route here';
    } else {
      route = 'register route here';
    }

    final url = Uri.http('Main Spring domain here', route);
    http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(
            {'username': _enteredUsername, 'password': _enteredPassword}));
  }

  void _submit() {
    final isValid = _form.currentState!.validate();

    if (!isValid) {
      return;
    }

    _form.currentState!.save();

    if (_isLogin) {
      _authenticate(_isLogin);
    } else {
      _authenticate(_isLogin);
    }
  }

  bool isValidPassword(String password) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

    if (!regex.hasMatch(password)) {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //Add Margins
            child: Image.asset(
                'assets/images/cable_logo.png'), //Make transparent later
          ),
          Card(
            //add margin
            child: Form(
                //add padding
                key: _form,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Username'),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter a valid username';
                        }

                        return null;
                      },
                      onSaved: (value) {
                        _enteredUsername = value!;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.trim().length < 8) {
                          return 'Password must be atleast 8 characters long';
                        }
                        if (!isValidPassword(value)) {
                          return 'Password must contain a minimum of 1 lowercase letter, 1 uppercase letter, 1 number and 1 special character ( ! @ # \$ & * ~ )';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _enteredPassword = value!;
                      },
                      textInputAction: TextInputAction.done,
                    ),
                    //need spacer here //might need seperate column
                    ElevatedButton(
                        onPressed: _submit,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey.shade200),
                        child: Text(_isLogin ? 'Login' : 'Signup')),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _isLogin = !_isLogin;
                          });
                        },
                        child: Text(_isLogin
                            ? 'Create an account'
                            : 'I already have an account'))
                  ],
                )),
          )
        ],
      )),
    );
  }
}
