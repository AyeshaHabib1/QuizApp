class IslamicQuestion {
  final int id;
  final String text;
  final List<IslamicOption> options;
  bool isLocked;
  IslamicOption? selectedWiidgetOption;
  IslamicOption? correctAnswer;

  IslamicQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  IslamicQuestion copyWith() {
    return IslamicQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          IslamicOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class IslamicOption {
  final String text;
  final bool isCorrect;

  const IslamicOption({
    required this.text,
    required this.isCorrect,
  });
}

final IslamicQuestionsList = [
  IslamicQuestion(
    text: "What is the first month of the Islamic lunar calendar?",
    options: [
      const IslamicOption(text: "Muharram", isCorrect: true),
      const IslamicOption(text: "Ramadan", isCorrect: false),
      const IslamicOption(text: "ZilHaj", isCorrect: false),
      const IslamicOption(text: "Rajab", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const IslamicOption(text: "Muharram", isCorrect: true),
  ),
  IslamicQuestion(
    text:
        "What is the holy city of Islam where the Prophet Muhammad was born?",
    options: [
      const IslamicOption(text: "Makkah ", isCorrect: true),
      const IslamicOption(text: "Madina", isCorrect: false),
      const IslamicOption(text: "Ryaz", isCorrect: false),
      const IslamicOption(text: "Jedda", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const IslamicOption(text: "Makkah", isCorrect: true),
  ),

  IslamicQuestion(
    text:
        "What is the term for the call to prayer that is traditionally announced from a mosque's minaret?",
    options: [
      const IslamicOption(text: "Azaan ", isCorrect: true),
      const IslamicOption(text: "Roza", isCorrect: false),
      const IslamicOption(text: "Hajj", isCorrect: false),
      const IslamicOption(text: "Abulation", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const IslamicOption(text: "Azaan", isCorrect: true),
  ),

  IslamicQuestion(
    text:
        "What is the Islamic term for the annual pilgrimage to Mecca that is obligatory for all Muslims at least once in their lifetime, provided they are physically and financially able?",
    options: [
      const IslamicOption(text: "Fasting", isCorrect: false),
      const IslamicOption(text: "Zakaat", isCorrect: false),
      const IslamicOption(text: "Hajj ", isCorrect: true),
      const IslamicOption(text: "Praying", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const IslamicOption(text: "Hajj ", isCorrect: true),
  ),
  // other 4
  IslamicQuestion(
    text:
        "What is the second holiest city in Islam, located in Saudi Arabia?",
    options: [
      const IslamicOption(text: "Makkah", isCorrect: false),
      const IslamicOption(text: "Jedda", isCorrect: false),
      const IslamicOption(text: "Postioned", isCorrect: false),
      const IslamicOption(text: "Ryaz ", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const IslamicOption(text: "Medina ", isCorrect: true),
  ),
  IslamicQuestion(
    text: "How many chapters, known as Surahs, are there in the Quran?",
    options: [
      const IslamicOption(text: "114 ", isCorrect: true),
      const IslamicOption(text: "118", isCorrect: false),
      const IslamicOption(text: "116", isCorrect: false),
      const IslamicOption(text: "112", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const IslamicOption(text: "114", isCorrect: true),
  ),

  IslamicQuestion(
    text:
        "Which Surah of the Quran is often referred to as the 'Heart of the Quran' due to its central and powerful message?",
    options: [
      const IslamicOption(text: "Surah Muzamil", isCorrect: false),
      const IslamicOption(text: "Surah Rehman", isCorrect: false),
      const IslamicOption(text: "Surah Ikhlas", isCorrect: false),
      const IslamicOption(text: "Surah Yasin ", isCorrect: true),
    ],
    id: 6,
    correctAnswer:
        const IslamicOption(text: "Surah Yasin ", isCorrect: true),
  ),
  IslamicQuestion(
    text:
        "Chapter Number of Surah Yaseen is:",
    options: [
      const IslamicOption(text: "35", isCorrect: false),
      const IslamicOption(text: "36 ", isCorrect: true),
      const IslamicOption(text: "33", isCorrect: false),
      const IslamicOption(text: "34", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const IslamicOption(text: "36", isCorrect: true),
  ),
];
