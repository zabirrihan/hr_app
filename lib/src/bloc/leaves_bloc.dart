import 'dart:convert';

import 'package:hr_app/src/api/repository.dart';
import 'package:hr_app/src/model/http_result.dart';
import 'package:hr_app/src/model/leaves_model/balance_model.dart';
import 'package:hr_app/src/model/leaves_model/leaves_model.dart';
import 'package:rxdart/rxdart.dart';

class LeavesBloc {
  final Repository _repository = Repository();

  final _balanceFetch = PublishSubject<BalanceModel>();

  final _leavesFetch = PublishSubject<LeavesModel>();

  Stream<BalanceModel> get getAllBalance => _balanceFetch.stream;

  Stream<LeavesModel> get getLeaves => _leavesFetch.stream;

  getBalance() async {
    HttpResult response = await _repository.getAllBalance();
    if (response.isSuccess) {
      BalanceModel data = balanceModelFromJson(
        json.encode(response.result),
      );
      _balanceFetch.sink.add(data);
    }
  }

  getAllLeaves() async {
    HttpResult response = await _repository.getLeaves();
    if (response.isSuccess) {
      LeavesModel data = leavesModelFromJson(
        json.encode(response.result),
      );
      _leavesFetch.sink.add(data);
    }
  }
}

final balanceBloc = LeavesBloc();
