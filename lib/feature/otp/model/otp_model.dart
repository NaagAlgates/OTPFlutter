import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

/// otp : "123456"

class OtpModel extends Equatable {
  final String otp;
  const OtpModel({this.otp});

  @override
  List<Object> get props => [otp];

  static OtpModel fromJson(dynamic json) {
    final _otp = json["otp"];
    return OtpModel(otp: _otp);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["otp"] = otp;
    return map;
  }
}
