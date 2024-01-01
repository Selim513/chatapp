
// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:chatapp/Loginscreen.dart';
import 'package:flutter/material.dart';

class SignUpscreen extends StatefulWidget {
  SignUpscreen({super.key});

  @override
  State<SignUpscreen> createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpscreen> {
  var formKey = GlobalKey<FormState>();
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage("assets/chatapp2.png"),
                  ),
                  const Text(
                    "Messenger",
                    style: TextStyle(
                        color: Color(0xff034ea2),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  const Text("Sign up to continue",
                      style: TextStyle(
                          color: Color(0xff034ea2),
                          fontSize: 40,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 50),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Name";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                        ),
                        label: const Text(
                          "Name",
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20)),
                        errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Email Address";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.blueAccent,
                        ),
                        label: const Text(
                          "Email Address",
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20)),
                        errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your password";
                      }
                      return null;
                    },
                    obscureText: active,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              active = !active;
                            });
                          },
                          icon: Icon(
                            (active) ? Icons.visibility_off : Icons.visibility,
                            color: Colors.blue,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.blueAccent,
                        ),
                        label: const Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20)),
                        errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(height: 40),
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
                          }
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Do you have an Account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ));
                          },
                          child: const Text(
                            "Log in",
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
