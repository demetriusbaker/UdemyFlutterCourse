import 'package:flutter/material.dart';

main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Application();
}

class Application extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            const Card(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(200),
              ),
            ),
            const Card(
              color: Colors.orange,
              child: Padding(
                padding: EdgeInsets.all(180),
              ),
            ),
            const Card(
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.all(160),
              ),
            ),
            const Card(
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(140),
              ),
            ),
            const Card(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(120),
              ),
            ),
            const Card(
              color: Colors.indigo,
              child: Padding(
                padding: EdgeInsets.all(100),
              ),
            ),
            const Card(
              color: Colors.purple,
              child: Padding(
                padding: EdgeInsets.all(80),
              ),
            ),
            getAnotherCard()
          ],
        ),
      ),
    );
  }
}

// custom method widget
Widget getAnotherCard() {
  return const Card(
    color: Colors.black,
    child: Padding(
      padding: EdgeInsets.all(40),
    ),
  );
}