import 'package:assignment_08/land_scape.dart';
import 'package:assignment_08/portrait.dart';
import 'package:flutter/material.dart';

class HomepPage extends StatefulWidget {
  const HomepPage({super.key});

  @override
  State<HomepPage> createState() => HomepPageState();
}

class HomepPageState extends State<HomepPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.withOpacity(0.2),
        appBar: AppBar(
          title: const Text("Profile"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation == Orientation.portrait
                  ? const Portrait()
                  : const LandScape();
            },
          ),
        ));
  }
}
