
import 'dart:math';

import 'package:flutter/material.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  
  final List<String> quotes = [
    "Believe you can and you're halfway there.",
    "Do something today that your future self will thank you for.",
    "Dream big. Work hard. Stay humble.",
    "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "Act as if what you do makes a difference. It does.",
  ];

  int currentIndex = 0;

  void showNextQuote() {
    setState(() {
      currentIndex = Random().nextInt(quotes.length);
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        title: Text("Inspirational Quotes"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  quotes[currentIndex],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    color: Colors.deepPurple.shade900,
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: showNextQuote, 
                  child: Text(
                    "Next Quote",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}