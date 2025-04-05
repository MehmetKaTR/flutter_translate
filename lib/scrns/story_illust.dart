import 'package:flutter/material.dart';
import 'show_story.dart';

class StoryIllust extends StatelessWidget {
  const StoryIllust({super.key});

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
            top: 746,
            child: Container(
              width: 360,
              height: 34,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white /* ✦-_bg-bg-default */,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    color: const Color(
                      0xFFE6E6E6,
                    ) /* ✦-_border-border-default */,
                  ),
                ),
              ),
              child: Stack(children: [SizedBox(height: 10)]),
            ),
          ),
          Positioned(
            left: 194,
            top: 587,
            child: Container(
              width: 159,
              height: 38,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 2,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8,
                children: [
                  Text(
                    'Create Story',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.8,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 31,
            top: 671,
            child: GestureDetector(
              onTap: () {
                // ShowStory sayfasına yönlendirme
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShowStory()),
                );
              },
              child: Container(
                width: 298,
                height: 64,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 2,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 8,
                  children: [
                    Text(
                      'Read Story',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 4,
            top: 564,
            child: Container(width: 100, height: 20),
          ),
          Positioned(
            left: 126,
            top: 587,
            child: SizedBox(
              width: 33,
              child: Text(
                '4',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Positioned(
            left: 12,
            top: 584,
            child: SizedBox(
              width: 109,
              child: Text(
                'Words Amount : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Positioned(
            left: 126,
            top: 610,
            child: SizedBox(
              width: 33,
              child: Text(
                '20-30',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Positioned(
            left: 12,
            top: 607,
            child: SizedBox(
              width: 109,
              child: Text(
                'Lenght : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 86,
            child: Container(
              width: 359,
              height: 491,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          color: const Color(
                            0xFFE6E6E6,
                          ) /* ✦-_border-border-default */,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            'WORDS',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.67,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Container(
                          width: 208,
                          height: 20,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 208,
                                  child: Text(
                                    'Select words for your story',
                                    style: TextStyle(
                                      color: Colors.black.withValues(
                                        alpha: 128,
                                      ),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.40,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 208,
                                top: 0,
                                child: Opacity(
                                  opacity: 0.50,
                                  child: Container(
                                    width: 10,
                                    height: 20,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 56,
                    padding: const EdgeInsets.all(16),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          color: const Color(
                            0xFFE6E6E6,
                          ) /* ✦-_border-border-default */,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            'TOPIC',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.67,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Container(
                          width: 191,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 211,
                                      child: Text(
                                        'Casual',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 1.40,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 225,
                                top: -5,
                                child: Opacity(
                                  opacity: 0.50,
                                  child: Container(
                                    transform:
                                        Matrix4.identity()
                                          ..translate(0.0, 0.0)
                                          ..rotateZ(1.57),
                                    height: 20,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          color: const Color(
                            0xFFE6E6E6,
                          ) /* ✦-_border-border-default */,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 16,
                          top: 16,
                          child: SizedBox(
                            width: 100,
                            child: Text(
                              'LEVEL',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.67,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 128,
                          top: 16,
                          child: Container(
                            width: 200,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 180,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'B1 ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 1.40,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '(Medium)',
                                          style: TextStyle(
                                            color: Colors.black.withValues(
                                              alpha: 128,
                                            ),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 1.40,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.50,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          color: const Color(
                            0xFFE6E6E6,
                          ) /* ✦-_border-border-default */,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 16,
                          top: 16,
                          child: SizedBox(
                            width: 100,
                            child: Text(
                              'SENTIMENT',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.67,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 128,
                          top: 16,
                          child: Container(
                            width: 200,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 180,
                                  child: Text(
                                    'Normal',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.40,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.50,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          color: const Color(
                            0xFFE6E6E6,
                          ) /* ✦-_border-border-default */,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 16,
                          top: 16,
                          child: SizedBox(
                            width: 100,
                            child: Text(
                              'LENGHT',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.67,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 128,
                          top: 16,
                          child: Container(
                            width: 200,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    'Short',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.40,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.50,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 226,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          color: const Color(
                            0xFFE6E6E6,
                          ) /* ✦-_border-border-default */,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 285,
                          top: 15,
                          child: SizedBox(
                            width: 51,
                            height: 21,
                            child: Text(
                              'Freq',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.67,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 16,
                          child: SizedBox(
                            width: 112,
                            child: Text(
                              'SELECTED WORDS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.67,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 169,
                          top: 16,
                          child: SizedBox(
                            width: 71,
                            child: Text(
                              'CATEGORY ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.67,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 52,
                          child: Container(
                            width: 324,
                            height: 20,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 123,
                                  top: 1,
                                  child: Container(
                                    width: 113,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 2,
                                      children: [
                                        SizedBox(
                                          width: 123,
                                          child: Text(
                                            'Vocabulary ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black.withValues(
                                                alpha: 128,
                                              ),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.50,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 286,
                                  top: -2,
                                  child: Text(
                                    'x2',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.40,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 0,
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFF6D6D),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      spacing: 8,
                                      children: [
                                        SizedBox(
                                          width: 76,
                                          child: Text(
                                            'reckless',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFF161823),
                                              fontSize: 14,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 1.40,
                                              letterSpacing: 0.14,
                                              decoration: TextDecoration.none,
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
                          left: 16,
                          top: 106,
                          child: Container(
                            width: 324,
                            height: 20,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 123,
                                  top: 1,
                                  child: Container(
                                    width: 113,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 2,
                                      children: [
                                        SizedBox(
                                          width: 123,
                                          child: Text(
                                            'Vocabulary ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black.withValues(
                                                alpha: 128,
                                              ),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.50,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 287,
                                  top: -2,
                                  child: Text(
                                    'x1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.40,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 0,
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF916DFF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      spacing: 8,
                                      children: [
                                        SizedBox(
                                          width: 76,
                                          child: Text(
                                            'pawn off',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFF161823),
                                              fontSize: 14,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 1.40,
                                              letterSpacing: 0.14,
                                              decoration: TextDecoration.none,
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
                          left: 16,
                          top: 79,
                          child: Container(
                            width: 324,
                            height: 20,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 123,
                                  top: 1,
                                  child: Container(
                                    width: 113,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 2,
                                      children: [
                                        SizedBox(
                                          width: 123,
                                          child: Text(
                                            'Vocabulary ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black.withValues(
                                                alpha: 128,
                                              ),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.50,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 287,
                                  top: -2,
                                  child: Text(
                                    'x1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.40,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 0,
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFE9FF6D),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      spacing: 8,
                                      children: [
                                        SizedBox(
                                          width: 76,
                                          child: Text(
                                            'intel',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFF161823),
                                              fontSize: 14,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 1.40,
                                              letterSpacing: 0.14,
                                              decoration: TextDecoration.none,
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
                          left: 16,
                          top: 133,
                          child: Container(
                            width: 324,
                            height: 20,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 123,
                                  top: 1,
                                  child: Container(
                                    width: 113,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 2,
                                      children: [
                                        SizedBox(
                                          width: 123,
                                          child: Text(
                                            'Vocabulary ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black.withValues(
                                                alpha: 128,
                                              ),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.50,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 287,
                                  top: -2,
                                  child: Text(
                                    'x1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.40,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 0,
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF6DDFFF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      spacing: 8,
                                      children: [
                                        SizedBox(
                                          width: 76,
                                          child: Text(
                                            'swindler',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFF161823),
                                              fontSize: 14,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 1.40,
                                              letterSpacing: 0.14,
                                              decoration: TextDecoration.none,
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
                      ],
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
              height: 42,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 8, // ikon biraz içerde dursun diye 8
                    top: 9,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // önceki sayfaya döner
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 119,
                    top: 9,
                    child: Text(
                      'Story Illustrator',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.40,
                        letterSpacing: -0.34,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
        ],
      ),
    );
  }
}
