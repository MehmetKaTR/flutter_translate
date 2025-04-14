import 'package:flutter/material.dart';
import 'custom_widgets/level_selector.dart';
import 'custom_widgets/wordlist_widget.dart';
import 'custom_widgets/selected_info.dart';
import 'si_words_list.dart';

class StoryIllust extends StatelessWidget {
  const StoryIllust({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            alignment: Alignment.center,
            children: [
              const Center(
                child: Text(
                  'Story Illustration',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              /*
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: GestureDetector(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              */
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          margin: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.02), // Dynamically set height
                story_illust_sections(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Column story_illust_sections(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  //double height = MediaQuery.of(context).size.height;

  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        height: 48,
        color: const Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Ortalamayı sağlıyoruz
          crossAxisAlignment: CrossAxisAlignment.center, // Dikeyde ortalama
          children: [
            SizedBox(
              width: width * 0.25,
              child: Text(
                'WORDS',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.67,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(width: width * 0.05), // spacing
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Select words for your story',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: const Color.fromARGB(125, 0, 0, 0),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SIWordsList(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.arrow_forward_ios, size: 22),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 16),
      LevelSelector(
        title: 'Topic',
        items: [
          {'value': 'Casual', 'desc': 'Casual'},
          {'value': 'Formal', 'desc': 'Formal'},
          {'value': 'Business', 'desc': 'Business'},
          {'value': 'Academic', 'desc': 'Academic'},
          {'value': 'Entertainment', 'desc': 'Entertainment'},
          {'value': 'Travel', 'desc': 'Travel'},
        ],
      ),
      const SizedBox(height: 16), // İki selector arası boşluk için
      LevelSelector(
        title: 'Level',
        items: [
          {'value': 'A1', 'desc': 'Beginner'},
          {'value': 'A2', 'desc': 'Elementary'},
          {'value': 'B1', 'desc': 'Intermediate'},
          {'value': 'B2', 'desc': 'Upper-Intermediate'},
          {'value': 'C1', 'desc': 'Advanced'},
          {'value': 'C2', 'desc': 'Proficient'},
        ],
      ),
      const SizedBox(height: 16), // İki selector arası boşluk için
      LevelSelector(
        title: 'SENTIMENT',
        items: [
          {'value': 'Normal', 'desc': 'No emotion'},
          {'value': 'Happy', 'desc': 'Joyful'},
          {'value': 'Angry', 'desc': 'Furious'},
          {'value': 'Surprised', 'desc': 'Astonished'},
          {'value': 'Fearful', 'desc': 'Scared'},
          {'value': 'Sad', 'desc': 'Melancholic'},
        ],
      ),
      const SizedBox(height: 16),
      LevelSelector(
        title: 'LENGHT',
        items: [
          {'value': 'Short', 'desc': 'Short story'},
          {'value': 'Medium', 'desc': 'Medium story'},
          {'value': 'Long', 'desc': 'Long story'},
        ],
      ),
      const SizedBox(height: 16),
      WordListWidget(
        wordsData: [
          {
            'word': 'reckless',
            'category': 'Vocabulary',
            'frequency': 2,
            'color': Colors.red,
          },
          {
            'word': 'brave',
            'category': 'Adjective',
            'frequency': 3,
            'color': Colors.yellow,
          },
          {
            'word': 'harmony',
            'category': 'Noun',
            'frequency': 1,
            'color': Colors.deepPurpleAccent,
          },
          {
            'word': 'fragile',
            'category': 'Adjective',
            'frequency': 5,
            'color': Colors.greenAccent,
          },
          {
            'word': 'sunshine',
            'category': 'Noun',
            'frequency': 4,
            'color': Colors.blueAccent,
          },
        ],
      ),
      const SizedBox(height: 16),
      SelectedInfo(),
    ],
  );
}
