// ignore_for_file: file_names

import 'package:chatapp/Sign_upscreen.dart';
import 'package:chatapp/chatscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Image.asset("assets/chatapp2.png"),
                  const Text(
                    "Messenger",
                    style: TextStyle(
                        color: Color(0xff034ea2),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                  const Text("Login To Your Account",
                      style: TextStyle(
                          color: Color(0xff034ea2),
                          fontSize: 30,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "You should enter Correct Email";
                          }

                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Colors.blue,
                          ),
                          label: const Text("Email"),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "You Should Enter Your Password";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: active,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                          suffixIcon: IconButton(
                              color: Colors.blue,
                              onPressed: () {
                                setState(() {
                                  active = !active;
                                });
                              },
                              icon: Icon((active)
                                  ? Icons.visibility
                                  : Icons.visibility_off_rounded)),
                          label: const Text("Password"),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Chatscreen(),
                                  ));
                            }
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 25),
                          ))),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Dont Have an Account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpscreen(),
                                ));
                          },
                          child: const Text(
                            "Singup",
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
