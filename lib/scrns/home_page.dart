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
    double width = MediaQuery.of(context).size.width - 32; // container width
    double height = MediaQuery.of(context).size.height; // Screen height

    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 255, 0, 0),
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomSearchBar(),
            ),
            automaticallyImplyLeading: false,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.03), // Dynamically set height
                Pills(width: width),
                SizedBox(height: height * 0.04), // Dynamically set height
                app_banner.BannerSlider(width: width),
                SizedBox(height: height * 0.04), // Dynamically set height
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
                    Colors.brown, // Bu 8. eleman gösterilmeyecek
                  ],
                ),
                SizedBox(height: height * 0.02), // Dynamically set height
                const HomeStories(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
