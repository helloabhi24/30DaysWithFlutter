import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
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
                "Welcome",
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
                    ElevatedButton(
                      style: TextButton.styleFrom(minimumSize: Size(120, 30)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homePage);
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
