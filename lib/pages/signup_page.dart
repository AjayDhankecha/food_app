import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import '../widget/app_widget.dart';
import 'login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: Container(
          child: Stack(
            children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 2.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.orange, Colors.deepOrangeAccent])),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery
                        .of(context)
                        .size
                        .height / 3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 2,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Text(''),
              ),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: Column(
                    children: [
                      Center(
                          child: Image.asset(
                            'images/logo.png',
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 1.5,
                          )),
                      SizedBox(
                        height: 45,
                      ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height / 1.55,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins'),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                TextFormField(
                                    controller: nameController,
                                    validator: (value) {
                                      if (value == null || value == '') {
                                        return 'Enter Name';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Name',
                                        prefixIcon: Icon(Icons.person_2_outlined),
                                        contentPadding: EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 20,
                                            right: 20),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.black)),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        ))),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                    controller: emailController,
                                    validator: (value) {
                                      if (value == null || value == '') {
                                        return 'Enter Email';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Email',
                                        prefixIcon: Icon(Icons.email_outlined),
                                        contentPadding: EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 20,
                                            right: 20),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.black)),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        ))),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                    controller: passwordController,
                                    obscureText: true,
                                    validator: (value) {
                                      if (value == null || value == '') {
                                        return 'Enter Password';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Password',
                                        prefixIcon: Icon(Icons.password),
                                        contentPadding: EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 20,
                                            right: 20),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.black)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(5)))),
                                SizedBox(
                                  height: 50,
                                ),
                                InkWell(
                                  onTap: () {
                                    if (_formkey.currentState!.validate()) {
                                      _auth.createUserWithEmailAndPassword(
                                          email: emailController.text.toString(),
                                          password: passwordController.text.toString());
                                    }
                                  },
                                  child: Material(
                                    elevation: 5.0,
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 8),
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Colors.orange,
                                                Colors.deepOrangeAccent
                                              ])),
                                      child: Center(
                                        child: Text(
                                          'SIGN UP',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: AppWidget.semiBoldText(),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Poppins'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
