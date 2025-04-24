import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
const Color peachColor = Color(0xFFFBE9D0);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
      ),
      home: const MyHomePage(title: 'Login Page'),
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
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Login'),
        ),
        body: Center(  // Center the entire login form
          child: Container(
            width: 400,  // Set a fixed width for the container
            height: 400,  // Set a fixed height for the container
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),

                const TextField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                    ),
            ),
                SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
