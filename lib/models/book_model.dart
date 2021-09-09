import 'dart:math';

import 'package:flutter/material.dart';

class Book {
  final String title;
  final String author;
  final String genre;
  final String description;
  final String image;
  final double price;
  final int noPages;
  final Color color;

  Book({
    required this.title,
    required this.author,
    required this.genre,
    required this.description,
    required this.image,
    required this.price,
    required this.noPages,
    required this.color,
  });
}

int _randomNumber() {
  int min = 150;
  int max = 500;
  final rnd = new Random();
  return min + rnd.nextInt(max - min);
}

List<Book> books_list = [
  Book(
    title: 'A Slow Fire Burning',
    author: 'Paula Hawkins',
    genre: 'Thriller',
    description:
        "'Shocking, moving, full of heart . . . Laced with humour and packed with moments of sheer horror, A Slow Fire Burning shows a writer at the height of her powers.' Observer (Thriller of the Month) 'What is wrong with you?' Laura has spent most of her life being judged. ",
    image: 'assets/images/books/A Slow Fire Burning.jpg',
    price: 295,
    noPages: _randomNumber(),
    color: Colors.amber,
  ),
  Book(
    title: 'All Systems Red: The Murderbot Diaries',
    author: 'Martha Wells',
    genre: 'Crime & Mystery',
    description:
        "'As a heartless killing machine, I was a complete failure.'In a corporate-dominated spacefaring future, planetary missions must be approved and supplied by the Company.",
    image: 'assets/images/books/All Systems Red The Murderbot Diaries.jpg',
    price: 317.83,
    noPages: _randomNumber(),
    color: Colors.grey,
  ),
  Book(
    title: 'Beach Read',
    author: 'Emily Henry',
    genre: 'Women',
    description:
        "'Original, sparkling bright, and layered with feeling...'--Sally Thorne, author of The Hating Game A romance writer who no longer believes in love and a literary writer stuck in a rut engage in a summer-long challenge that may just upend everything they believe about happily ever afters.",
    image: 'assets/images/books/Beach Read.jpg',
    price: 318.25,
    noPages: _randomNumber(),
    color: Colors.yellow.shade700,
  ),
  Book(
    title: 'Rich Dad Poor Dad',
    author: 'Robert T. Kiyosaki',
    genre: ' Business & Finance ',
    description:
        "What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not! ",
    image: 'assets/images/books/Rich Dad Poor Dad.jpg',
    price: 129,
    noPages: _randomNumber(),
    color: Colors.purple.shade800,
  ),
  Book(
    title: 'The Keeper of Happy Endings',
    author: 'Barbara Davis',
    genre: ' Family Life Fiction',
    description:
        "Soline Roussel is well schooled in the business of happy endings. For generations her family has kept an exclusive bridal salon in Paris, where magic is worked with needle and thread.",
    image: 'assets/images/books/The Keeper of Happy Endings.jpg',
    price: 156,
    noPages: _randomNumber(),
    color: Colors.orange.shade400,
  ),
  Book(
    title: 'Colors of Truth',
    author: ' Paula Paul ',
    genre: 'Coming of Age Fiction',
    description:
        "Colors of Truth follows the stories of Caroline and Pearlie, two teenage girls growing up in Texas in the 1950s. Though both girls are the same age and growing up in the same town, their lives are very different.",
    image: 'assets/images/books/Colors of Truth.jpg',
    price: 204.41,
    noPages: _randomNumber(),
    color: Colors.brown.shade300,
  ),
  Book(
      title: 'The Nature of Middle-earth',
      author: 'J.R.R. Tolkien',
      genre: 'Mythology & Folk Tales',
      description:
          "The first ever publication of J.R.R. Tolkien’s final writings on Middle-earth, covering a wide range of subjects and perfect for those who have read and enjoyed The Silmarillion, The Lord of the Rings, Unfinished Tales, and The History of Middle-earth, and want to learn more about Tolkien’s magnificent world.",
      image: 'assets/images/books/The Nature of Middle-earth.jpg',
      price: 272.54,
      noPages: _randomNumber(),
      color: Colors.indigo),
  Book(
    title: 'Atomic Habits',
    author: 'James Clear',
    genre: ' Social Psychology & Interactions',
    description:
        "No matter your goals, Atomic Habits offers a proven framework for improving--every day. James Clear",
    image: 'assets/images/books/Atomic Habits.jpg',
    price: 241.32,
    noPages: _randomNumber(),
    color: Colors.orange,
  ),
  Book(
    title: 'Greenlights ',
    author: 'Matthew McConaughey ',
    genre: 'Thriller',
    description:
        "Unflinchingly honest and remarkably candid, Matthew McConaughey’s book invites us to grapple with the lessons of his life as he did—and to see that the point was never to win, but to understand.",
    image: 'assets/images/books/Greenlights.jpg',
    price: 386.25,
    noPages: _randomNumber(),
    color: Colors.orange.shade200,
  ),
  Book(
    title: 'The Body Keeps the Score',
    author: 'Bessel van der Kolk',
    genre: 'Alternative Therapies',
    description:
        "'Essential reading for anyone interested in understanding and treating traumatic stress and the scope of its impact on society.' —Alexander McFarlane, Director of the Centre for Traumatic Stress Studies ",
    image: 'assets/images/books/The Body Keeps the Score.jpg',
    price: 425.14,
    noPages: _randomNumber(),
    color: Colors.blue.shade400,
  ),
  Book(
      title: "Can't Hurt Me",
      author: 'David Goggins',
      genre: ' Motivational Self-Help',
      description:
          "For David Goggins, childhood was a nightmare -- poverty, prejudice, and physical abuse colored his days and haunted his nights. But through self-discipline, mental toughness, and hard work, Goggins transformed himself from a depressed, overweight young man with no future into a U.S. Armed Forces icon and one of the world's top endurance athletes.",
      image: "assets/images/books/Can't Hurt Me.jpg",
      price: 262.75,
      noPages: _randomNumber(),
      color: const Color(0xFFFFD700)),
];
