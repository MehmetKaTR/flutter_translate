import 'package:flutter/material.dart';

class BannerSlider extends StatefulWidget {
  final double width;
  const BannerSlider({super.key, required this.width});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> banners = [
    'assets/images/banner_bg.png',
    'assets/images/banner_bg.png',
    'assets/images/banner_bg.png',
    'assets/images/banner_bg.png',
    'assets/images/banner_bg.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 136,
          width: widget.width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: PageView.builder(
              controller: _pageController,
              itemCount: banners.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(banners[index], fit: BoxFit.cover),
                    Positioned(
                      left: widget.width / 30,
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
                  ],
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(banners.length, (index) {
            final isActive = index == _currentPage;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    isActive
                        ? Colors.black.withOpacity(0.8)
                        : Colors.white.withOpacity(0.4),
              ),
            );
          }),
        ),
      ],
    );
  }
}
