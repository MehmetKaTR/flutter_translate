import 'package:flutter/material.dart';

class Pills extends StatelessWidget {
  const Pills({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        width: 329,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 14,
          children: [
            // First Pill (Favorites)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: const Color(0xFFE6E6E6)),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.favorite, // Favorite icon
                        size: 18,
                        color: Colors.black,
                      ),
                      Text(
                        'Favorites',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.9),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.57,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Second Pill (History)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: const Color(0xFFE6E6E6)),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.history, // History icon
                        size: 18,
                        color: Colors.black,
                      ),
                      Text(
                        'History',
                        style: TextStyle(
                          color: const Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.57,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Third Pill (Member)
            Container(
              width: 106,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: const Color(0xFFE6E6E6)),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.group, // Member icon
                        size: 18,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          'Member',
                          style: TextStyle(
                            color: const Color(0xFF1A1A1A),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 1.57,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
