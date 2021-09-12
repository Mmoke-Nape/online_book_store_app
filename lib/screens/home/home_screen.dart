import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_book_store_app/components/book_card.dart';
import 'package:online_book_store_app/models/book_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * .45,
                width: size.width,
                decoration: BoxDecoration(
                  color: books_list[0].color,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Book Store',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: const InputDecoration(
                        suffixIcon:
                            Icon(Icons.search, color: Colors.black, size: 30),
                        // fillColor: Colors.white,
                        // filled: true,
                        hintText: 'Search for books',
                        hintStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const CategoryHeading(
                      mainTitle: 'Most Popular', secondaryTitle: 'SEE ALL'),
                  const SizedBox(height: 30),
                  Container(
                    height: size.height * .25,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: books_list.length - 5,
                        itemBuilder: (context, index) {
                          return BookCard(
                            size: size,
                            isGenre: false,
                            book: books_list[index],
                            index: index,
                          );
                        }),
                  ),
                  const SizedBox(height: 35),
                  const CategoryHeading(
                      mainTitle: 'Newest & trending',
                      secondaryTitle: 'SEE ALL'),
                  const SizedBox(height: 35),
                  Container(
                    height: size.height * .33,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: books_list.length,
                        itemBuilder: (context, index) {
                          return BookCard(
                            size: size,
                            isGenre: true,
                            book: books_list[index],
                            index: index,
                          );
                        }),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class CategoryHeading extends StatelessWidget {
  const CategoryHeading({
    Key? key,
    required this.mainTitle,
    required this.secondaryTitle,
  }) : super(key: key);

  final String mainTitle;
  final String secondaryTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mainTitle,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Text(secondaryTitle),
        ],
      ),
    );
  }
}
