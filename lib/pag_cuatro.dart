import 'package:flutter/material.dart';

class PV extends StatelessWidget {
  const PV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffe389),
        centerTitle: true, // <-- Centra el título
        title: const Text(
          'Pantalla Cuatro',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: PV2(),
      ),
    );
  }
}

class PV2 extends StatelessWidget {
  const PV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        Text('Row 1'),
        Text('Row 2'),
        Text('Row 3'),
        Text('Row 4'),
        Text('Row 5'),
        Text('Flutter Mapp'),
      ],
    );
  }
}
