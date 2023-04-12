import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remote Car',
      theme: ThemeData(primarySwatch: Colors.grey
      ),
      home: const MyHomePage(title:'Remote Car')
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
  String operation = "Stop";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(title: const Text("Remote Car"),backgroundColor: Colors.blueGrey,toolbarTextStyle: TextStyle(fontWeight: FontWeight.bold),),
        body: Column(
          children: [
            const SizedBox(height: 50),
            Center(
              child: Container(
              height: 200,
              width: 300,
              color: Colors.lightBlue[50],
              child: Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width:100,
                    child:
                    ElevatedButton(onPressed: _forward, child: const Text("Forward")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                  SizedBox(
                    width:80,
                    child:
                    ElevatedButton(onPressed: _left, child: const Text("Left")),
                  ),

                  SizedBox(
                    width:80,
                    child:
                    ElevatedButton(onPressed: _stop, child: const Text("Stop")),
                  ),

                  SizedBox(
                    width:80,
                    child:
                    ElevatedButton(onPressed: _right, child: const Text("Right")),
                  ),

                  ],
                ),
                  SizedBox(
                    width:100,
                    child:
                    ElevatedButton(onPressed: _reverse, child: const Text("Reverse")),
                  ),
                ],)
            )
        )
        )],
        Text(
            operation,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        
        ),
      ),
    );
  }

  void _forward() {
    operation = "Forward";
    setState(() {
      
    });
  }

  void _left() {
    operation = "Left";
    setState(() {
      
    });
  }

  void _stop() {
    operation = "Stop";
    setState(() {
      
    });
  }

  void _right() {
    operation = "Right";
    setState(() {
      
    });
  }

  void _reverse() {
    operation = "Reverse";
    setState(() {
      
    });
  }
}
