import 'package:flutter/material.dart';
import 'package:practica_figma/views/filter_button_group.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26, top: 34, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, David 👋",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Montserrat",
                      color: const Color.fromRGBO(47, 47, 47, 1),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://via.placeholder.com/50",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 26),
              child: Text(
                "Explore the world",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Inter",
                  color: const Color.fromRGBO(136, 136, 136, 1),
                  letterSpacing: 0.5,
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////////////
            // Search Bar
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 38),
              child: SizedBox(
                height: 58,
                child: TextField(
                  style: TextStyle(
                    fontFamily: "Roboto",
                    color: const Color.fromRGBO(136, 136, 136, 1),
                  ),
                  decoration: InputDecoration(
                    hintText: "Search places",
                    hintStyle: TextStyle(
                      fontFamily: "Roboto",
                      color: const Color.fromRGBO(136, 136, 136, 1),
                    ),
                    contentPadding: EdgeInsets.only(left: 31),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 26),
                          child: Image.asset("/icons/line_icon.png", width: 32),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.23),
                          child: Image.asset(
                            "/icons/filter_icon.png",
                            width: 24,
                            height: 21.77,
                          ),
                        ),
                      ],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(210, 210, 210, 1),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(210, 210, 210, 1),
                        width: 2,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 42),
            ////////////////////////////////////////////////////////////////////////////////////
            // Filter Buttons
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 28),
              child: FilterButtonGroup(),
            ),
          ],
        ),
      ),

      ////////////////////////////////////////////////////////////////////////////////////
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.watch_later), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        currentIndex: 0,
      ),
    );
  }
}
