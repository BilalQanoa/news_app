import 'package:flutter/material.dart';
import 'package:news_app/featuers/home/presentation/category_news_view.dart';

class NewsItemImage extends StatelessWidget {
  const NewsItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context, MaterialPageRoute(
          builder: (context){
            return CategoryNewsView();
          },
        ),
        );
      },
      child: Container(
        height: 180,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
      ),
    );
  }
}