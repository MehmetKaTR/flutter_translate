import 'package:flutter/material.dart';

class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333,
      height: 136,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: Image.asset('assets/images/banner_bg.png').image,
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 54,
            child: SizedBox(
              width: 146,
              child: Text(
                'Günün hikayesi',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 1.40,
                  letterSpacing: -0.40,
                ),
              ),
            ),
          ),
          Positioned(
            left: 144,
            top: 123,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 5,
                children: [
                  Container(
                    width: 5,
                    height: 5,
                    decoration: ShapeDecoration(
                      color: Colors.black.withValues(alpha: 204),
                      shape: OvalBorder(),
                    ),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: ShapeDecoration(
                      color: Colors.black.withValues(alpha: 51),
                      shape: OvalBorder(),
                    ),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: ShapeDecoration(
                      color: Colors.black.withValues(alpha: 51),
                      shape: OvalBorder(),
                    ),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: ShapeDecoration(
                      color: Colors.black.withValues(alpha: 51),
                      shape: OvalBorder(),
                    ),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: ShapeDecoration(
                      color: Colors.black.withValues(alpha: 51),
                      shape: OvalBorder(),
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
