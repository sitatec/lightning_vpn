import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          iconSize: 28,
          icon: const Icon(
            Icons.menu,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextButton(
              onPressed: () {},
              child: const Text("ADD TIME"),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.3,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        shadowColor: Colors.black12,
        backgroundColor: Colors.white,
        title: const Text(
          "Lithning VPN",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            // colorFilter: ColorFilter.mode(Colors.white, BlendMode.luminosity),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
