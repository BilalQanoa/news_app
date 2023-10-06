import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/custom_app_bar.dart';
import 'package:news_app/core/widgets/news_item_image.dart';
import 'package:news_app/featuers/home/presentation/widgets/news_category_list_view.dart';
import 'package:news_app/featuers/home/presentation/widgets/show_news_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CustomAppBar()),
          SliverToBoxAdapter(child: SizedBox(height: 24,)),
          NewsCategoryListView(),
          SliverToBoxAdapter(child: SizedBox(height: 32,)),
          SliverList.builder(
              itemCount: 8,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 16),
                  child: ShowNewsItem(),
                );
              }
          ),
        ],
      ),
    );
  }
}







