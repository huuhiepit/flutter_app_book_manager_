import 'package:app_book/resource/ratings.dart';
import 'package:app_book/screen/book_details.dart';
import "package:flutter/material.dart";

class BooksTile extends StatelessWidget {
  final String imgAssetPath, title, author, description, categorie;
  final int rating;
  BooksTile(
      {required this.imgAssetPath,
      required this.title,
      required this.author,
      required this.description,
      required this.categorie,
      required this.rating});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BookDetails(
                      imgAssetPath: imgAssetPath,
                      title: title,
                      description: description,
                      categorie: categorie,
                      rating: rating,
                      author: author,
                    )));
      },
      child: Container(
        height: 200,
        margin: EdgeInsets.only(right: 16),
        alignment: Alignment.bottomLeft,
        child: Stack(
          children: <Widget>[
            Container(
              height: 180,
              alignment: Alignment.bottomLeft,
              child: Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 140,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 110,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            author,
                            style: TextStyle(
                              color: Colors.blue[800],
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 24,
                          ),
                          Spacer(),
                          Row(
                            children: <Widget>[
                              Ratings(rating: rating),
                              Spacer(),
                              Text(
                                categorie,
                                style: TextStyle(
                                  color: Color(0xff007084),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 180,
              margin: EdgeInsets.only(left: 12, top: 6),
              child: Image.asset(
                imgAssetPath,
                height: 150,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
