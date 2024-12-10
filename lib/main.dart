import 'package:flutter/material.dart';
import 'info.dart';

void main() {
  runApp(const MaterialApp(
    home: CatSearch(),
  ));
}

class CatSearch extends StatefulWidget {
  const CatSearch({super.key});

  @override
  State<CatSearch> createState() => _CatSearchState();
}

class _CatSearchState extends State<CatSearch> {
  List<Info> information = [
    Info(
        bookName: 'Intro to Algorithms',
        author: 'Thomas H.cormen',
        year: 2009,
        status: 'Available'),
    Info(
        bookName: 'Clean Code',
        author: 'Robert',
        year: 2008,
        status: 'Available'),
    Info(
        bookName: 'Design Patterns',
        author: 'Erich',
        year: 1994,
        status: 'Not Available'),
  ];

  Widget infotemplate(info) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 2.5,
              blurRadius: 2,
            ),
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info.bookName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey[800],
                    ),
                    const SizedBox(width: 5),
                    Text(
                      info.author,
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.library_books_rounded,
                      color: Colors.grey[800],
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${info.year}',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  info.status,
                  style: TextStyle(
                    color: info.status == 'Available' ? Colors.green[800] : Colors.red[800],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            // SizedBox(width: 20),
            Spacer(),
            Image(
              image: NetworkImage('https://mit-press-us.imgix.net/covers/9780262530910.jpg?auto=format&w=298'),
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'KRC Library Search',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(140, 10, 130, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800],
                  ),
                  child: const Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10.0),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800],
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            ...information.map((info) => infotemplate(info)).toList(),
          ],
        ),
      ),
    );
  }
}
