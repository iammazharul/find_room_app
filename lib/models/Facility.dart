import 'package:flutter/material.dart';

class Facility {
  final bool single;
  final bool food;
  final bool wifi;
  final bool bath;
  final bool parking;
  final bool gym;
  final bool ac;

  Facility({
    @required this.single,
    @required this.food,
    @required this.wifi,
    @required this.bath,
    @required this.parking,
    @required this.gym,
    @required this.ac,
  });
}
List<Facility> facilities = [facility1, facility2, facility3];

// demo Facility
Facility facility1 = Facility(single: true, food: true, wifi: false, bath: true, parking: true, gym: true, ac: false);
Facility facility2 = Facility(single: false, food: true, wifi: true, bath: true, parking: true, gym: false, ac: true);
Facility facility3 = Facility(single: true, food: false, wifi: true, bath: true, parking: false, gym: true, ac: true);

