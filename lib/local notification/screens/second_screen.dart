import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Theme.of(context).primaryColor, Colors.teal[200]!],
          ),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                height: 90,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.green),
                child: const Text(
                  "Second Screen",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
              const Spacer(),
              const Center(
                child: Text(
                  'Navigator from Notification',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
