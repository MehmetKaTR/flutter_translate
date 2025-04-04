import 'package:flutter/material.dart';
import 'freq_used.dart';
import '_banner.dart' as app_banner;
import 'custom_bottom_bar.dart';
import 'custom_search_bar.dart';
import '_pills.dart';
import '_home_stories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          toolbarHeight: 80.0,
          title: CustomSearchBar(), // Burada CustomSearchBar'ı kullandık
        ),
        body: Column(
          children: [
            const SizedBox(height: 2),
            const Pills(), // Burada Pills widget'ını kullandık
            const SizedBox(height: 30),
            const app_banner.Banner(), // Burada Banner widget'ını kullandık
            const SizedBox(height: 21),
            const FreqUsed(), // Burada FreqUsed widget'ını kullandık
            const SizedBox(height: 25),
            const HomeStories(), // Burada HomeStories widget'ını kullandık
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(
            bottom: 21,
          ), // Burada alt kısımdan 21 px padding ekliyoruz
          child: CustomBottomBar(),
        ),
      ),
    );
  }
}
