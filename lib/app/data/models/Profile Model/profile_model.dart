import 'package:getx_practice/app/data/models/Profile%20Model/profile_data.dart';

class ProfileModel {
  List<ProfileData>? profilesData;

  ProfileModel({this.profilesData});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    if (json['profiles'] != null) {
      profilesData = <ProfileData>[];
      json['profiles'].forEach((v) {
        profilesData!.add(new ProfileData.fromJson(v));
      });
    }
  }


}

