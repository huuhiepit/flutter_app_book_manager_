import 'package:flutter/material.dart';
import 'package:app_book/resource/ratings.dart';
import 'package:app_book/screen/home_screen.dart';

class BookDetails extends StatelessWidget {
  final String imgAssetPath, title, description, categorie, author;
  final int rating;
  BookDetails(
      {required this.imgAssetPath,
      required this.title,
      required this.description,
      required this.categorie,
      required this.rating,
      required this.author,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Home_Screen(),
                        ),
                      );
                    },
                  ),
                  Spacer(),
                  Icon(Icons.favorite_rounded, color: Colors.red, size: 30),
                  SizedBox(
                    width: 14,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.blue,
                    size: 30,
                  ),
                ],
              ),
            ),
            Image.asset(
              imgAssetPath,
              width: 200,
              fit: BoxFit.fitWidth,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w700,
                              fontSize: 21,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            author,
                            style: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Ratings(rating: rating),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            categorie,
                            style: TextStyle(color: Colors.green[900]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      letterSpacing: 0.6,
                      wordSpacing: 0.6,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.shade900,
                              borderRadius: BorderRadius.circular(12),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: Text(
                            "Read Book",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: Text(
                            "More info",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        onPressed: () {},
      ),
    );
  }
}
