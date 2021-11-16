import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Buoi 5'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
         color: Colors.black26,
         borderRadius: BorderRadius.all(Radius.circular(40),),
          border: Border.all(color: Colors.black54,width: 2),
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/avatar.jpeg', width: 200, height: 200,),
          ),

            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.account_circle,size: 40,),
                    Text('Product Manager', style: TextStyle(fontSize:  20))
                  ]
                ),
            SizedBox(height: 40),
            Container(
              color: Colors.deepOrange,
              height: 40,
              width: 200,
              child: Stack(
                children: [
                  Center(child: Text('Enter your password'))
                ],
              ),
            ),
            ElevatedButton(onPressed: _incrementCounter, child: Text('Sign up'),),
            IconButton(onPressed: _incrementCounter, icon: Icon(Icons.exit_to_app,)),


        ],
      ),
    ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
