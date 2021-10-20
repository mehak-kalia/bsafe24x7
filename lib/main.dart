import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bsafe24x7/Auth/login.dart';
import 'package:bsafe24x7/Auth/verify_phone.dart';
import 'package:bsafe24x7/Other_Pages/Splash_page.dart';

import 'Util/Constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      title: "BSafe-24x7",
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
        primarySwatch: MaterialColor(0xFFF06292,{
          50: Color.fromARGB(26, 255, 96, 125),
          100: Color.fromARGB(51, 255, 96, 125),
          200: Color.fromARGB(77, 255, 96, 125),
          300: Color.fromARGB(102, 255, 96, 125),
          400: Color.fromARGB(128, 255, 96, 125),
          500: Color.fromARGB(153, 255, 96, 125),
          600: Color.fromARGB(179, 255, 96, 125),
          700: Color.fromARGB(204, 255, 96, 125),
          800: Color.fromARGB(230, 255, 96, 125),
          900: Color.fromARGB(255, 255, 96, 125),
        }),
          // Color.fromARGB(255, 255, 96, 125)
      ),
      // theme: ThemeData.dark().copyWith(accentColor: Colors.green),
      // theme: ThemeData.light().copyWith(accentColor: Colors.green),
      debugShowCheckedModeBanner: false,
      routes: {
        // "/": (context) => SplashPage(),
        // "/home": (context) => HomePage(),
        // "/ad": (context) => Profile_UI(),
        // "/settings": (context) => SettingsPage(),
        // "/task": (context) => Tasks_page(),
        // "/john_jack": (context) => Input_Bricks_Page(),
        "/": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/verify": (context) => VerifyOTPPage(phone: "",),
        // "/Restaurant_home": (context) => Restaurant.HomePage(),
        // "/profile": (context) => User_Profile(),
        // "/add_restaurant": (context) => Add_Restaurant_Page(),
        // "/cart": (context) => Cart_Page(),
        // "/Addresses": (context) => AddressPage(Option: 0,),
        // "/fetch_location": (context) => FetchCurrentLocationPage(),
        // "/Address_Google_Map": (context) => Find_Address_From_Map(),
        // "/Manage_Delivery": (context) => ManageDeliveryPage(),
        // "/Ack": (context) => Show_Acknowledgement(),
        // "/Orders": (context) => Orders_Page(),
        // "/Manage_profile": (context) => ManageProfilePage(),
        // "/Help": (context) => HelpPage(),
      },
      initialRoute: "/",
      // initialRoute: "/fetch_location",
      // home: Tasks_page(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
