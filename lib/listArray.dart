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
  List<int> items = [];

  @override
  void initState() {
    // TODO: implement initState
    for (int i = 2; i <= 52; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List widget"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("Item number: ${items[index]}"),
                trailing: const Icon(Icons.arrow_back_ios_rounded),
              );
            }),
      ),
    );
  }
}
