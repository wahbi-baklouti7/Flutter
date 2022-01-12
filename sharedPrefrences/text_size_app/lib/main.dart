import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_size_app/provider/provider.dart';
import 'package:text_size_app/screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TextSizeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  @override
  Widget build(BuildContext context) {
    print("rebuilt home ");
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SettingsScreen()));
          },
        )
      ]),
      body: Consumer<TextSizeProvider>(builder: (context, not, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                
                'You have pushed the button this many times:',
                style: TextStyle(
                    fontSize: not.textSize.toDouble(),
          ),
              ),
              const SizedBox(height: 10),
              Text('This text size is : ${not.textSize}',
                  style: TextStyle(fontSize: not.textSize.toDouble())),
            ],
          ),
        );
      }),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
