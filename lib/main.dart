import 'package:first_project/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The best app in the WORLD',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          scaffoldBackgroundColor: Color.fromARGB(255, 42, 41, 41),
          useMaterial3: true,
          textTheme: const TextTheme(
            bodyMedium: 
                  TextStyle(
                    color: Colors.white,
                    fontSize: 20
                   ),
            bodySmall: TextStyle(
              color: Colors.white,
              fontSize: 15
            )
          )),
      home: const MyHomePage(title: 'First Project'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: _incrementCounter,
            )
          ]),
      body: Center(
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Нажали:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                '$_counter раз',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewPage()));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.abc),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
