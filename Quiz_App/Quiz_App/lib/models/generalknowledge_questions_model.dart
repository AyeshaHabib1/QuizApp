class GeneralKnowledgeQuestion {
  final int id;
  final String text;
  final List<GeneralKnowledgeOption> options;
  bool isLocked;
  GeneralKnowledgeOption? selectedWiidgetOption;
  GeneralKnowledgeOption? correctAnswer;

  GeneralKnowledgeQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  GeneralKnowledgeQuestion copyWith() {
    return GeneralKnowledgeQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          GeneralKnowledgeOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class GeneralKnowledgeOption {
  final String text;
  final bool isCorrect;

  const GeneralKnowledgeOption({
    required this.text,
    required this.isCorrect,
  });
}

final GeneralKnowledgeQuestionsList = [
  GeneralKnowledgeQuestion(
    text:
        "In which year did the Titanic sink after hitting an iceberg?",
    options: [
      const GeneralKnowledgeOption(text: "1912", isCorrect: true),
      const GeneralKnowledgeOption(text: "1999", isCorrect: false),
      const GeneralKnowledgeOption(text: "1987", isCorrect: false),
      const GeneralKnowledgeOption(text: "1920", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const GeneralKnowledgeOption(text: "1912", isCorrect: true),
  ),
  GeneralKnowledgeQuestion(
      text:
          "What is the largest organ in the human body?",
      options: [
        const GeneralKnowledgeOption(text: "Heart", isCorrect: false),
        const GeneralKnowledgeOption(text: "Skin", isCorrect: true),
        const GeneralKnowledgeOption(text: "Brain", isCorrect: false),
        const GeneralKnowledgeOption(text: "Hair", isCorrect: false),
      ],
      id: 1,
      correctAnswer: const GeneralKnowledgeOption(text: "Skin", isCorrect: true)),
  GeneralKnowledgeQuestion(
      text:
          "Which planet is often referred to as the 'Red Planet'?",
      options: [
        const GeneralKnowledgeOption(text: "Earth", isCorrect: false),
        const GeneralKnowledgeOption(text: "Jupitar", isCorrect: false),
        const GeneralKnowledgeOption(text: "Venus", isCorrect: false),
        const GeneralKnowledgeOption(text: "Mars", isCorrect: true),
      ],
      id: 2,
      correctAnswer:
          const GeneralKnowledgeOption(text: "Mars", isCorrect: true)),
  GeneralKnowledgeQuestion(
      text:
          "Which gas do plants absorb from the atmosphere during photosynthesis?",
      options: [
        const GeneralKnowledgeOption(text: "Oxygen", isCorrect: false),
        const GeneralKnowledgeOption(text: "Photosynthesis", isCorrect: false),
        const GeneralKnowledgeOption(text: "Carbon dioxide (CO2)", isCorrect: true),
        const GeneralKnowledgeOption(text: "Human Breath", isCorrect: false),
      ],
      id: 3,
      correctAnswer: const GeneralKnowledgeOption(text: "Carbon dioxide (CO2)", isCorrect: true)),
  GeneralKnowledgeQuestion(
      text:
          " What is the chemical symbol for gold?",
      options: [
        const GeneralKnowledgeOption(text: "Go", isCorrect: false),
        const GeneralKnowledgeOption(text: "Sc", isCorrect: false),
        const GeneralKnowledgeOption(text: "Da", isCorrect: false),
        const GeneralKnowledgeOption(text: "Au", isCorrect: true),
      ],
      id: 4,
      correctAnswer: const GeneralKnowledgeOption(text: "Au", isCorrect: true)),
  GeneralKnowledgeQuestion(
      text:
          "Who wrote the famous play 'Romeo and Juliet'?",
      options: [
        const GeneralKnowledgeOption(text: " William Shakespeare", isCorrect: true),
        const GeneralKnowledgeOption(text: "Ayesha Habib", isCorrect: false),
        const GeneralKnowledgeOption(text: "Seerat", isCorrect: false),
        const GeneralKnowledgeOption(text: "Muskan", isCorrect: false),
      ],
      id: 5,
      correctAnswer:
          const GeneralKnowledgeOption(text: " William Shakespeare", isCorrect: true)),


];
