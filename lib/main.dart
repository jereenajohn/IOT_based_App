import 'package:flutter/material.dart';
import 'package:flutter_bulb_iot/bulbcard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_bulb_iot/weather.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(getotp());
}

class getotp extends StatelessWidget {
  const getotp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.black),
        home: mainhome());
  }
}

class mainhome extends StatefulWidget {
  mainhome({super.key});

  @override
  State<mainhome> createState() => _mainhomeState();
}

class _mainhomeState extends State<mainhome> {
  List<Widget> page = [HomePage(), weathercard()];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   'Light',
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),

        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.settings))
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        )),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: page[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          bottomnav("Bulb", Icons.flash_auto),
          bottomnav("Weather", Icons.wb_sunny),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomnav(String value, IconData iconData) {
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      label: '$value',
    );
  }
}
