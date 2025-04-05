import 'package:flutter/material.dart';
import 'scrns/story_illust.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 44,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Positioned(
            left: 0,
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
                  Icon(
                    Icons.home, // Change this to the icon you want
                    size: 28,
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StoryIllust(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Icon(Icons.language, size: 28)],
                ),
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
                  Icon(
                    Icons.bookmark, // Change this to the icon you want
                    size: 26,
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
                  Icon(
                    Icons.folder, // Change this to the icon you want
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 292,
            top: 0,
            child: Container(
              width: 68,
              padding: const EdgeInsets.only(
                top: 12,
                left: 26,
                right: 0,
                bottom: 8,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Icon(
                    Icons.account_circle, // Change this to the icon you want
                    size: 24,
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
