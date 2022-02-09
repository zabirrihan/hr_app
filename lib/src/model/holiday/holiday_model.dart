import 'dart:convert';

List<HolidayModel> holidayModelFromJson(String str) => List<HolidayModel>.from(
    json.decode(str).map((x) => HolidayModel.fromJson(x)));

class HolidayModel {
  HolidayModel({
    required this.holidayid,
    required this.remarks,
    required this.hdate,
    required this.holidaydate,
    required this.holidayfor,
    required this.appto,
    required this.highlight,
  });

  String holidayid;
  String remarks;
  String hdate;
  DateTime holidaydate;
  String holidayfor;
  String appto;
  String highlight;

  factory HolidayModel.fromJson(Map<String, dynamic> json) => HolidayModel(
        holidayid: json["holidayid"] ?? "",
        remarks: json["remarks"] ?? "",
        hdate: json["hdate"] ?? "",
        holidaydate: json["holidaydate"] == null
            ? DateTime.now()
            : DateTime.parse(json["holidaydate"]),
        holidayfor: json["holidayfor"] ?? "",
        appto: json["appto"] ?? "",
        highlight: json["highlight"] ?? "",
      );
}
