import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/view/widgets/news_item.dart';
import 'package:new_app/view_model/news_cubit.dart';
import 'package:new_app/view_model/news_state.dart';

class NewsScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getArticles(),
      child: Scaffold(
        appBar: AppBar(title: Text("News App")),
        body: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            //success
            if (state is NewsSuccess) {
              final data = state.data;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) => NewsItem(
                  author: data[index].author,
                  image: data[index].image,
                  title: data[index].title,
                  description: data[index].description,
                ),
              );
            }
            //error
            else if (state is NewsError) {
              final error = state.error;
              return Center(
                child: Text(
                  error,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              );
            }
            //loading
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
