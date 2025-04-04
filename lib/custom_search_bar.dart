import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      height: 40,
      padding: const EdgeInsets.only(top: 8, left: 12, right: 16, bottom: 8),
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 24,
            height: 24,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(),
            child: Icon(
              Icons.search,
              color: const Color(0xFF828282),
            ), // Arama ikonu
          ),
          SizedBox(
            width: 265,
            child: Text(
              'Search',
              style: TextStyle(
                color: const Color(0xFF828282),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
