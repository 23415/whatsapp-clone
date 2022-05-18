//import 'dart:ffi';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String buttonname = "click";
String buttonname1 = "click";
int currentindex = 0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
 const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Center(
          child: currentindex == 0
              ? Container(
                  color: Colors.red[200],
                  height: double.infinity,
                  width: double.infinity,
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                return const SecondPage();
                              }));
                              setState(() {
                                buttonname = "clicked";
                              });
                            },
                            child: Text(buttonname)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                buttonname1 = "clicked";
                              });
                            },
                            child: Text(buttonname))
                      ],
                    ),
                  ),
                )
              : Image.asset('images/honey-singh--worked-on-a-lot-of-songs-during-lockdown-2020-06-10.jpg'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "like", icon: Icon(Icons.favorite)),
            // BottomNavigationBarItem(label: "setting", icon: Icon(Icons.settings)),
            BottomNavigationBarItem(label: "search", icon: Icon(Icons.search))
          ],
          currentIndex: currentindex,
          onTap: (int index) {
            setState(() {
              currentindex = index;
            });
          },
        ),
      );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
    );
  }
}
