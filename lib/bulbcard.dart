import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bulbcard(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class bulbcard extends StatefulWidget {
  bulbcard({super.key});

  @override
  State<bulbcard> createState() => _bulbcardState();
}

class _bulbcardState extends State<bulbcard> {
  var onPressed = false;
  DatabaseReference ref = FirebaseDatabase.instance.ref('test');

  @override
  Widget build(BuildContext context) {
    ref.onValue.listen((event) {
      var data = event.snapshot.value.toString();
      print(data);
      setState(() {
        if (data == "{string: ON}") {
          onPressed = true;
        } else {
          onPressed = false;
        }
      });

      ;
    });
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.grey[200],
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Icon(
                onPressed ? Icons.lightbulb : Icons.lightbulb_outline,
                size: 80,
                color: onPressed ? Colors.yellow : Colors.grey,
              ),
              SizedBox(
                height: 15,
              ),
              // Text(
              //   "Light",
              //   style: TextStyle(
              //       fontSize: 30,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.grey),
              // ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      onPressed = !onPressed;
                    });

                    if (onPressed) {
                      ref.set({'string': 'ON'});
                    } else {
                      ref.set({'string': 'OFF'});
                    }
                  },
                  child: Text(onPressed ? "OFF" : "ON"))
            ],
          ),
        ),
      ),
    );
  }
}
