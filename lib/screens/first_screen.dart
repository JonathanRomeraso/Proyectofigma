import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, David 👋",
                    
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://via.placeholder.com/50"), // Imagen de perfil
                  )
                ],
              ),
              const SizedBox(height: 5),
              Text(
                "Explore the world",
                
              ),
              const SizedBox(height: 15),
              
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search places",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.tune),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),

              const SizedBox(height: 20),

              // Filter Buttons
              Row(
                children: [
                  FilterChipWidget(label: "Most Viewed", isSelected: true),
                  const SizedBox(width: 10),
                  FilterChipWidget(label: "Nearby"),
                  const SizedBox(width: 10),
                  FilterChipWidget(label: "Latest"),
                ],
              ),

              const SizedBox(height: 20),

              // Places List
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Mount Fuji",
                      location: "Tokyo, Japan",
                      rating: 4.8,
                    ),
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Andes",
                      location: "South America",
                      rating: 4.7,
                    ),
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Andes",
                      location: "South America",
                      rating: 4.7,
                    ),
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Andes",
                      location: "South America",
                      rating: 4.7,
                    ),
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Andes",
                      location: "South America",
                      rating: 4.7,
                    ),
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Andes",
                      location: "South America",
                      rating: 4.7,
                    ),
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Andes",
                      location: "South America",
                      rating: 4.7,
                    ),
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Andes",
                      location: "South America",
                      rating: 4.7,
                    ),
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Andes",
                      location: "South America",
                      rating: 4.7,
                    ),
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Andes",
                      location: "South America",
                      rating: 4.7,
                    ),
                    PlaceCard(
                      imageUrl: "https://via.placeholder.com/300",
                      placeName: "Andes",
                      location: "South America",
                      rating: 4.7,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.watch_later), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.black,
      ),
    );
}

// Widget para cada tarjeta de destino
class PlaceCard extends StatelessWidget {
  final String imageUrl;
  final String placeName;
  final String location;
  final double rating;

  const PlaceCard({
    required this.imageUrl,
    required this.placeName,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  placeName,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.white, size: 14),
                    Text(
                      location,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 14),
                    Text(
                      rating.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget para los botones de filtro
class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;

  const FilterChipWidget({required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      backgroundColor: Colors.grey[200],
      selectedColor: Colors.black,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
      ),
      onSelected: (bool value) {},
    );
  }
}