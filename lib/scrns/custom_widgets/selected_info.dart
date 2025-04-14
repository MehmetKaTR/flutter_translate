import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SelectedInfo extends StatefulWidget {
  const SelectedInfo({super.key});

  @override
  _SelectedInfoState createState() => _SelectedInfoState();
}

class _SelectedInfoState extends State<SelectedInfo> {
  bool _isStoryCreated =
      false; // Hikaye üretildi mi kontrol etmek için bir flag
  bool _isLoading =
      false; // Hikaye oluşturulurken loading durumunu kontrol etmek için
  String _story = ''; // Hikaye verisini tutmak için bir değişken

  // Hikaye oluşturma fonksiyonu
  Future<void> _createStory() async {
    setState(() {
      _isLoading = true; // Loading başlatılıyor
    });

    final response = await http.post(
      Uri.parse('http://10.0.2.2:8000/generate'), // Android emulator için
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'words': ['trade', 'brave', 'firm'],
        'topic': 'Academic',
        'level': 'B2',
        'sentiment': 'Surprised',
        'length': 'Medium',
        'word_frequencies': ['x2', 'x2', 'x3'],
      }),
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      setState(() {
        _story = responseData['story']; // Hikaye verisini alıyoruz
        _isStoryCreated = true; // Hikaye oluşturuldu flag'ini true yapıyoruz
        _isLoading = false; // Loading durumu kapatılıyor
      });

      // Hikaye başarıyla oluşturulduysa bir popup mesajı göster
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Story created successfully!')));
    } else {
      // Hata mesajı
      setState(() {
        _isStoryCreated = false;
        _isLoading = false; // Loading durumu kapatılıyor
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to create story')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 162,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          // Create Story Button (right docked, smaller)
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap:
                  _isLoading
                      ? null
                      : _createStory, // Eğer loading ise buton pasif olsun
              child: Container(
                width:
                    MediaQuery.of(context).size.width * 0.35, // Smaller width
                height: 45,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                margin: const EdgeInsets.only(right: 16),
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      // veya Flexible
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Create Story',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Read Story Button (bottom center, larger)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: GestureDetector(
                onTap:
                    _isStoryCreated
                        ? () {
                          // Read Story butonuna tıklandığında yeni bir sayfaya yönlendiriyoruz
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StoryPage(story: _story),
                            ),
                          );
                        }
                        : null, // Eğer hikaye oluşturulmamışsa buton devre dışı
                child: Container(
                  width:
                      MediaQuery.of(context).size.width *
                      0.65, // Orantılı genişlik
                  height: 60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                  decoration: ShapeDecoration(
                    color:
                        _isStoryCreated
                            ? Colors.black
                            : Colors.grey, // Renk değişimi
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        _isLoading
                            ? 'Creating Story...'
                            : 'Read Story', // Dinamik metin
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Eğer loading varsa, ekranda bir circular indicator göster
          if (_isLoading) Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}

// Story sayfası
class StoryPage extends StatelessWidget {
  final String story;

  const StoryPage({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Generated Story')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            story,
            style: TextStyle(fontSize: 16, fontFamily: 'Inter', height: 1.6),
          ),
        ),
      ),
    );
  }
}
