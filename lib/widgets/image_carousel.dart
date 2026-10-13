import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  Widget _card(String imageUrl, String title) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 254, 254),
          fontWeight: FontWeight.bold,
          fontSize: 16,
          shadows: [Shadow(color: Color.fromARGB(255, 255, 128, 0), blurRadius: 6)],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Text(
            'Memes que no supimos donde más poner',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            children: [
              _card('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFKWNoEWwXO1rn4IIzo2wog-JS6a4k-5Qz4CJ012rGIQ&s=10', 'Homero'),
              _card('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYkvrK_fgO6xJhDsZBSimuttJaQMGxv4JCRvwxCt9D4w&s=10', 'Mario'),
              _card('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpuB49qesXGdtIy96wshp7j4NbWUSL8MXEzSTVSyWT9w&s=10', 'Ben10'),
              _card('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4fEojeo3MH5kUFml0DRV8S-eA4Ua5i5orIV4IojL21g&s=10', 'Maluma'),
            ],
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}