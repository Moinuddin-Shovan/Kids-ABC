import 'package:flutter/material.dart';

import 'quiz_ground_copy.dart';

void main() {
  runApp(const KidsAlphabetApp());
}

class KidsAlphabetApp extends StatelessWidget {
  const KidsAlphabetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KidsAlphabet(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class KidsAlphabet extends StatelessWidget {
  KidsAlphabet({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Your Name',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
              ),
              controller: _controller,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          ElevatedButton(
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => QuizGround(_controller.text)),
                    (route) => false);
              }
            },
            child: const Text("Start"),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
