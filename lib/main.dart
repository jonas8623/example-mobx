import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_mobile/my_store.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final myStore = MyStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Example MobX"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "Name"),
                onChanged: myStore.changeName,
              ),
              const SizedBox(height: 10.0,),
              TextField(
                decoration: const InputDecoration(labelText: "Last Name"),
                onChanged: myStore.changeLastName,
              ),
              const SizedBox(height: 20.0,),
              Observer(
                builder: (context) {
                  return Text(
                    myStore.fullName,
                    style: const TextStyle(fontSize: 20.0),);
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
