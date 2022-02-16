import 'dart:convert';

import 'package:hr_app/src/api/repository.dart';
import 'package:hr_app/src/model/holiday/holiday_model.dart';
import 'package:hr_app/src/model/http_result.dart';
import 'package:rxdart/rxdart.dart';

class HolidayBloc {
  final Repository _repository = Repository();

  final _holidayFetch = PublishSubject<List<HolidayModel>>();

  Stream<List<HolidayModel>> get getAllHoliday => _holidayFetch.stream;

  getHoliday() async {
    HttpResult response = await _repository.getAllHoliday();
    if (response.isSuccess) {
      List<HolidayModel> data = holidayModelFromJson(
        json.encode(response.result),
      );
      _holidayFetch.sink.add(data);
    }
  }
}

final holidayBloc = HolidayBloc();
