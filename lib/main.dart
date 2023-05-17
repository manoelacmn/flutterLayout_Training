import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(label,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w400, color: color)))
    ],
  );
}

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.green[400]!, Icons.call, "CALL"),
    _buildButtonColumn(Colors.green[400]!, Icons.near_me, "ROUTE"),
    _buildButtonColumn(Colors.green[400]!, Icons.share, "SHARE")
  ],
);

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text("Crystal Lake",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            const Text("ARIZONA USA", style: TextStyle())
            // const Text("USA ARIZONA",style: TextStyle(color: Colors.grey))
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text("41")
    ],
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(children: [titleSection, buttonSection]),
      ),
    );
  }
}
