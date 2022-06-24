import 'package:flutter/material.dart';
import 'pages.dart';
import 'api_input.dart';
import 'variables.dart';

void main() {
  getJobs().then((value) {
    Text(value);
    var tmp_list = value.replaceAll('"', '').split('|');
    job_list = [];
    for (var i = 0; i < tmp_list.length; i++) {
      var tmp = tmp_list[i].split('&');
      tmp.add("#");
      job_list.add(tmp);
    }
    var tmp2 = ["*", "*"];
    job_list.add(tmp2);
    output = value;
    print('OK, let us try this: $value');
  });

  runApp(MaterialApp(
    home: DreamDeferredApp(),
  ));
}
