import 'package:flutter/material.dart';

class LevelSelector extends StatefulWidget {
  final String title;
  final List<Map<String, String>> items;

  const LevelSelector({super.key, required this.title, required this.items});

  @override
  State<LevelSelector> createState() => _LevelSelectorState();
}

class _LevelSelectorState extends State<LevelSelector> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.items.isNotEmpty ? widget.items[0]['value'] : null;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Ortalamayı sağlıyoruz
        crossAxisAlignment: CrossAxisAlignment.center, // Dikeyde ortalama
        children: [
          // Başlık metni
          SizedBox(
            width: width * 0.25, // Yine genişliği dinamik hale getiriyoruz
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.title.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.67,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          SizedBox(width: width * 0.05), // Aradaki boşluk
          // DropdownButton
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 0), // Sağdaki padding
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: selectedValue,
                  icon: Transform.rotate(
                    angle: -1.5708,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                    decoration: TextDecoration.none,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                  items:
                      widget.items.map((item) {
                        return DropdownMenuItem<String>(
                          value: item['value'],
                          child: Row(
                            children: [
                              Text(item['value'] ?? ''),
                              const SizedBox(width: 8),
                              Text(
                                '(${item['desc']})',
                                style: TextStyle(
                                  color: const Color.fromARGB(87, 0, 0, 0),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
