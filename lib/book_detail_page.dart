import 'dart:ui';

import 'package:flutter/material.dart';
import 'book.dart'; // Pastikan Anda memiliki import yang benar untuk kelas Book

class BookDetailPage extends StatelessWidget {
  final Book book;

  const BookDetailPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.name), // Judul AppBar sesuai dengan judul buku
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar buku dengan latar belakang gambar di-zoom dan di-blur
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  book.image,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Image.asset(
                    book.image,
                    width: 120,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      book.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(book.rate.toString()),
                          Text('Rating'),
                        ],
                      ), // Rating buku
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(book.page.toString()),
                          Text('Page'),
                        ],
                      ), // Jumlah halaman buku
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(book.language),
                          Text('Language'),
                        ],
                      ), // Bahasa buku
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    book.description,
                    style: TextStyle(fontSize: 16),
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
