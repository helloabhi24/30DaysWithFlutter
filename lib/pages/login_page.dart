import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeAnimation = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter UserName',
                        labelText: 'UserName',
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                        onTap: () async {
                          setState(() {
                            changeAnimation = true;
                          });
                          await Future.delayed(
                            Duration(seconds: 1),
                          );
                          Navigator.pushNamed(context, MyRoutes.homePage);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          alignment: Alignment.center,
                          width: changeAnimation ? 50 : 120,
                          height: 50,
                          child: changeAnimation
                              ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: changeAnimation
                                ? BorderRadius.circular(50)
                                : BorderRadius.circular(8),
                          ),
                        ))
                    // ElevatedButton(
                    //   style: TextButton.styleFrom(minimumSize: Size(120, 30)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homePage);
                    //   },
                    //   child: Text("Login"),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
