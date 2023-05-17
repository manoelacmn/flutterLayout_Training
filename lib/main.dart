import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget>{
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount++;
        _isFavorited = true;
      }
    });
    }


  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [Container(
      padding: const EdgeInsets.all(0),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        alignment: Alignment.centerRight,
      icon: (_isFavorited
        ? const Icon(Icons.star)
        : const Icon(Icons.star_border)),
        color: Colors.red[500],
        onPressed: _toggleFavorite,
      ),
    ),
      SizedBox(
        width: 18,
        child: SizedBox(
          child: Text("$_favoriteCount")
        )
      )
    ],
    );
    throw UnimplementedError();
  }}



Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

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
      // Icon(
      //   Icons.star,
      //   color: Colors.red[500],
      // ),
      // const Text("41")
      const FavoriteWidget(),
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
        body: Column(children: [ Image.asset("images/lake.jpg",width: 600,height: 240,fit: BoxFit.cover,),  titleSection, buttonSection, textSection]),
      ),
    );
  }
}
