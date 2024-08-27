class ProfileData {
  String? name;
  String? email;
  String? address;
  String? city;
  String? country;

  ProfileData({this.name, this.email, this.address, this.city, this.country});

  ProfileData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    address = json['address'];
    city = json['city'];
    country = json['country'];
  }
}