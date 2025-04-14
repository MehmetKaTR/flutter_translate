// custom_widgets/wordlist_widget.dart

import 'package:flutter/material.dart';
import 'wordline_widget.dart';

class WordListWidget extends StatelessWidget {
  final List<Map<String, dynamic>> wordsData;

  const WordListWidget({Key? key, required this.wordsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Headings and sections
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Word Header
              Expanded(
                child: Text(
                  'SELECTED WORDS',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              // Category Header
              Expanded(
                child: Text(
                  'CATEGORY',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              // Frequency Header
              Expanded(
                child: Text(
                  'FREQ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        // List of words with category and frequency
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: wordsData.length,
          itemBuilder: (context, index) {
            var wordData = wordsData[index];
            return WordLineWidget(
              word: wordData['word'],
              category: wordData['category'],
              frequency: wordData['frequency'],
              color: wordData['color'],
            );
          },
        ),
      ],
    );
  }
}
