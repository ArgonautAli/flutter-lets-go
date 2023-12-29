import 'package:flutter/material.dart';

void main() {
  test();
  greetPerson("haider");
  runApp(MyApp());

  print("name");
}

void test() {
  print("hello world");
}

void greetPerson(String name) {
  print("hello $name");
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String name = "haider";
  int age = 27;
  double pi = 3.14;
  bool isMale = true;

  List names = ["mitch", "cam", "lily"];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    void onTap() {
      print("user tapped");
    }

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // backgroundColor: Colors.deepPurple.shade200,
          appBar: AppBar(
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: Text(
              "App Bar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            backgroundColor: Colors.black,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.logout),
                style: ButtonStyle(
                    iconColor: MaterialStatePropertyAll<Color>(Colors.white)),
              )
            ],
          ),
          // body: Center(
          //   child: Container(
          //       // child: Text(
          //       //   "hello",
          //       //   style: TextStyle(color: Colors.white, fontSize: 20),
          //       // ),
          //       child: Icon(
          //         Icons.face,
          //         color: Colors.white,
          //         size: 64,
          //       ),
          //       height: 200,
          //       width: 200,
          //       padding: EdgeInsets.all(25),
          //       decoration: BoxDecoration(
          //           color: Colors.deepPurple,
          //           border: Border.all(),
          //           borderRadius: BorderRadius.circular(25))),
          // )
          // body: ListView(
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   // crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     // 1st box
          //     Container(
          //       height: 350,
          //       color: Colors.deepPurple,
          //     ),
          //     Container(
          //       height: 350,
          //       color: Colors.deepPurple[400],
          //     ),
          //     Container(
          //       height: 350,
          //       color: Colors.deepPurple[300],
          //     )
          //   ],
          // )
          // body: ListView.builder(
          //     itemBuilder: (context, item) =>
          //         ListTile(title: Text(item.toString()))),
          // body: GridView.builder(
          //     itemCount: 64,
          //     gridDelegate:
          //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
          //     itemBuilder: (context, index) => Container(
          //           color: Colors.black,
          //           margin: EdgeInsets.all(2),
          //         ))

          // body: Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     Container(
          //       height: 400,
          //       width: 400,
          //       color: Colors.deepPurple,
          //     ),
          //     Container(
          //       height: 300,
          //       width: 300,
          //       color: Colors.deepPurple[200],
          //     ),
          //     Container(
          //       height: 200,
          //       width: 200,
          //       color: Colors.deepPurple[300],
          //     )
          //   ],
          // )

          body: Center(
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.purple[300],
                child: Center(
                    child: Text(
                  "Tap me!",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          )),
    );
  }
}
