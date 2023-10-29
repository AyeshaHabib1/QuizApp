import 'package:QuizApp/models/islamic_questions_model.dart';
import 'package:QuizApp/models/sports_questions_model.dart';
import 'package:QuizApp/models/generalknowledge_questions_model.dart';
import 'package:QuizApp/models/technology_questions_model.dart';
import 'package:flutter/cupertino.dart';

const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
  final int id;
  final String topicName;
  final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.book_fill,
    topicName: "General Knowledge",
    topicQuestions: GeneralKnowledgeQuestionsList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.device_laptop,
    topicName: "Technology",
    topicQuestions: TechnologyQuestionsList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.sportscourt_fill,
    topicName: "Sports",
    topicQuestions: SportsQuestionsList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.square_stack_3d_up,
    topicName: "Islamic",
    topicQuestions: IslamicQuestionsList,
  ),
];
