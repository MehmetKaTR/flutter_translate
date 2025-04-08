import 'package:flutter/material.dart';

class SelectedWSI extends StatelessWidget {
  final String word;
  final String label;
  final int free;

  const SelectedWSI({
    super.key,
    required this.word,
    required this.label,
    required this.free,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 324,
      height: 20,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Stack(
        children: [
          // Label ("Vocabulary")
          Positioned(
            left: 123,
            top: 1,
            child: SizedBox(
              width: 113,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withAlpha(128),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),

          // Arka beyaz alan
          Positioned(
            left: 261,
            top: 1,
            child: Container(
              width: 63,
              height: 14,
              decoration: const BoxDecoration(color: Colors.white),
            ),
          ),

          // 5 kutu (doluluk göstergesi)
          ...List.generate(5, (index) {
            return Positioned(
              left: 264 + index * 12,
              top: 5,
              child: Container(
                width: 9,
                height: 6,
                decoration: ShapeDecoration(
                  color: index < free ? Colors.black : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 0.5,
                      color: Color(0xFFCECDCD),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            );
          }),

          // Word kutusu ("reckless")
          Positioned(
            left: 15,
            top: 0,
            child: Container(
              decoration: ShapeDecoration(
                color: const Color(0xFFFF6D6D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: SizedBox(
                width: 76,
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
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
