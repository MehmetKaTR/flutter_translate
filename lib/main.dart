import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'scrns/custom_widgets/custom_bottom_bar.dart';
import 'scrns/home_page.dart'; // HomePage sayfası import edilmiştir
import 'scrns/story_illust.dart'; // ShowIllustrations sayfası import edilmiştir
import 'scrns/si_words_list.dart'; // ShowIllustrations sayfası import edilmiştir
//import 'scrns/bookmark_page.dart'; // BookmarkPage sayfası import edilmiştir
//import 'scrns/folder_page.dart'; // FolderPage sayfası import edilmiştir
//import 'scrns/profile_page.dart'; // ProfilePage sayfası import edilmiştir

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Arka planı şeffaf yap
      statusBarIconBrightness: Brightness.dark, // Simge rengini siyah yap
      statusBarBrightness: Brightness.light, // iOS için
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: const Wrapper(),
    );
  }
}

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getBodyContent() {
    switch (_selectedIndex) {
      case 0:
        return const HomePage();
      case 1:
        return StoryIllust();
      case 2:
        return SIWordsList();
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 24.0),
        child: _getBodyContent(),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CustomBottomBar(onItemTapped: _onItemTapped),
      ),
    );
  }
}
