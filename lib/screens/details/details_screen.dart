import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_book_store_app/models/book_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  void changeColor(int index) {
    setState(() {
      //Change background Color
      _bgColor = books_list[index].color;
      book = books_list[index];
    });
  }

  // void onChanged(index){
  //   setState(() {
  //   currentPage = index;
  //   });
  // }

  late int index;
  late Color _bgColor;
  late Book book;

  @override
  void initState() {
    index = Get.arguments['index'];
    book = books_list[index];
    _bgColor = book.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    PageController pageController = PageController(
      initialPage: index,
      viewportFraction: 0.6,
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'HOME',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: size.height * .2,
            width: size.width,
            decoration: BoxDecoration(
              color: _bgColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                height: size.height * .3,
                // color: Colors.amber,
                child: PageView.builder(
                  itemCount: books_list.length,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return Container(
                      // clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image.asset(books_list[index].image,
                          fit: BoxFit.fitHeight),
                    );
                  },
                  onPageChanged: (index) {
                    // onChanged(index);
                    changeColor(index);
                  },
                ),
              ),
              const SizedBox(height: 25),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                child: Text(
                  book.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                book.author.toUpperCase(),
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: 15),
              Container(
                width: size.width * .6,
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Biography'),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'R${book.price}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Text("${book.noPages} pages")
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  // color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Container(
                              alignment: Alignment.center,
                              // padding: const EdgeInsets.symmetric(horizontal: 25),
                              width: size.width * .3,
                              child: Text(
                                'SAMPLE',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Container(
                              // padding: const EdgeInsets.symmetric(horizontal: 25),
                              alignment: Alignment.center,
                              width: size.width * .3,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.black,
                                    size: 22,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'WISHLIST',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        book.description,
                        textAlign: TextAlign.justify,
                        maxLines: 5,
                      ),
                      Container(
                        // padding: const EdgeInsets.symmetric(horizontal: 30),
                        width: size.width,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                          ),
                          child: Text("BUY | R${book.price}",
                              style: const TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
