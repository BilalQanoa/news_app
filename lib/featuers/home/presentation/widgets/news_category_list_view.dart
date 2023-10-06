import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/news_item_image.dart';

class NewsCategoryListView extends StatelessWidget {
  const NewsCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 180,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
                child: NewsItemImage(),
              );
            }
        ),
      ),
    );
  }
}