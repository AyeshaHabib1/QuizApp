import 'package:QuizApp/widgets/results_card.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key,
      required this.score,
      required this.totalQuestions,
      required this.whichTopic});
  final int score;
  final int totalQuestions;
  final String whichTopic;

  @override
  Widget build(BuildContext context) {
    const Color bgColor3 = Colors.yellowAccent;
    print(score);
    print(totalQuestions);
    final double percentageScore = (score / totalQuestions) * 100;
    final int roundedPercentageScore = percentageScore.round();
    const Color cardColor = Colors.black26;
    return WillPopScope(
      onWillPop: () {
        Navigator.popUntil(context, (route) => route.isFirst);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.green.shade400,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ],
        ),

        body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellowAccent,Colors.green],begin: Alignment.topLeft,end: Alignment.bottomRight)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Results On Your ",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      for (var i = 0; i < "Quiz!!!".length; i++) ...[
                        TextSpan(
                          text: "Quiz!!!"[i],
                          style:
                              Theme.of(context).textTheme.headlineSmall!.copyWith(
                                    fontSize: 18 + i.toDouble(),
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ]
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    whichTopic.toUpperCase(),
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                ResultsCard(
                    roundedPercentageScore: roundedPercentageScore,
                    bgColor3: bgColor3),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black26),
                    fixedSize: MaterialStateProperty.all(
                      Size(MediaQuery.sizeOf(context).width * 0.80, 40),
                    ),
                    elevation: MaterialStateProperty.all(4),
                  ),
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: const Text(
                    "Take another test",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
