import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(
    home: App(),
  ));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Application();
}

class Application extends State<App> {
  var list = [];

  @override
  void initState() {
    // TODO: implement initState
    for (int i = 0; i < 50; i++) {
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (BuildContext ctx, int i) {
            return const Card(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(20.0),
              ),
            );
          }),
    );
  }
}
