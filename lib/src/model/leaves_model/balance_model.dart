
import 'dart:convert';

BalanceModel balanceModelFromJson(String str) => BalanceModel.fromJson(json.decode(str));

class BalanceModel {
  BalanceModel({
    required this.success,
    required this.total,
    required this.data,
    required this.metaData,
  });

  bool success;
  int total;
  List<Datum> data;
  MetaData metaData;

  factory BalanceModel.fromJson(Map<String, dynamic> json) => BalanceModel(
    success: json["success"] ?? false,
    total: json["total"] ?? 0,
    data:json["data"] == null ? <Datum>[]: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    metaData: MetaData.fromJson(json["metaData"]),
  );

}

class Datum {
  Datum({
    required this.indicator,
    required this.privilegeLeave,
    required this.sickLeave,
  });

  String indicator;
  String privilegeLeave;
  String sickLeave;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    indicator: json["INDICATOR"] ?? "",
    privilegeLeave: json["PRIVILEGE_LEAVE"] ?? "",
    sickLeave: json["SICK_LEAVE"] ?? "",
  );

}

class MetaData {
  MetaData({
    required this.successProperty,
    required this.totalProperty,
    required this.root,
    required this.fields,
    required this.colModel,
    required this.filterList,
  });

  String successProperty;
  String totalProperty;
  String root;
  List<Field> fields;
  List<ColModel> colModel;
  List<FilterList> filterList;

  factory MetaData.fromJson(Map<String, dynamic> json) => MetaData(
    successProperty: json["successProperty"] ?? "",
    totalProperty: json["totalProperty"] ?? "",
    root: json["root"] ?? "",
    fields: json["fields"] == null ? <Field>[] : List<Field>.from(json["fields"].map((x) => Field.fromJson(x))),
    colModel: json["colModel"] == null ? <ColModel>[]:List<ColModel>.from(json["colModel"].map((x) => ColModel.fromJson(x))),
    filterList: json["filterList"] == null ? <FilterList>[] : List<FilterList>.from(json["filterList"].map((x) => FilterList.fromJson(x))),
  );

}

class ColModel {
  ColModel({
    required this.header,
    required this.width,
    required this.sortable,
    required this.align,
    required this.dataIndex,
  });

  String header;
  int width;
  bool sortable;
  String align;
  String dataIndex;

  factory ColModel.fromJson(Map<String, dynamic> json) => ColModel(
    header: json["header"] ?? "",
    width: json["width"] ?? 0,
    sortable: json["sortable"] ?? false,
    align: json["align"] ?? "",
    dataIndex: json["dataIndex"] ?? "",
  );

}

class Field {
  Field({
    required this.type,
    required this.name,
  });

  String type;
  String name;

  factory Field.fromJson(Map<String, dynamic> json) => Field(
    type: json["type"] ?? "",
    name: json["name"] ?? "",
  );

}

class FilterList {
  FilterList({
    required this.type,
    required this.dataIndex,
  });

  String type;
  String dataIndex;

  factory FilterList.fromJson(Map<String, dynamic> json) => FilterList(
    type: json["type"] ?? "",
    dataIndex: json["dataIndex"] ?? "",
  );

}
