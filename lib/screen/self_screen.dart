import 'dart:async';

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:intl/intl.dart';

class SelfScreen extends StatefulWidget {
  static const routeName = '/self';
  @override
  _SelfScreenState createState() => _SelfScreenState();
}

class _SelfScreenState extends State<SelfScreen> {
  @override
  String _timeString;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer timer) => _getTime());
  }

  void _getTime() {
    final String formattedDateTime =
        DateFormat('yyyy-MM-dd  kk:mm:ss').format(DateTime.now()).toString();
    setState(() {
      _timeString = formattedDateTime;
      print(_timeString);
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Restaurant Self'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.limeAccent,
              Colors.redAccent,
            ])),
          ),
          Text(
            _timeString.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 400,
                width: 400,
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Heure d'ouverture: ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Heure de fermeture: ",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Repas: ",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Dîner: ",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 40,
                        ),
                        RaisedButton(
                          child: Text(
                            'OK',
                            style: new TextStyle(fontSize: 30.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: 62,
                        ),
                        const Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Bon appétit!!! ',
                                  style:
                                      TextStyle(fontStyle: FontStyle.italic)),
                            ],
                          ),
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
