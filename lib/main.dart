import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BooksApp(),
    ),
  );
}

class BooksApp extends StatefulWidget {
  const BooksApp({super.key});

  @override
  State<BooksApp> createState() => _BooksAppState();
}

class _BooksAppState extends State<BooksApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BooksList(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Image.asset('assets/dash.png')),
          Positioned(
            bottom: -80,
            left: -80,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                'assets/images.png',
                height: 280,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BooksList extends StatelessWidget {
  const BooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Center(child: Text('كل الكتب')),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3),
              child: Row(children: [
                Container(
                  height: 80.0,
                  width: 60.0,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'صورة الكتاب',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                const Center(
                  child: Text('قصص الأنبياء'),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Row(children: [
                Container(
                  height: 80.0,
                  width: 60.0,
                  color: Colors.blue,
                  child: const Center(
                      child: Text(
                    'صورة الكتاب',
                    textAlign: TextAlign.center,
                  )),
                ),
                const SizedBox(width: 10.0),
                const Center(
                  child: Text('قصص الأنبياء'),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Row(children: [
                Container(
                  height: 80.0,
                  width: 60.0,
                  color: Colors.blue,
                  child: const Center(
                      child: Text(
                    'صورة الكتاب',
                    textAlign: TextAlign.center,
                  )),
                ),
                const SizedBox(width: 10.0),
                const Center(
                  child: Text('قصص الأنبياء'),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Row(children: [
                Container(
                  height: 80.0,
                  width: 60.0,
                  color: Colors.blue,
                  child: const Center(
                      child: Text(
                    'صورة الكتاب',
                    textAlign: TextAlign.center,
                  )),
                ),
                const SizedBox(width: 10.0),
                const Center(
                  child: Text('قصص الأنبياء'),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
