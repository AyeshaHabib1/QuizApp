import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:QuizApp/views/quiz_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class NewCard extends StatefulWidget {
  final String topicName;
  final List<dynamic> typeOfTopic;
  const NewCard(
      {super.key, required this.topicName, required this.typeOfTopic});

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  final AppinioSwiperController controller = AppinioSwiperController();

  @override
  Widget build(BuildContext context) {
    //const Color bgColor = Color(0xFF4993FA);
    const Color bgColor3 = Color(0xFF5170FD);
    const Color cardColor = Color(0xFF4993FA);

    // Get a list of 4 randomly selected Questions objects
    Map<dynamic, dynamic> randomQuestionsMap =
        getRandomQuestionsAndOptions(widget.typeOfTopic, 4);

    List<dynamic> randomQuestions = randomQuestionsMap.keys.toList();
    dynamic randomOptions = randomQuestionsMap.values.toList();

    return Scaffold(

      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellowAccent,Colors.green],begin: Alignment.topLeft,end: Alignment.bottomRight)),
        child: SafeArea(
          child: Center(
            child: ListView(
                children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      CupertinoIcons.back,
                      color: Colors.black,
                      weight: 10,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 200,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black26),
                        overlayColor: MaterialStateProperty.all(Colors.white10),
                        fixedSize: MaterialStateProperty.all(
                          Size(MediaQuery.sizeOf(context).width * 0.60, 60),
                        ),
                        elevation: MaterialStateProperty.all(4),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => QuizScreen(
                              questionlenght: randomQuestions,
                              optionsList: randomOptions,
                              topicType: widget.topicName,
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        "Start Quiz",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Map<dynamic, dynamic> getRandomQuestionsAndOptions(
  List<dynamic> allQuestions,
  int count,
) {
  final randomQuestions = <dynamic>[];
  final randomOptions = <dynamic>[];
  final random = Random();

  if (count >= allQuestions.length) {
    count = allQuestions.length;
  }

  while (randomQuestions.length < count) {
    final randomIndex = random.nextInt(allQuestions.length);
    final selectedQuestion = allQuestions[randomIndex];

    if (!randomQuestions.contains(selectedQuestion)) {
      randomQuestions.add(selectedQuestion);
      randomOptions.add(selectedQuestion.options);
    }
  }

  return Map.fromIterables(randomQuestions, randomOptions);
}

// List<dynamic> getRandomQuestions(List<dynamic> allQuestions, int count) {
//   if (count >= allQuestions.length) {
//     return List.from(allQuestions);
//   }
//   List<dynamic> randomQuestions = [];

//   List<int> indexes = List.generate(allQuestions.length, (index) => index);
//   final random = Random();

//   while (randomQuestions.length < count) {
//     final randomIndex = random.nextInt(indexes.length);
//     final selectedQuestionIndex = indexes[randomIndex];
//     final selectedQuestion = allQuestions[selectedQuestionIndex];
//     randomQuestions.add(selectedQuestion);

//     indexes.removeAt(randomIndex);
//   }
//   return randomQuestions;
// }

