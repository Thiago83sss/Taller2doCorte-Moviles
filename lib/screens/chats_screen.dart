import 'package:flutter/material.dart';
import '../widgets/chat_title.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
    Widget build(BuildContext context) {
      return ListView(
      children: const [
        ChatTitle(
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThCKB-8VC5k63Z2AANYGkZEpfklYXPDISxbKpxATHLlQ&s=10',
          name: 'La Manuela',
          lastMessage: '¿como vas tilin?',
          time: '3:45',
          unread: 1,
        ),
        ChatTitle(
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIa3aZtk3dXChvZT9Zu9-JjPQklJbltR72PH-w2UwTsA&s=10',
          name: 'Anonimato',
          lastMessage: 'Nolo hagas nene.',
          time: '06:29',
          unread: 5,
        ),
        ChatTitle(
          avatarUrl:'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTQFXE2Pf3bU29WCQ_3cutM_5ACJXNoc7aI2v4O8hnZr8YxOtKt',
          name: 'The Kevin',
          lastMessage: 'Quien es Jefry??',
          time: 'Ayer',
          unread: 6,
        ),
        ChatTitle(
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-d4GU07iG6HPV4DI16-0GuQ2iMXe8qKQbs_9411XcYB4AEicNYUo-5K78&s=10',
          name: 'Jefry"Humpty Dumpty"',
          lastMessage: 'Volviste a hablar con kevin??',
          time: 'Ayer',
          unread: 10,
        ),
        ChatTitle(
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIdHDnzoXAfXTGCBRQakN03hjGhvjxddMuCv9OYlLADw&s=10',
          name: 'Doctor',
          lastMessage: '¡Tienes cancer Andy!',
          time: 'Lunes',
        ),
        ChatTitle(
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTkUxnPO9PoKuRlwzD4FiMbOaUWB1SuE5OqGHBNKEXmyRx_GxvHW3QpGtv&s=10',
          name: 'Gru-po',
          lastMessage: 'Anonimato: sic sebeeeen',
          time: 'Domingo',
          unread: 9999,
        ),
      ],
    );
  }
}