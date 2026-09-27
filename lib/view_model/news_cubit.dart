import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/model/api_handler.dart';
import 'package:new_app/utils/app_constants.dart';
import 'package:new_app/view_model/news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsLoading());

  void getArticles() async {
    //emit(NewsLoading());
    var result = await ApiHandler.getNews(AppConstants.apiKey);
    switch (result) {
      case Success():
        emit(NewsSuccess(data: result.res));
      case Error():
        emit(NewsError(error: result.res));
    }
  }
}
