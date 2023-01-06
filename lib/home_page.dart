import 'package:flutter/material.dart';
import 'package:flutter_studies_1/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                    child: Image.asset('assets/images/no-user-image.png')),
                accountName: Text('Example'),
                accountEmail: Text('aa@aa.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('home page'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              subtitle: Text('logout'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ]),
        ),
        appBar: AppBar(
          title: Text('Test'),
          actions: [CustomSwitch()],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Counter: $counter'),
              CustomSwitch(),
              Padding(padding: const EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(width: 50, height: 50, color: Colors.black),
                  Container(width: 50, height: 50, color: Colors.black),
                  Container(width: 50, height: 50, color: Colors.black)
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ));
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
