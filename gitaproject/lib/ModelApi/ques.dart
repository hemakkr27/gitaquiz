// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.srno,
    required this.qno,
    required this.queDetail,
    required this.questionDate,
    required this.link,
    required this.ansopt,
    required this.opt1,
    required this.opt2,
    required this.opt3,
    required this.opt4,
    required this.actAns,
    required this.qtype,
  });

  int srno;
  String qno;
  String queDetail;
  String questionDate;
  dynamic link;
  String ansopt;
  String opt1;
  String opt2;
  String opt3;
  String opt4;
  String actAns;
  String qtype;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        srno: json["srno"],
        qno: json["qno"],
        queDetail: json["queDetail"],
        questionDate: json["questionDate"],
        link: json["link"],
        ansopt: json["ansopt"],
        opt1: json["opt1"],
        opt2: json["opt2"],
        opt3: json["opt3"],
        opt4: json["opt4"],
        actAns: json["actAns"],
        qtype: json["qtype"],
      );

  Map<String, dynamic> toJson() => {
        "srno": srno,
        "qno": qno,
        "queDetail": queDetail,
        "questionDate": questionDate,
        "link": link,
        "ansopt": ansopt,
        "opt1": opt1,
        "opt2": opt2,
        "opt3": opt3,
        "opt4": opt4,
        "actAns": actAns,
        "qtype": qtype,
      };
}
