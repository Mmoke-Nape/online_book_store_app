import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_book_store_app/models/book_model.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    Key? key,
    required this.size,
    required this.isGenre,
    required this.book,
    required this.index,
  }) : super(key: key);

  final Size size;
  final bool isGenre;
  final Book book;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('detailsScreen', arguments: {'index': index});
      },
      child: Container(
        margin: const EdgeInsets.only(left: 30),
        width: isGenre ? size.width * .23 : size.width * .7,
        height: isGenre ? size.height * .1 : size.height * 2,
        // color: Colors.green
        child: Flex(
          direction: isGenre ? Axis.vertical : Axis.horizontal,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Image.asset(book.image, fit: BoxFit.fitHeight),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: size.width * .4,
              // color: Colors.pink,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!isGenre)
                    Text(
                      book.author.toUpperCase(),
                      style: TextStyle(color: Colors.black87),
                    ),
                  const SizedBox(height: 5),
                  Text(
                    book.title,
                    maxLines: 2,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: isGenre
                        ? null
                        : Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: isGenre ? 3 : 10),
                  if (!isGenre)
                    Text(
                      book.genre,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black87),
                    ),
                  if (!isGenre) const SizedBox(height: 10),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      'R${book.price}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
