import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage() : super();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.amber,
//       child: const Text("Hola!", style: TextStyle(color: Colors.white),),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('i am groot!'),
    );
  }
}
