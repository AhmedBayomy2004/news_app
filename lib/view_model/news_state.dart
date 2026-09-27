import 'package:new_app/model/news_model.dart';

sealed class NewsState {}

class NewsLoading extends NewsState {}

class NewsSuccess extends NewsState {
  new({required this._data});

  final List<NewsModel> _data;

  List<NewsModel> get data {
    return _data;
  }
}

class NewsError extends NewsState {
  new({required this._error});

  final String _error;

  String get error {
    return _error;
  }
}
