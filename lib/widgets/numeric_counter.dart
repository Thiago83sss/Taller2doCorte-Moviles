import 'package:flutter/material.dart';

class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {
  int _counter = 0;
  final int _min = 0;
  final int _max = 99;

  void _increment() {
    if (_counter < _max) {
      setState(() {
        _counter++;
      });
    }
  }

  void _decrement() {
    if (_counter > _min) {
      setState(() {
        _counter--;
      });
    }
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 144, 144, 144),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Cantidad de veces que Jefry hace Feiks',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            '$_counter',
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
              color: _counter == _max ? const Color.fromARGB(255, 85, 255, 0) : const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _counter > _min ? _decrement : null,
                child: const Text('Milagrosamente lo hizo'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: _counter < _max ? _increment : null,
                child: const Text('Añadele por noob'),
              ),
            ],
          ),
          const SizedBox(height: 12),
          TextButton(onPressed: _reset, child: const Text('Ya te cansaste chavito?', style: TextStyle(color: Color.fromARGB(255, 71, 71, 71)))),
        ],
      ),
    );
  }
}