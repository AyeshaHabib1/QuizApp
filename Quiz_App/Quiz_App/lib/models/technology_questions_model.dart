class TechnologyQuestion {
  final int id;
  final String text;
  final List<TechnologyOption> options;
  bool isLocked;
  TechnologyOption? selectedWiidgetOption;
  TechnologyOption? correctAnswer;

  TechnologyQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  TechnologyQuestion copyWith() {
    return TechnologyQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              TechnologyOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class TechnologyOption {
  final String text;
  final bool isCorrect;

  const TechnologyOption({
    required this.text,
    required this.isCorrect,
  });
}

final TechnologyQuestionsList = [
  TechnologyQuestion(
    text:
        "What does the acronym 'URL'' stand for in the context of the internet?",
    options: [
      const TechnologyOption(text: "Uniform Receive Location", isCorrect: false),
      const TechnologyOption(text: "Unified Roller Lift", isCorrect: false),
      const TechnologyOption(text: "Uniform Resource Locator", isCorrect: true),
      const TechnologyOption(text: "Universe Rigid Load", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const TechnologyOption(text: "Uniform Resource Locator", isCorrect: true),
  ),
  TechnologyQuestion(
    text:
        "Which programming language is commonly used for developing mobile apps for iOS devices?",
    options: [
      const TechnologyOption(text: "Java", isCorrect: false),
      const TechnologyOption(text: "Swift", isCorrect: true),
      const TechnologyOption(text: "Flutter", isCorrect: false),
      const TechnologyOption(text: "HTML", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const TechnologyOption(text: "Swift", isCorrect: true),
  ),
  TechnologyQuestion(
    text:
        "Which company is known for its development of the Windows operating system?",
    options: [
      const TechnologyOption(text: "Microsoft", isCorrect: true),
      const TechnologyOption(text: "Google", isCorrect: false),
      const TechnologyOption(text: "Amazon", isCorrect: false),
      const TechnologyOption(text: "Facebook", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const TechnologyOption(text: "Microsoft", isCorrect: true),
  ),

  TechnologyQuestion(
    text:
        "Which social media platform is known for its disappearing 'Stories' feature?",
    options: [
      const TechnologyOption(text: "Snapchat", isCorrect: true),
      const TechnologyOption(text: "Instagram", isCorrect: false),
      const TechnologyOption(text: "Whatsapp", isCorrect: false),
      const TechnologyOption(text: "Facebook", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const TechnologyOption(text: "Snapchat", isCorrect: true),
  ),
  // other 4
  TechnologyQuestion(
    text:
        "What type of storage device uses non-volatile memory to store data and has no moving parts?",
    options: [
      const TechnologyOption(text: "ROM", isCorrect: false),
      const TechnologyOption(text: "RAM", isCorrect: false),
      const TechnologyOption(text: "Hard Drive", isCorrect: false),
      const TechnologyOption(text: "Solid-State Drive (SSD)", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const TechnologyOption(text: "Solid-State Drive (SSD)", isCorrect: true),
  ),
  TechnologyQuestion(
    text: " In computer graphics, what does 'GPU' stand for?",
    options: [
      const TechnologyOption(text: "Graphics Processing Unit", isCorrect: true),
      const TechnologyOption(text: "Graphic Provider unit", isCorrect: false),
      const TechnologyOption(text: "Graphics Private Unit", isCorrect: false),
      const TechnologyOption(text: "Graphic Public Unit", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const TechnologyOption(text: "Graphics Processing Unit", isCorrect: true),
  ),
];
