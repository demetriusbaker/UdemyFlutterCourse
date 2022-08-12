import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: App(),
  ));
}

class App extends StatefulWidget {
  @override
  _App createState() => _App();
}

class _App extends State<App> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  SimpleDialog? _simpleDialog;

  void setKey() {
    _key.currentState
        ?.showSnackBar(const SnackBar(content: Text("Snack bar message!")));
  }

  void getDialog() {
    showDialog(
        context: context,
        builder: (context) => Center(
              child: AlertDialog(
                title: const Text("Warning"),
                content: const Text("Thank you for your attention!!"),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        setCustomDialog();
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
            ));
  }

  void setCustomDialog() {
    _simpleDialog = SimpleDialog(
      title: Text("Choose from one"),
      children: [
        SimpleDialogOption(
          child: Text("Yes"),
          onPressed: () {
            print('Yes');
          },
        ),
        SimpleDialogOption(
          child: Text("No"),
          onPressed: () {
            print('No');
          },
        ),
        SimpleDialogOption(
          child: Text("Close"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    showDialog(
        context: context,
        builder: (context) => Center(
              child: _simpleDialog,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getDialog();
          },
          onLongPress: () {
            setKey();
          },
          child: const Text("Click or long click"),
        ),
      ),
    );
  }
}
