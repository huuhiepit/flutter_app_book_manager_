import 'package:app_book/data/books.dart';
import 'package:app_book/resource/book_tile.dart';
import 'package:app_book/resource/single_book_tile.dart';
import 'package:flutter/material.dart';
import 'package:app_book/resource/categorie_tile.dart';
import 'package:app_book/screen/add_book.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

String slectedCategorie = "All";

class _Home_ScreenState extends State<Home_Screen> {
  List<String> categories = [
    "All",
    "Recommended",
    "Popular books",
    "My books",
  ];

  late List<BookModel> books;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    books = getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF2F5F9),
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Hi Hiep,",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 14,
                    ),
                    Icon(Icons.search_sharp, size: 30),
                    SizedBox(
                      width: 14,
                    ),
                    Icon(Icons.notifications_none, size: 30),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/background.png",
                height: 150,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 40,
                child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CategorieTile(
                      text: categories[index],
                      isSelected: slectedCategorie == categories[index],
                    );
                  },
                ),
              ),
              Container(
                height: 160,
                child: ListView.builder(
                  itemCount: books.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return BooksTile(
                        imgAssetPath: books[index].imgAssetPath,
                        title: books[index].title,
                        author: books[index].author,
                        description: books[index].description,
                        categorie: books[index].categorie,
                        rating: books[index].rating);
                  },
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "You may also like",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: books.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SingleBookTile(
                        imgAssetPath: books[index].imgAssetPath,
                        title: books[index].title,
                        author: books[index].author,
                        description: books[index].description,
                        categorie: books[index].categorie,
                        rating: books[index].rating);
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddBookPage()));
        },
      ),
    );
  }
}
