import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'central_screen.dart';
import 'argentin_screen.dart';
import 'self_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Page d'accueil"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context)
                .pushReplacementNamed(LoginScreen.routeName),
          )),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.lightGreenAccent,
              Colors.blue,
            ])),
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 360,
                width: 600,
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 40,
                        ),
                        RaisedButton(
                          child: Text(
                            'Centrale',
                            style: new TextStyle(fontSize: 40.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CentralScreen()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        RaisedButton(
                          child: Text('Self',
                              style: new TextStyle(fontSize: 40.0)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelfScreen()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        RaisedButton(
                          child: Text('Argentin',
                              style: new TextStyle(fontSize: 40.0)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArgentinScreen()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
