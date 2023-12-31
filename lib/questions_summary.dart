import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(
                children: [
                  Text((data['question']).toString()),
                  const SizedBox(height: 5),
                  Text((data['user_answer']).toString()),
                  Text((data['correct_answer']).toString()),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
