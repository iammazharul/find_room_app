import 'package:flutter/material.dart';

import 'Facility.dart';

class Room {
  final Facility facility;

  final String name;
  final String location;
  final String details;
  final String price;
  final String star;
  final DateTime published;
  final bool favorite;
  final String lat;
  final String long;
  final String image;

  Room({
    @required this.facility,
    @required this.name,
    @required this.location,
    @required this.details,
    @required this.price,
    @required this.star,
    @required this.published,
    @required this.favorite,
    @required this.lat,
    @required this.long,
    @required this.image,
  });
}

List<Room> rooms = [
  Room(facility: (facilities..shuffle()).first, name: 'Santi Nir', location: 'West, Panthapath, Dhaka 1209', details: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', price: '2000', star: '4', published: DateTime(2020, 10, 15), favorite: true, lat: '23.7527187', long: '90.3812058', image: '"assets/images/Santi_Nir.png"'),
  Room(facility: (facilities..shuffle()).first, name: 'Maya Kutir', location: 'Sukrabad Rd, Dhaka 1215', details: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', price: '3000', star: '4', published: DateTime(2020, 9, 12), favorite: true, lat: '23.7529536', long: '90.3784356', image: '"assets/images/Maya_Kutir.png"'),
  Room(facility: (facilities..shuffle()).first, name: 'Niketon Vila', location: 'Lake Circus Rd, Dhaka 1205', details: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', price: '2500', star: '3', published: DateTime(2020, 10, 10), favorite: false, lat: '23.7517141', long: '90.3805041', image: '"assets/images/Niketon_Vila.png"'),
  Room(facility: (facilities..shuffle()).first, name: 'Chaya Nir', location: 'Tollabag, Sobahanbag, Dhaka 1207', details: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', price: '4000', star: '4', published: DateTime(2020, 10, 15), favorite: false, lat: '23.7556884', long: '90.3774431', image: '"assets/images/Chaya_Nir.png"'),
  Room(facility: (facilities..shuffle()).first, name: 'Niribili', location: 'Mustafa Road, Farmgate, Dhaka 1215', details: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', price: '8000', star: '4', published: DateTime(2020, 10, 25), favorite: true, lat: '23.7562251', long: '90.3871974', image: '"assets/images/Niribili.png"'),
  Room(facility: (facilities..shuffle()).first, name: 'Miyaban', location: 'Indira Rd, Dhaka 1215', details: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', price: '9000', star: '5', published: DateTime(2020, 10, 30), favorite: false, lat: '23.7574845', long: '90.3824191', image: '"assets/images/Miyaban.png"'),
];
