import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<String> getData() async {
  final url = Uri.parse('https://AlexVanWinkel.pythonanywhere.com/times');
  http.Response response = await http.get(
    url,
    headers: {
      HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
    },
  );
  return response.body;
}

class TechTimes extends StatelessWidget {
  const TechTimes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: (Center(
        child: ElevatedButton(
          onPressed: () {
            getData();
          },
          child: Text('Click me'),
        ),
      ))),
    );
  }
}

class Info {
  String line1 = "";
  String line2 = "";

  Info(
    this.line1,
    this.line2,
  );
}
