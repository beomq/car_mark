import 'package:car_mark/data/model/park.dart';
import 'package:car_mark/repository/park_repository.dart';
import 'package:flutter/foundation.dart';

class MainViewModel with ChangeNotifier {
  final ParkRepository _repository;

  MainViewModel(this._repository);
  List<Park> _parks = [];
  List<Park> get parks => _parks;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void fetchParks() async {
    _isLoading = true;
    notifyListeners();

    _parks = await _repository.getParkInfo();

    _isLoading = false;
    notifyListeners();
  }
}
