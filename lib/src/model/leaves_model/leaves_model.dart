import 'dart:convert';

LeavesModel leavesModelFromJson(String str) =>
    LeavesModel.fromJson(json.decode(str));

class LeavesModel {
  LeavesModel({
    required this.success,
    required this.total,
    required this.data,
  });

  bool success;
  int total;
  List<Datum> data;

  factory LeavesModel.fromJson(Map<String, dynamic> json) => LeavesModel(
        success: json["success"] ?? false,
        total: json["total"] ?? 0,
        data: json["data"] == null
            ? List<Datum>.from([])
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  Datum({
    required this.leavefor,
    required this.details,
  });

  String leavefor;
  String details;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        leavefor: json["leavefor"] ?? "",
        details: json["details"] ?? "",
      );
}
