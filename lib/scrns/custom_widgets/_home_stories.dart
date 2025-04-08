import 'package:flutter/material.dart';

class HomeStories extends StatelessWidget {
  const HomeStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 375,
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Text(
                    'Geçmiş hikayeler',
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
                      color: const Color(0xFFF5F5F5),
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
            top: 46,
            child: Container(
              width:
                  MediaQuery.of(context).size.width, // Ekran genişliğine uyumlu
              height: 234,
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildStoryContainer(
                      'Hikaye 1',
                      '15',
                      'assets/images/st1.jpeg',
                    ),
                    _buildStoryContainer(
                      'Hikaye 2',
                      '12',
                      'assets/images/st2.jpeg',
                    ),
                    _buildStoryContainer(
                      'Hikaye 3',
                      '8',
                      'assets/images/st3.jpeg',
                    ),
                    _buildStoryContainer(
                      'Hikaye 4',
                      '9',
                      'assets/images/st1.jpeg',
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

  Widget _buildStoryContainer(String title, String wordCount, String imageUrl) {
    return Container(
      margin: const EdgeInsets.only(
        right: 16,
      ), // Aralarındaki mesafeyi artırdım
      width: 148, // Container'ın genişliğini sabitledim
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 148,
            height: 148,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(imageUrl).image, //NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(
            width: 148,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.40,
              ),
            ),
          ),
          SizedBox(
            width: 148,
            child: Text(
              'Kelime sayısı : $wordCount',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
