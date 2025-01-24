import 'package:flutter/material.dart';


class AnswersButton extends StatelessWidget {
  


  // const AnswerButton({required this.answer, required this.onPressed, super.key});
  const AnswersButton({
    super.key,
    required this.answer,
    required this.onTap,
  });

  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        SizedBox(

          width: double.infinity,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
            ),
            child: Text(answer,textAlign: TextAlign.center,),
          ),
        ),
      ],
    );
  }
}
