import 'package:flutter_assignment/Models/model_data.dart';
import 'package:flutter_assignment/networking/api_base_helper.dart';

class ModelDataRepo {
  final ApiBaseHelper _helper = ApiBaseHelper();

  Future modalData() async {
    final response = await _helper.get();
    // ignore: avoid_print
    print("repsone ON Modal_data_repo=>$response");
    return ExampleModel.fromJson(response);
  }
}
