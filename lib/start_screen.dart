import 'package:flutter/material.dart';
import 'questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Learn flutter the fun way!',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuestionsScreen(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
                label: const Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
