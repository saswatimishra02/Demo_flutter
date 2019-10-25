import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, // <--- Add the builder
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("saswatiapp"),
      //   backgroundColor: Colors.black,
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: screensize.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assect/bg_img.jpg"),
                  fit: BoxFit.fill,
                  colorFilter:
                      ColorFilter.mode(Colors.white70, BlendMode.lighten))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    left: screensize.width / 10, right: screensize.width / 10),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email Id",
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email))),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: screensize.width / 10,
                    right: screensize.width / 10,
                    top: screensize.height / 30),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              Container(
                child: Text("Or"),
                padding: EdgeInsets.only(
                    top: screensize.height / 40,
                    bottom: screensize.height / 40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.face),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.face),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.face),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  print("Clicked");
                },
                child: Container(
                  margin: EdgeInsets.only(top: screensize.height / 40),
                  padding: EdgeInsets.only(
                      left: screensize.width / 5,
                      right: screensize.width / 5,
                      top: screensize.height / 60,
                      bottom: screensize.height / 60),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
