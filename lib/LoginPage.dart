import 'package:flutter/material.dart';
// import 'package:Register.dart';
import 'Register.dart';
import 'Home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        var size = MediaQuery.of(context).size;
        var h = size.height;
        var w = size.width;
        bool pass = true;
        void toggle() {
          setState(() {
            pass = !pass;
          });
        }

        return Scaffold(
          body: Container(
            alignment: Alignment.topCenter,
            height: h * 1,
            width: w * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/ak.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: h * 0.2),
              // alignment: Alignment.center,
              height: h * 0.73,
              width: w * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(w * 0.05)),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.075),
                    ),
                    Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                            left: w * 0.04, top: h * 0.02, bottom: h * 0.02),
                        child: Text(
                          "Email",
                          style: TextStyle(fontSize: w * 0.045),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(w * 0.05),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(w * 0.04),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),

                          filled: true,
                          // fillColor: Colors.black,
                          labelText: "Enter your Email ID",
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                            left: w * 0.04, top: h * 0.02, bottom: h * 0.02),
                        child: Text(
                          "Password",
                          style: TextStyle(fontSize: w * 0.045),
                        )),
                    Container(
                        margin:
                        EdgeInsets.only(left: w * 0.04, right: w * 0.04),
                        child: TextFormField(
                          obscureText: pass,
                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(w * 0.05),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(w * 0.02),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            suffixIcon: IconButton(
                              onPressed: toggle,
                              icon: Icon(pass
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            filled: true,
                            // fillColor: Colors.black,
                            labelText: "Enter your Password",

                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: h * 0.03, left: w * 0.4, bottom: h * 0.02),
                      child: InkWell(
                        onTap: () => {},
                        child: Text("Forget Password ?",
                            style: TextStyle(
                                color: Colors.blue, fontSize: w * 0.04)),
                      ),
                      decoration: BoxDecoration(),
                    ),
                    Container(
                        width: w * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w * 0.2)),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            child: Text("Log in"))),
                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //
                    //     });
                    //   },
                    //   child: Container(
                    //     width: w * 0.73,
                    //     height: h * 0.05,
                    //     decoration: BoxDecoration(boxShadow: BoxShadow(offset: Offset(1, 0)),
                    //         color: Colors.deepPurple,
                    //         borderRadius: BorderRadius.circular(w * 0.02)),
                    //     child: Text("Log in",
                    //         style: TextStyle(
                    //             fontSize: w * 0.060, color: Colors.white),
                    //         textAlign: TextAlign.center),
                    //   ),
                    // )
                    Text(
                      "Continue as guest",
                      style: TextStyle(fontSize: w * 0.045),
                    ),
                    Row(
                      children: [
                        Container(
                          margin:
                          EdgeInsets.only(left: w * 0.09, top: h * 0.02),
                          height: h * 0.003,
                          width: w * 0.25,
                          color: Colors.black,
                        ),
                        Container(
                            margin:
                            EdgeInsets.only(top: h * 0.01, left: w * 0.04),
                            child: Text(
                              "OR",
                              style: TextStyle(
                                  fontSize: h * 0.02,
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                          margin:
                          EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                          height: h * 0.003,
                          width: w * 0.25,
                          color: Colors.black,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            height: h * 0.07,
                            width: w * 0.3,
                            margin:
                            EdgeInsets.only(left: w * 0.06, top: h * 0.06),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(w * 0.05),
                                image: DecorationImage(
                                    image: AssetImage('assets/google.png')))),
                        Container(
                            height: h * 0.07,
                            width: w * 0.3,
                            margin:
                            EdgeInsets.only(left: w * 0.06, top: h * 0.06),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(w * 0.05),
                                image: DecorationImage(
                                    alignment: Alignment.center,
                                    image: AssetImage('assets/fb.png'),
                                    fit: BoxFit.scaleDown))),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin:
                            EdgeInsets.only(top: h * 0.04, left: w * 0.12),
                            child: Text('Doesnt have an account?')),
                        Container(
                          margin:
                          EdgeInsets.only(top: h * 0.04, left: w * 0.009),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
