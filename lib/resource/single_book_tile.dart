import 'package:flutter/material.dart';
import 'package:app_book/screen/book_details.dart';

class SingleBookTile extends StatelessWidget {
  final String imgAssetPath, title, author, description, categorie;
  final int rating;

  SingleBookTile(
      {required this.imgAssetPath,
      required this.title,
      required this.author,
      required this.description,
      required this.categorie,
      required this.rating,
      Key? key})
      : super(key: key);

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
                      author: author,
                      description: description,
                      categorie: categorie,
                      rating: rating,
                    )));
      },
      child: Container(
        width: 110,
        padding: EdgeInsets.only(right: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              imgAssetPath,
              height: 140,
              fit: BoxFit.fitWidth,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
            Text(
              categorie,
              style: TextStyle(
                color: Color(0xff007084),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
