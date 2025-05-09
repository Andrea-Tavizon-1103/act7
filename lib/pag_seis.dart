import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Punto de entrada principal de la app
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PVII(),
    );
  }
}

/// Pantalla con AppBar y el CustomPaint
class PVII extends StatelessWidget {
  const PVII({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pac-Man Demo'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 212, 198, 243),
      ),
      backgroundColor: Colors.black,
      body: const Center(
        child: PacManPainterWidget(),
      ),
    );
  }
}

/// Widget que contiene el CustomPaint y el texto
class PacManPainterWidget extends StatelessWidget {
  const PacManPainterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 250,
      child: CustomPaint(
        painter: PacManPainter(),
        child: const Center(
          child: Text(
            'This is Pac-Man',
            style: TextStyle(
              color: Colors.black,
              backgroundColor: Colors.white54,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

/// Pintor de Pac-Man
class PacManPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.yellow;
    final center = Offset(size.width / 2, size.height / 2);

    canvas.drawArc(
      Rect.fromCenter(center: center, width: 250, height: 250),
      0.4,
      2 * 3.14 - 0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
