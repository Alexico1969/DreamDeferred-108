import 'package:flutter/material.dart';
import 'large_txt.dart';

// --------- HOMEPAGE -----------

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
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => About_page()));
                }, child: Image.asset('assets/img/dd_button_about.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Tech_page()));
                }, child: Image.asset('assets/img/dd_button_tech.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => House_page()));
                }, child: Image.asset('assets/img/dd_button_house.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
            const SizedBox(height: 10),

            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Resources_page()));
                }, child: Image.asset('assets/img/dd_button_resources.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Job_page()));
                }, child: Image.asset('assets/img/dd_button_job.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stories_page()));
                }, child: Image.asset('assets/img/dd_button_stories.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
            const SizedBox(height: 10),
             Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Contact_page()));
                }, child: Image.asset('assets/img/dd_button_contact.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
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


// ----- FOLLOW UP PAGES --------

class About_page extends StatelessWidget {

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
              // ignore: prefer_const_literals_to_create_immutables
              [
                 Text('ABOUT US', textAlign: TextAlign.center, style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              ],
              
            ),
            const SizedBox(height: 15),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              // ignore: prefer_const_literals_to_create_immutables
              [
                Flexible( child: Text(aboutTxt(), textAlign: TextAlign.center, )),
              ],
              
            ),
            const SizedBox(height: 15),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => History_page()));
                }, child: Image.asset('assets/img/dd_button_history.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mission_page()));
                }, child: Image.asset('assets/img/dd_button_mission.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
            const SizedBox(height: 15),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.pop(context);
                }, child: Image.asset('assets/img/dd_button_back.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
              
          ]
          
        )
    ),);
  }

}

class History_page extends StatelessWidget {

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
              // ignore: prefer_const_literals_to_create_immutables
              [
                 Text('OUR HISTORY', textAlign: TextAlign.center, style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              ],
              
            ),
            const SizedBox(height: 15),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              // ignore: prefer_const_literals_to_create_immutables
              [
                Flexible( child: Text(aboutTxt(), textAlign: TextAlign.center,)),
              ],
              
            ),

            const SizedBox(height: 25),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.pop(context);
                }, child: Image.asset('assets/img/dd_button_back.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
              
          ]
          
        )
    ),);
  }

}

class Mission_page extends StatelessWidget {

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
              // ignore: prefer_const_literals_to_create_immutables
              [
                 Text('OUR MISSION', textAlign: TextAlign.center, style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              ],
              
            ),
            const SizedBox(height: 15),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              // ignore: prefer_const_literals_to_create_immutables
              [
                Flexible( child: Text(aboutTxt(), textAlign: TextAlign.center,)),
              ],
              
            ),
            const SizedBox(height: 25),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.pop(context);
                }, child: Image.asset('assets/img/dd_button_back.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
              
          ]
          
        )
    ),);
  }

}

class Tech_page extends StatelessWidget {
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
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              // ignore: prefer_const_literals_to_create_immutables
              [
                const Text('Dream Tech page comes here (under construction)'),
              ],
              
            ),
            const SizedBox(height: 50),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.pop(context);
                }, child: Image.asset('assets/img/dd_button_back.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
              
          ]
          
        )
    ),);
  }

}

class House_page extends StatelessWidget {
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
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              // ignore: prefer_const_literals_to_create_immutables
              [
                const Text('Dream House page comes here (under construction)'),
              ],
              
            ),
            const SizedBox(height: 50),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.pop(context);
                }, child: Image.asset('assets/img/dd_button_back.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
              
          ]
          
        )
    ),);
  }

}

class Resources_page extends StatelessWidget {
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
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              // ignore: prefer_const_literals_to_create_immutables
              [
                const Text('Resources page comes here'),
              ],
              
            ),
            const SizedBox(height: 50),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.pop(context);
                }, child: Image.asset('assets/img/dd_button_back.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
              
          ]
          
        )
    ),);
  }

}

class Job_page extends StatelessWidget {
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
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              // ignore: prefer_const_literals_to_create_immutables
              [
                const Text('Job page comes here (under construction)'),
              ],
              
            ),
            const SizedBox(height: 50),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.pop(context);
                }, child: Image.asset('assets/img/dd_button_back.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
              
          ]
          
        )
    ),);
  }

}

class Stories_page extends StatelessWidget {
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
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              // ignore: prefer_const_literals_to_create_immutables
              [
                const Text('Contact page comes here (under construction)'),
              ],
              
            ),
            const SizedBox(height: 50),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.pop(context);
                }, child: Image.asset('assets/img/dd_button_back.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
              
          ]
          
        )
    ),);
  }

}

class Contact_page extends StatelessWidget {
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
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              // ignore: prefer_const_literals_to_create_immutables
              [
                const Text('Stories page comes here (under construction)'),
              ],
              
            ),
            const SizedBox(height: 50),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: 
              [
                InkWell(onTap: () {
                  Navigator.pop(context);
                }, child: Image.asset('assets/img/dd_button_back.png', height: 100, width: 100, fit: BoxFit.fitWidth, )),
              ],
              
            ),
              
          ]
          
        )
    ),);
  }

}

