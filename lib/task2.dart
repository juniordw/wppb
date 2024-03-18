import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const Task2());
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Task 2'),
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
  int _counterGanjil = 1;
  int _counterGenap = 0;
  String _myNRP = '3122510622';
  int _counter = 0;
  
  void _incrementCounter() {
    setState(() {
      if (_counterGanjil > 20) {
        _counterGanjil = 1;
        _counterGenap = 0;
      } else {
        _counterGanjil += 2;
        _counterGenap += 2;
      }

      if (_counter < _myNRP.length) {
        _counter++;
      } else {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const MyApp();
                }
                ),
                );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bilangan Ganjil:',
            ),
            Text(
              '$_counterGanjil',
              style: Theme.of(context).textTheme.headlineMedium,
            ), 
            const Text(
              'Bilangan Genap:',
            ),
            Text(
              '$_counterGenap',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'NRP',
            ),
            Text(
            '${_counter > 0 ? _myNRP.substring( 0, _counter) : ""}',
            style: Theme.of(context).textTheme.headlineMedium,
            ),
            Column (
              children: List.generate(
                _counter,
                (index) => Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      index + 1,
                      (i) => const Icon(Icons.access_alarm)
                  ),
                )
              )
              
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.carpenter),
      ),
    );
  }
}