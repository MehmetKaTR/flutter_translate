import 'package:flutter/material.dart';

class FreqUsed extends StatefulWidget {
  const FreqUsed({super.key});

  @override
  State<FreqUsed> createState() => _FreqUsedState();
}

class _FreqUsedState extends State<FreqUsed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 74,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 375,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Text(
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
                  Container(
                    width: 20,
                    height: 20,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF5F5F5), // Oval background color
                      shape: OvalBorder(),
                    ),
                    child: Icon(
                      Icons.arrow_forward, // Yatay ok ikonu
                      color: Colors.black, // İkon rengi
                      size: 16, // İkon boyutu
                    ),
                  ),
                  Container(width: 7, height: 14, child: Stack()),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 38,
            child: Container(
              width: 375,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 24,
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFF6D6D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE9FF6D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFF6DDFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFF916DFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
          ),
        ],
      ),
    );
  }
}
