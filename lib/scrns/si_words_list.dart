import 'package:flutter/material.dart';
import 'custom_widgets/selected_wsi.dart';

class SIWordsList extends StatelessWidget {
  const SIWordsList({super.key});

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
            left: 4,
            top: 564,
            child: Container(width: 100, height: 20),
          ),
          Positioned(
            left: 0,
            top: 86,
            child: Container(
              width: 359,
              height: 660,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                              'SEARCH',
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
                          left: 328,
                          top: 15,
                          child: Container(
                            width: 24,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                            'SAVED',
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
                                child: Container(width: 211, height: 20),
                              ),
                              Positioned(
                                left: 222,
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
                            'FAVORITES',
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
                                child: Container(width: 211, height: 20),
                              ),
                              Positioned(
                                left: 222,
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
                    height: 157,
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
                              'LISTS',
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
                          left: 328,
                          top: 15,
                          child: Container(
                            width: 24,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 10,
                              children: [
                                Opacity(
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
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 17,
                          top: 48,
                          child: Container(
                            width: 326,
                            height: 109,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 76,
                                  top: 6,
                                  child: Opacity(
                                    opacity: 0.50,
                                    child: Container(
                                      width: 60,
                                      height: 72,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 5,
                                            top: 3,
                                            child: Container(
                                              width: 50,
                                              height: 40,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFF00B2FF),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 6,
                                            top: 47,
                                            child: SizedBox(
                                              width: 47,
                                              height: 20,
                                              child: Text(
                                                'countries',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 8,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 2.50,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 146,
                                  top: 6,
                                  child: Opacity(
                                    opacity: 0.50,
                                    child: Container(
                                      width: 60,
                                      height: 72,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 5,
                                            top: 3,
                                            child: Container(
                                              width: 50,
                                              height: 40,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFE1FF00),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 6,
                                            top: 47,
                                            child: SizedBox(
                                              width: 47,
                                              height: 20,
                                              child: Text(
                                                'formal ',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 8,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 2.50,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 6,
                                  top: 6,
                                  child: Container(
                                    width: 60,
                                    height: 72,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 5,
                                          top: 3,
                                          child: Container(
                                            width: 50,
                                            height: 40,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFFF0000),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 6,
                                          top: 47,
                                          child: SizedBox(
                                            width: 47,
                                            height: 20,
                                            child: Text(
                                              'vegetables',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 8,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 2.50,
                                                decoration: TextDecoration.none,
                                              ),
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
                  Container(
                    width: double.infinity,
                    height: 339,
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
                          left: 280,
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
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 52,
                          child: SelectedWSI(
                            word: 'reckless',
                            label: 'Vocabulary',
                            free: 3,
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
                                  left: 261,
                                  top: 1,
                                  child: Container(
                                    width: 63,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 264,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 276,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 288,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 300,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFFF7F7),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 312,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
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
                                  left: 261,
                                  top: 1,
                                  child: Container(
                                    width: 63,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 264,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 276,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 288,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 300,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFFF7F7),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 312,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
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
                                  left: 261,
                                  top: 1,
                                  child: Container(
                                    width: 63,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 264,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 276,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 288,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 300,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFFF7F7),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 312,
                                  top: 5,
                                  child: Container(
                                    width: 9,
                                    height: 6,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: const Color(0xFFCECDCD),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
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
                  side: BorderSide(width: 0.50, color: const Color(0xFFE6E6E6)),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 9,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                        ); // Go back to the previous screen
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.arrow_back_ios_new, size: 23),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 138,
                    top: 9,
                    child: Text(
                      'Words List',
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
