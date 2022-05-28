import 'package:flutter/material.dart';

void main() => runApp(DreamDeferredApp());

class DreamDeferredApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text('Dream Deferred App'), 
                        centerTitle: true,
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                        ),
        body: ListView(
          padding: const EdgeInsets.all(10.0),
          children: [
            Row( mainAxisAlignment: MainAxisAlignment.center , children: 
              [Image.asset('assets/img/logo.png', height: 200, width: 200, fit: BoxFit.fitWidth, )],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {}, child: Image.asset('assets/img/dd_button_about.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
                Image.asset('assets/img/dd_button_house.png', height: 100, width: 100, fit: BoxFit.fitWidth, ),
                Image.asset('assets/img/dd_button_tech.png', height: 100, width: 100, fit: BoxFit.fitWidth, ),
              ],
              
            ),
            const SizedBox(height: 10),

             Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                Image.asset('assets/img/dd_button_resources.png', height: 100, width: 100, fit: BoxFit.fitWidth, ),
                Image.asset('assets/img/dd_button_job.png', height: 100, width: 100, fit: BoxFit.fitWidth, ),
                Image.asset('assets/img/dd_button_stories.png', height: 100, width: 100, fit: BoxFit.fitWidth, ),
              ],
              
            ),
            const SizedBox(height: 10),
             Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                Image.asset('assets/img/dd_button_contact.png', height: 100, width: 100, fit: BoxFit.fitWidth, ),
              ],
              
            ),
            const SizedBox(height: 50),
            Row( mainAxisAlignment: MainAxisAlignment.center , children: 
              const [
                Text("Version 1.08"),
              ],
              
            ),
          ]
          
        )
    ),);
  }
}