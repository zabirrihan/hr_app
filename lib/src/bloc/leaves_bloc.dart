import 'dart:convert';

import 'package:hr_app/src/api/repository.dart';
import 'package:hr_app/src/model/http_result.dart';
import 'package:hr_app/src/model/leaves_model/balance_model.dart';
import 'package:rxdart/rxdart.dart';

class LeavesBloc {
  final Repository _repository = Repository();

  final _balanceFetch = PublishSubject<BalanceModel>();

  Stream<BalanceModel> get getAllBalance => _balanceFetch.stream;

  getBalance() async {
    HttpResult response = await _repository.getAllBalance();
    if (response.isSuccess) {
      BalanceModel data = balanceModelFromJson(
        json.encode(response.result),
      );
      _balanceFetch.sink.add(data);
    }
  }
}

final balanceBloc = LeavesBloc();
