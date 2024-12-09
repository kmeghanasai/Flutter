import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CatSearch(),
  ));
}

class CatSearch extends StatelessWidget {
  const CatSearch({super.key});

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
            Container(
              color: Colors.grey[400],
              padding: const EdgeInsets.fromLTRB(30, 30, 10, 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Intro to Algorithms',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.grey[800],
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            'Thomas H.Cormen',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.library_books_rounded,
                              color: Colors.grey[800]),
                          const SizedBox(width: 5.0),
                          Text(
                            '2009',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Not Available',
                        style: TextStyle(
                          color: Colors.green[800],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Image(
                    image: NetworkImage('https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1387741681i/108986.jpg'),
                    width: 100,
                    height: 120,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.grey[400],
              padding: const EdgeInsets.fromLTRB(30, 30, 10, 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Intro to Algorithms',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.grey[800],
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            'Thomas H.Cormen',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.library_books_rounded,
                              color: Colors.grey[800]),
                          const SizedBox(width: 5.0),
                          Text(
                            '2009',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Not Available',
                        style: TextStyle(
                          color: Colors.green[800],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Image(
                    image: NetworkImage('https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1387741681i/108986.jpg'),
                    width: 100,
                    height: 120,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.grey[400],
              padding: const EdgeInsets.fromLTRB(30, 30, 10, 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Intro to Algorithms',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.grey[800],
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            'Thomas H.Cormen',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.library_books_rounded,
                              color: Colors.grey[800]),
                          const SizedBox(width: 5.0),
                          Text(
                            '2009',
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Not Available',
                        style: TextStyle(
                          color: Colors.red[800],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Image(
                    image: NetworkImage('https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1387741681i/108986.jpg'),
                    width: 100,
                    height: 120,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
