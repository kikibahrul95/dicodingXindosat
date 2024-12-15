import 'package:flutter/material.dart';

class finger extends StatelessWidget {
  const finger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fingerprint,
                size: 100,
                color: Colors.blueAccent,
              ),
              SizedBox(height: 50),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text("Tap disini")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
