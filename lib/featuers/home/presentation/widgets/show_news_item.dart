import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/news_item_image.dart';
import 'package:news_app/featuers/home/presentation/category_news_view.dart';

class ShowNewsItem extends StatelessWidget {
  const ShowNewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            NewsItemImage(),
            SizedBox(width: 16,),
            SizedBox(
              width: MediaQuery.of(context).size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Here is Title!',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Here is subtitle!, Bilal Qanoa is here',
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                    ),
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