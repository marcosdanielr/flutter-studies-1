import 'package:flutter/material.dart';
import 'package:flutter_studies_1/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class LoginInformations {
  String email = '';
  String password = '';
}

class _LoginPageState extends State<LoginPage> {
  LoginInformations loginInformations = new LoginInformations();

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(height: 25),
              Card(
                  child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 20, bottom: 12),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.green),
                      onChanged: (text) {
                        loginInformations.email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      style: TextStyle(color: Colors.green),
                      onChanged: (text) {
                        loginInformations.password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        if (loginInformations.email == 'aa@aa.com' &&
                            loginInformations.password == '123') {
                          Navigator.of(context).pushReplacementNamed('/home');
                          return;
                        }
                        print("Error");
                      },
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // Container(color: Colors.blue[50]),
      SizedBox(
          height: MediaQuery.of(context).size.height,
          child:
              Image.asset('assets/images/background.jpg', fit: BoxFit.cover)),
      Container(color: Colors.blue.withOpacity(0.7)),
      _body(),
    ]));
  }
}
