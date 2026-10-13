import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PromotionalBanner(
          title: '¡Descubre los nuevos momazos más cercanos a ti!',
          description: 'Vamos, dale click, se que quieres.',
          icon: Icons.local_fire_department,
          backgroundColor: Color.fromARGB(255, 255, 115, 0),
          buttonText: 'Vamo Ba boniii',
        ),
        ImageCarousel(),
        PostCard(
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThCKB-8VC5k63Z2AANYGkZEpfklYXPDISxbKpxATHLlQ&s=10',
          userName: 'La Manuela',
          imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnsVWRQ1LipUynnZe4iWSYt3SLyMg82JSAVQpMkqPzsA&s=10',
          description: 'Mirar a la ventana es como mirar a la pared, pero hay una ventana.',
        ),
        PostCard(
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIa3aZtk3dXChvZT9Zu9-JjPQklJbltR72PH-w2UwTsA&s=10',
          userName: 'Anonimato',
          imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBIzVBS_X0J9eeKS1NiuaVDt4x8xrOKU-TrvSboP5rl0ZnqpoV26VEBEw&s=10',
          description: 'Yo terminando mi pocima especial anti-hielo nivel 5(me hice un cafe).',
        ),
      ],
    );
  }
}