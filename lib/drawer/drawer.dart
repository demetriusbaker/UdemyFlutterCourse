import 'package:flutter/material.dart';
import 'package:hello_world/drawer/anotherPage.dart';

main() => runApp(MaterialApp(
      home: App(),
    ));

class App extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<App> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Dietrich Alex"),
              accountEmail: Text("tcodmos@gmail.com"),
              decoration: BoxDecoration(color: Colors.greenAccent),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("DA"),
              ),
            ),
            ListTile(
              title: const Text("Page 1"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnotherPage(text: "Page 1"))),
            ),
            ListTile(
              title: const Text("Page 2"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnotherPage(text: "Page 2"))),
            ),
            ListTile(
              title: const Text("Page 3"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnotherPage(text: "Page 3"))),
            ),
            ListTile(
              title: const Text("Page 4"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnotherPage(text: "Page 4"))),
            ),
            ListTile(
              title: const Text("Page 5"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnotherPage(text: "Page 5"))),
            ),
            ListTile(
              title: const Text("Snack bar"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnotherPage(text: "Snack bar"))),
            ),
            ListTile(
              title: const Text("Alert dialog"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnotherPage(text: "Alert dialog"))),
            ),
            ListTile(
              title: const Text("Simple dialog"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnotherPage(text: "Simple dialog"))),
            ),
          ],
        ),
      ),
    );
  }
}
