class UsersCompany {
  String? name;
  String? catchPhrase;
  String? bs;

  UsersCompany({
    this.name,
    this.catchPhrase,
    this.bs,
  });
  UsersCompany.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    catchPhrase = json['catchPhrase']?.toString();
    bs = json['bs']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['catchPhrase'] = catchPhrase;
    data['bs'] = bs;
    return data;
  }
}

class UsersAddressGeo {
/*
{
  "lat": "-37.3159",
  "lng": "81.1496"
} 
*/

  String? lat;
  String? lng;

  UsersAddressGeo({
    this.lat,
    this.lng,
  });
  UsersAddressGeo.fromJson(Map<String, dynamic> json) {
    lat = json['lat']?.toString();
    lng = json['lng']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lat'] = lat;
    data['lng'] = lng;
    return data;
  }
}

class UsersAddress {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  UsersAddressGeo? geo;

  UsersAddress({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });
  UsersAddress.fromJson(Map<String, dynamic> json) {
    street = json['street']?.toString();
    suite = json['suite']?.toString();
    city = json['city']?.toString();
    zipcode = json['zipcode']?.toString();
    geo = (json['geo'] != null) ? UsersAddressGeo.fromJson(json['geo']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['street'] = street;
    data['suite'] = suite;
    data['city'] = city;
    data['zipcode'] = zipcode;
    if (geo != null) {
      data['geo'] = geo!.toJson();
    }
    return data;
  }
}

class Users {
  int? id;
  String? name;
  String? username;
  String? email;
  UsersAddress? address;
  String? phone;
  String? website;
  UsersCompany? company;

  Users({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });
  Users.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    username = json['username']?.toString();
    email = json['email']?.toString();
    address = (json['address'] != null)
        ? UsersAddress.fromJson(json['address'])
        : null;
    phone = json['phone']?.toString();
    website = json['website']?.toString();
    company = (json['company'] != null)
        ? UsersCompany.fromJson(json['company'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['email'] = email;
    if (address != null) {
      data['address'] = address!.toJson();
    }
    data['phone'] = phone;
    data['website'] = website;
    if (company != null) {
      data['company'] = company!.toJson();
    }
    return data;
  }
}
