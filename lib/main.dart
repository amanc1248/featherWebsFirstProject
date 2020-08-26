import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myphrase());

class Myphrase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF261D5E),
          body: MyApp(),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "PUBLISH TO THE WEB",
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Your Website",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w900, color: Colors.white),
          ),
          Text(
            "deserves",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Color(0xFFE8E5F3)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "You can customize your websites in \nminutes with our no fuss builder",
            style: TextStyle(color: Color(0xFF817BAB)),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: Image.asset("images/bird.jpg")),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 50,
            child: FlatButton(
              color: Colors.blue,
              onPressed: () {},
              child: Container(
                child: Text(
                  "CONFIRM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Expanded(
              flex: 1,
              child: RichText(
                text: TextSpan(
                  text: "I agree to the",
                  style: TextStyle(
                    color: Color(0xFF817BAB),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: " terms of service",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: " and \n",
                      style: TextStyle(
                        color: Color(0xFF817BAB),
                      ),
                    ),
                    TextSpan(
                        text: "                 Privacy Policy",
                        style: TextStyle(
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
