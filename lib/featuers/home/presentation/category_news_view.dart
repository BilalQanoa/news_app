import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/custom_app_bar.dart';
import 'package:news_app/featuers/home/presentation/widgets/show_news_item.dart';

class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 24,),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 8,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: ShowNewsItem(),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
