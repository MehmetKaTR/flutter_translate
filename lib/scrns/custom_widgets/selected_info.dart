import 'package:flutter/material.dart';

class SelectedInfo extends StatelessWidget {
  const SelectedInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 162,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          // Create Story Button (right docked, smaller)
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3, // Smaller width
              height: 37,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              margin: const EdgeInsets.only(right: 16),
              decoration: ShapeDecoration(
                color: const Color.fromARGB(255, 206, 204, 204),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Create Story',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.8,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Read Story Button (bottom center, larger)
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width:
                    MediaQuery.of(context).size.width *
                    0.7, // Orantılı genişlik
                height: 65,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Read Story',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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

          // Words Amount Text (left docked)
          Positioned(
            left: 10,
            top: 7,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Words Amount: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(width: 5), // Adding space between label and value
                Text(
                  "4", // Dynamic value
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),

          // Length Row (left docked)
          Positioned(
            left: 10,
            top: 50,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Length: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(width: 5), // Adding space between label and value
                Text(
                  "20-30", // Dynamic value
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
