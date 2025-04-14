import 'package:flutter/material.dart';

class WordLineWidget extends StatelessWidget {
  final String word;
  final String category;
  final int frequency;
  final Color color;

  const WordLineWidget({
    Key? key,
    required this.word,
    required this.category,
    required this.frequency,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Word column
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: color, // Red color
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                word,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF161823),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.4,
                  letterSpacing: 0.14,
                ),
              ),
            ),
          ),
          // Spacer between columns
          const SizedBox(width: 8),

          // Category column
          Expanded(
            flex: 4,
            child: Text(
              category,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 1.67,
                decoration: TextDecoration.none,
              ),
            ),
          ),

          // Spacer between columns
          const SizedBox(width: 8),

          // Frequency column
          Expanded(
            flex: 3,
            child: Text(
              'x$frequency',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
