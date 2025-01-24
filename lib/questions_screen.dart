import 'package:flutter/material.dart';
import 'package:myapp/answer_button.dart';
import 'package:myapp/data/quizz.dart';
import 'package:google_fonts/google_fonts.dart' ;
import 'package:myapp/results_screen.dart';
import 'package:myapp/start_screen.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  final List<String> selectedAnswers =[];

  void answerQuestion(String selectedAnswer) {
    setState(() {
      selectedAnswers.add(selectedAnswer);
      if (currentQuestionIndex <questions.length - 1){
      currentQuestionIndex++;
      }else{
        Navigator.of(context).pushReplacement(
  MaterialPageRoute(
    builder: (context) => ResultScreen(
      totalQuestions: 6, // เปลี่ยนเป็นค่าจริงจากเกม
      correctAnswers: 2, // เปลี่ยนเป็นค่าที่คำนวณจากผู้ใช้
      onRestart: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const StartScreen()),
        );
      },
    ),
  ),

        ) ;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Text(
                currentQuestion.question,
                style: GoogleFonts.lato(
                  color:  const Color.fromARGB(255, 201, 153, 251),
                  fontSize: 24,
                  fontWeight:  FontWeight.bold                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.getShuffledAnswers().map(
                (answer) {
                return AnswersButton(
                  answer: answer,
                  onTap: () => answerQuestion(answer),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
