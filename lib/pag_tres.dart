import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckboxListTile Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PIV(),
    );
  }
}

class PIV extends StatefulWidget {
  const PIV({Key? key}) : super(key: key);

  @override
  State<PIV> createState() => _PIVState();
}

class _PIVState extends State<PIV> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo CheckboxListTile'),
        backgroundColor: const Color(0xffc496ff),
      ),
      body: Column(
        children: [
          Center(
            child: Card(
              margin: const EdgeInsets.all(20),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  title: const Text(
                    'chekbox list title',
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: const Text('this is a subtitle'),
                  value: _isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isChecked = newValue;
                    });
                  },
                  activeColor: Colors.orangeAccent,
                  checkColor: Colors.white,
                  tileColor: Colors.black12,
                  controlAffinity: ListTileControlAffinity.leading,
                  tristate: true,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[700],
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('¡Volver!'),
            ),
          ),
        ],
      ),
    );
  }
}
