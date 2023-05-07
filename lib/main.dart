import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BGMI Career Result'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrNames = ["BP-PYTHON", "S4-SHIV", "*SHINE*", "Itz_CarryOP"];
  var arrsubTitle = [
    "24 Kills with 3965 damage",
    "9 Kills with 1298 Damage",
    "5 Kills with 303 Damage",
    "1 Kill with 3 Damage"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("$index"),
            title: Text(arrNames[index]),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(arrsubTitle[index]),
            ),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 20,
            thickness: 3,
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
