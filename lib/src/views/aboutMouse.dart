import 'package:flutter/material.dart';
import 'package:training/src/controllers/about_mouse.dart';

class AboutMouse extends StatelessWidget {
  const AboutMouse({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final AboutController2 controller2 = AboutController2();

  final Color corLetrasMenu = Colors.black;
  final Color corMenuBar = Colors.orangeAccent;

  @override
  Widget build(BuildContext context) {
    final about2 = controller2.getAbout2();

    return Scaffold(
      appBar: AppBar(
        title: const Text("About Mouse"),
        centerTitle: true,
        backgroundColor: corMenuBar,
        foregroundColor: corLetrasMenu,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(
                    about2.photoUrl[0],
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                ),
                Flexible(
                  child: Image.asset(
                    about2.photoUrl[1],
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
