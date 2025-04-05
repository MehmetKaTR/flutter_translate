import 'package:flutter/material.dart';

class ShowStory extends StatelessWidget {
  const ShowStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 780,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 360,
              height: 44,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Positioned(
                    left: 21,
                    top: 12,
                    child: Container(
                      width: 54,
                      height: 21,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      child: Stack(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 702,
            child: Container(
              width: 360,
              height: 78,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 0,
                    offset: Offset(0, -0.50),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 360,
                      height: 44,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          Positioned(
                            left: -8,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 26,
                                right: 26,
                                bottom: 8,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 67,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 26,
                                right: 26,
                                bottom: 8,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child: Stack(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 142,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 26,
                                right: 26,
                                bottom: 8,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child: Stack(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 217,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 26,
                                right: 26,
                                bottom: 8,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child: Stack(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 292,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 26,
                                right: 26,
                                bottom: 8,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 44,
            child: Container(
              width: 360,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Container(
                    width: double.infinity,
                    height: 42,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          color: const Color(0xFFE6E6E6),
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 16,
                          top: 9,
                          child: Container(
                            width: 24,
                            height: 24,
                            child: Stack(),
                          ),
                        ),
                        Positioned(
                          left: 112,
                          top: 9,
                          child: Text(
                            'Reckless Mugger',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: -0.34,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 321,
                          top: 12,
                          child: Container(
                            width: 18,
                            height: 18,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 14,
                      children: [
                        SizedBox(
                          width: 339,
                          height: 168,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'One day, a ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 1.40,
                                    letterSpacing: -0.20,
                                  ),
                                ),
                                TextSpan(
                                  text: 'reckless',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 1.40,
                                    letterSpacing: -0.20,
                                  ),
                                ),
                                TextSpan(
                                  text: ' man named Jack decided to ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 1.40,
                                    letterSpacing: -0.20,
                                  ),
                                ),
                                TextSpan(
                                  text: 'pawn off',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 1.40,
                                    letterSpacing: -0.20,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' his grandmother s precious necklace. He had no idea that it would lead him into trouble. Jack thought he could make a quick profit by selling the necklace to a local jeweler, but little did he know, the jeweler was a ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 1.40,
                                    letterSpacing: -0.20,
                                  ),
                                ),
                                TextSpan(
                                  text: 'swindler',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 1.40,
                                    letterSpacing: -0.20,
                                  ),
                                ),
                                TextSpan(
                                  text: '.\n\nThe jeweler had been collecting ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 1.40,
                                    letterSpacing: -0.20,
                                  ),
                                ),
                                TextSpan(
                                  text: 'intel',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 1.40,
                                    letterSpacing: -0.20,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' on valuable items for weeks, and he knew exactly how to trick people into selling their treasures for much less than they were worth. Jack, eager for money, didn’t question the deal.\nAs soon as he left the shop, he realized something was wrong, but it was too late. He had been swindled, and his reckless decision cost him dearly.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 1.40,
                                    letterSpacing: -0.20,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 339,
                    height: 94,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF2F2F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 10,
                      children: [
                        SizedBox(
                          width: 324,
                          child: Text(
                            '"Reckless" burada, Jack in yaptığı hareketin dikkatsiz ve düşüncesiz olduğunu ifade eder. Jack, büyükannesinin değerli kolyesini satma kararını alırken, sonuçlarını düşünmeden ve dikkatli bir şekilde değerlendirmeden hareket eder. Bu, onun sorumsuz ve dikkatsiz bir şekilde davranması anlamına gelir.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 1.40,
                              letterSpacing: -0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF5F5F5) /* ✦-_bg-bg-secondary */,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 12,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                        SizedBox(
                          width: 133,
                          child: Text(
                            'Ask to AI',
                            style: TextStyle(
                              color: const Color(0xFF828282),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.71,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 125,
                    height: 37,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Container(
                    width: 36,
                    height: 34,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Stack(),
                  ),
                  SizedBox(
                    width: 67,
                    height: 26,
                    child: Text(
                      'Translate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.71,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
