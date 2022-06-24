import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'large_txt.dart';
import 'api_input.dart';
import 'variables.dart';

// --------- HOMEPAGE -----------

class DreamDeferredApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/logo.png',
                  height: 200,
                  width: 200,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => About_page()));
                    },
                    child: Image.asset(
                      'assets/img/dd_button_about.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Tech_page()));
                    },
                    child: Image.asset(
                      'assets/img/dd_button_tech.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => House_page()));
                    },
                    child: Image.asset(
                      'assets/img/dd_button_house.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Resources_page()));
                    },
                    child: Image.asset(
                      'assets/img/dd_button_resources.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
                InkWell(
                    onTap: () {
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Job_page()));
                    },
                    child: Image.asset(
                      'assets/img/dd_button_job.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Stories_page()));
                    },
                    child: Image.asset(
                      'assets/img/dd_button_stories.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Contact_page()));
                    },
                    child: Image.asset(
                      'assets/img/dd_button_contact.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Version 1.08"),
              ],
            ),
          ])),
    );
  }
}

// ----- FOLLOW UP PAGES --------

class About_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/logo.png',
                  height: 200,
                  width: 200,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                Text(
                  'ABOUT US',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                Flexible(
                    child: Text(
                  aboutTxt(),
                  textAlign: TextAlign.center,
                )),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => History_page()));
                    },
                    child: Image.asset(
                      'assets/img/dd_button_history.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Mission_page()));
                    },
                    child: Image.asset(
                      'assets/img/dd_button_mission.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/dd_button_back.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
          ])),
    );
  }
}

class History_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/logo.png',
                  height: 200,
                  width: 200,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                Text(
                  'OUR HISTORY',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                Flexible(
                    child: Text(
                  historyTxt(),
                  textAlign: TextAlign.center,
                )),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/dd_button_back.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
          ])),
    );
  }
}

class Mission_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/logo.png',
                  height: 200,
                  width: 200,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                Text(
                  'OUR MISSION',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                Flexible(
                    child: Text(
                  missionTxt(),
                  textAlign: TextAlign.center,
                )),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/dd_button_back.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
          ])),
    );
  }
}

class Tech_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                Text(
                  'DREAM TECH',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                Flexible(
                    child: Text(
                  techTxt(),
                  textAlign: TextAlign.center,
                )),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      LoadingIndicatorDialog().show(context);
                      getData().then((value) {
                        Text(value);
                        output_list = value.replaceAll('"', '').split('|');
                        output = value;
                        print('OK, let us try this: $value');
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Times_page()));
                      });
                      LoadingIndicatorDialog()
                          .dismiss(); // Not sure if we need this here it's already in getData()
                    },
                    child: Image.asset(
                      'assets/img/dd_button_times.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
                InkWell(
                    onTap: () {
                      print('TODO: Link to external page');
                    },
                    child: Image.asset(
                      'assets/img/dd_button_lms.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/dd_button_back.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
          ])),
    );
  }
}

class Times_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                Text(
                  'LESSON TIME TABLE',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: output_list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(output_list[index]),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/dd_button_back.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
          ])),
    );
  }
}

class House_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                const Text('Dream House page comes here (under construction)'),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/dd_button_back.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
          ])),
    );
  }
}

class Resources_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                const Text('Resources page comes here'),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/dd_button_back.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
          ])),
    );
  }
}

class Job_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                Text(
                  'JOB BOARD',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: job_list.length - 1,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(job_list[index][0]),
                  //subtitle: Text(job_list[index][1]),
                  onTap: () => launch(job_list[index][1]),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/dd_button_back.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
          ])),
    );
  }
}

class Stories_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                const Text('Stories page comes here (under construction)'),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/dd_button_back.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
          ])),
    );
  }
}

class Contact_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dream Deferred App'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          body: ListView(padding: const EdgeInsets.all(10.0), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                const Text('Contact page comes here (under construction)'),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/dd_button_back.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    )),
              ],
            ),
          ])),
    );
  }
}
