import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout: Galang Bagus Erkamta',
     home: Scaffold(
        body: ListView(
          children: [
             Image.asset(
              'images/gunung.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),  
            titleSection,//row dengan teks, ikon, angka
            buttonSection, //row dengan 3 kolom berisi ikon + teks
            textSection, //teks panjang 
          ],
        ),
     ),
    );
  }
}
// title section
Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Banyuwangi, Indonesia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /* soal 3*/
      const Icon(
       Icons.star,
        color: Colors.red)
     ,
      const Text('41'),
    ],
  ),
);

Column _buildButtonColumn(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: Colors.blue),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.blue,
          ),
        ),
      ),
    ],
  );
}

// button section
Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Icons.call, 'CALL'),
    _buildButtonColumn(Icons.near_me, 'ROUTE'),
    _buildButtonColumn(Icons.share, 'SHARE'),
  ],
);




// text section
Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Gunung di Banyuwangi terkenal dengan pemandangan alamnya yang indah. '
    'Tempat ini sering menjadi tujuan wisatawan lokal maupun mancanegara '
    'untuk hiking, berkemah, dan menikmati keindahan alam sekitar.',
    softWrap: true,
  ),
);
