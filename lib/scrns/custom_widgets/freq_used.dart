import 'package:flutter/material.dart';

class FreqUsed extends StatefulWidget {
  final double width;
  final List<String> words;
  final List<Color> colors;

  const FreqUsed({
    super.key,
    required this.width,
    required this.words,
    required this.colors,
  });

  @override
  State<FreqUsed> createState() => _FreqUsedState();
}

class _FreqUsedState extends State<FreqUsed> {
  Widget buildWordCard(String word, Color color) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    final double cardMaxWidth = widget.width;
    final List<String> displayWords = widget.words.take(7).toList();
    final List<Color> displayColors = widget.colors.take(7).toList();
    final double screenHeight =
        MediaQuery.of(context).size.height; // Screen height
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    // Dinamik yükseklik: Yatay modda daha büyük, dikey modda daha küçük
    final double dynamicHeight =
        isLandscape ? screenHeight * 0.17 : screenHeight * 0.1;
    final double scrollableHeight =
        isLandscape ? screenHeight * 0.08 : screenHeight * 0.06;

    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      width: cardMaxWidth,
      height: dynamicHeight, // Dinamik yükseklik
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            child: Row(
              children: [
                const Text(
                  'Frequently Used Words',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.40,
                    letterSpacing: -0.32,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF5F5F5),
                    shape: OvalBorder(),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
          // Scrollable word cards
          SizedBox(
            height: scrollableHeight, // Dinamik kaydırılabilir alan yüksekliği
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: List.generate(
                  displayWords.length,
                  (index) =>
                      buildWordCard(displayWords[index], displayColors[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
