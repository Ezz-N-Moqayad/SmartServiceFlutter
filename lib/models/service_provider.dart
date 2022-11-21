class ServiceProvider {
  late String isProvider;
  late String name;
  late String address;
  late String longitude;
  late String latitude;
  late String telephone;
  late String location;
  late String serviceId;
  late String fromTime;
  late String toTime;
  late String countryCode;
  late String price;
  late int agree;
  late String serviceDescription;

  ServiceProvider.fromJson(Map<String, dynamic> json) {
    isProvider = json['isProvider'];
    name = json['name'];
    address = json['address'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    telephone = json['telephone'];
    location = json['location'];
    serviceId = json['service_id'];
    fromTime = json['from_time'];
    toTime = json['to_time'];
    countryCode = json['country_code'];
    price = json['price'];
    agree = json['agree'];
    serviceDescription = json['service_description'];
  }
}
