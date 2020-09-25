import 'package:flutter/cupertino.dart';
import 'package:xam_otp_flutter/feature/otp/model/otp_model.dart';
import 'package:xam_otp_flutter/feature/otp/repository/otp_api_client.dart';

class OtpRepository{
  final OtpApiClient otpApiClient;

  OtpRepository({@required this.otpApiClient}): assert(otpApiClient!=null);

  Future<OtpModel> getOtp(String str) async{
    final response = await otpApiClient.getOtp();
    return response;
  }
}