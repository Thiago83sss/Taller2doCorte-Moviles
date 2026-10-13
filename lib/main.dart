import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/chats_screen.dart';
import 'screens/laboratory_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PlaceOfMemes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 132, 0)),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  String _getTitle() {
    switch (_selectedIndex) {
      case 0:
        return 'PlaceOfMemes - No lo tomaremos en serio';
      case 1:
        return 'Mensajitos UwU';
      default:
        return 'Probame este... digo widget';
    }
  }

  Widget _getBody() {
    switch (_selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const ChatsScreen();
      default:
        return const LaboratoryScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getTitle()),
        backgroundColor: const Color.fromARGB(255, 255, 115, 0),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        actions: const [
          Icon(Icons.notifications_none),
          SizedBox(width: 12),
        ],
      ),
      body: _getBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 115, 0),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Donde mas estaras'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Porque estarias aca?'),
          BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Vente, ta divertido'),
        ],
      ),
    );
  }
}