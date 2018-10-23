import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
part 'user.g.dart';

/// A `jsonplaceholder` user. See http://jsonplaceholder.typicode.com/users.
@JsonSerializable()
class User {
  const User({
    @required this.id,
    @required this.name,
    @required this.username,
    @required this.email,
    @required this.address,
    @required this.phone,
    @required this.website,
    @required this.company,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  static Iterable<User> fromJsonArray(String jsonString) =>
      (json.decode(jsonString) as List)
          .map((item) => User.fromJson(item as Map<String, dynamic>));
}

@JsonSerializable()
class Address {
  const Address({
    @required this.street,
    @required this.suite,
    @required this.city,
    @required this.zipcode,
    @required this.geo,
  });
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;
}

@JsonSerializable()
class Geo {
  const Geo({@required this.lat, @required this.lng});
  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
  final double lat;
  final double lng;
}

@JsonSerializable()
class Company {
  const Company(
      {@required this.name, @required this.catchPhrase, @required this.bs});
  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  final String name;
  final String catchPhrase;
  final String bs;
}
