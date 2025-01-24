class QuizModel {
  String question;
  List<String> answers;

  QuizModel(this.question, this.answers);

  List<String> getShuffledAnswers(){
    final ShuffledAnswers = List.of(answers);
    ShuffledAnswers.shuffle();
    return ShuffledAnswers;
  }
}

