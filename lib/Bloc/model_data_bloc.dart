import 'dart:async';

import 'package:flutter_assignment/Models/model_data.dart';
import 'package:flutter_assignment/Repository/model_data_repo.dart';

class ModalListBloc {
  late ModelDataRepo _modelDataRepo;
  late Future<List<Time>> timeList;

  ModalListBloc() {
    _modelDataRepo = ModelDataRepo();
  }

  Future<List<Time>> fetchList() async {
    List<Time> timeList = await _modelDataRepo.modalData();
    if (timeList.isNotEmpty) {
      return timeList;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
