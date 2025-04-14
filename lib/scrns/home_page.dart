import 'package:flutter/material.dart';
import 'custom_widgets/freq_used.dart';
import 'custom_widgets/_banner.dart' as app_banner;
import 'custom_widgets/custom_search_bar.dart';
import 'custom_widgets/_pills.dart';
import 'custom_widgets/_home_stories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double width = screenWidth - 32;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          automaticallyImplyLeading: false,
          title: SizedBox(width: double.infinity, child: CustomSearchBar()),
          centerTitle: false,
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.02),
                Pills(width: width),
                SizedBox(height: height * 0.04),
                app_banner.BannerSlider(width: width),
                SizedBox(height: height * 0.04),
                FreqUsed(
                  width: width,
                  words: [
                    'reckless',
                    'intel',
                    'swindler',
                    'pawn off',
                    'flutter',
                    'dart',
                    'ethics',
                    'extra',
                  ],
                  colors: [
                    Color(0xFFFF6D6D),
                    Color(0xFFE9FF6D),
                    Color(0xFF6DDFFF),
                    Color(0xFF916DFF),
                    Colors.orange,
                    Colors.cyan,
                    Colors.teal,
                    Colors.brown,
                  ],
                ),
                SizedBox(height: height * 0.02),
                const HomeStories(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
