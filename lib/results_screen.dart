import 'package:flutter/material.dart';
import 'package:myapp/results_screen.dart';
import 'package:myapp/questions_screen.dart';
import 'package:myapp/start_screen.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;

  const ResultScreen({
    super.key,
    required this.selectedAnswers,
  });

  @override
  Widget build(BuildContext context) {
    final corrrectAnswers = [
      'widgets',
      'By combining widgets in code',
      'Update UI as data changes',
      'StatelessWidget',
      'The UI is not update',
      'By calling setState()',
    ];

    int score = 0;
    for (int i = 0; i < selectedAnswers.length; i++) {
      if (selectedAnswers[i] == corrrectAnswers[i]) {
        score++;
      }
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You answered $score out of 6 questions correctly!",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StartScreen()));
                }, // ✅ กดแล้วเรียกฟังก์ชัน onRestart
                icon: const Icon(Icons.refresh, color: Colors.white),
                label: const Text(
                  "Restart Quiz",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
