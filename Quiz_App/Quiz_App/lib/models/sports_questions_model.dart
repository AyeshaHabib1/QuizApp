class SportsQuestion {
  final int id;
  final String text;
  final List<SportsOption> options;
  bool isLocked;
  SportsOption? selectedWiidgetOption;
  SportsOption? correctAnswer;

  SportsQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  SportsQuestion copyWith() {
    return SportsQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          SportsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class SportsOption {
  final String text;
  final bool isCorrect;

  const SportsOption({
    required this.text,
    required this.isCorrect,
  });
}

final SportsQuestionsList = [
  SportsQuestion(
    text:
        "Which sport is often referred to as 'The Beautiful Game'?",
    options: [
      const SportsOption(text: "Cricket", isCorrect: false),
      const SportsOption(text: "Badminton", isCorrect: false),
      const SportsOption(text: "Soccer (Football)", isCorrect: true),
      const SportsOption(text: "Hockey", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const SportsOption(text: "Soccer (Football)", isCorrect: true),
  ),
  SportsQuestion(
    text:
        " In which country did the sport of table tennis (ping pong) originate?",
    options: [
      const SportsOption(text: "America", isCorrect: false),
      const SportsOption(text: "England", isCorrect: true),
      const SportsOption(text: "Europe", isCorrect: false),
      const SportsOption(text: " Africa", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const SportsOption(text: 'England', isCorrect: true),
  ),
  SportsQuestion(
    text:
        "What is the maximum number of players a standard basketball team can have on the court at any given time?",
    options: [
      const SportsOption(text: "5 players", isCorrect: true),
      const SportsOption(text: "4 players", isCorrect: false),
      const SportsOption(text: "3 players", isCorrect: false),
      const SportsOption(text: "2 players", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const SportsOption(text: "5 players", isCorrect: true),
  ),

  SportsQuestion(
    text:
        " In which sport is the 'Grand Slam' achieved by winning all four major championships in a calendar year?",
    options: [
      const SportsOption(text: "Tennis", isCorrect: true),
      const SportsOption(text: "Football", isCorrect: false),
      const SportsOption(text: " Badminton", isCorrect: false),
      const SportsOption(text: "Soocer", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const SportsOption(text: "Tennis", isCorrect: true),
  ),
  // other 4
  SportsQuestion(
    text:
        " In which sport would you perform a 'slam dunk'?",
    options: [
      const SportsOption(text: "Badminton", isCorrect: false),
      const SportsOption(text: " Football", isCorrect: false),
      const SportsOption(text: " Hockey", isCorrect: false),
      const SportsOption(text: " Basketball", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const SportsOption(
      text: " Basketball",
      isCorrect: true,
    ),
  ),
  SportsQuestion(
    text:
        " What is the regulation height of a standard basketball hoop in the NBA and FIBA?",
    options: [
      const SportsOption(
          text: " 10 feet ", isCorrect: true),
      const SportsOption(text: "12 feet ", isCorrect: false),
      const SportsOption(
          text: " 14 feet ", isCorrect: false),
      const SportsOption(
          text: "  16 feet ", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const SportsOption(
        text: "10 feet ", isCorrect: true),
  ),
];
