import 'package:flutter/material.dart';

class User {
  final String name, image;

  User({@required this.name, @required this.image});
}

// Demo List of Top Travelers
List<User> users = [user1, user2, user3];
User getRandomUser(){
  return (users..shuffle()).first;
}

// demo user
User user1 = User(name: "Sumon", image: "assets/images/sumon.png");
User user2 = User(name: "Hasan", image: "assets/images/hasan.png");
User user3 = User(name: "Moni", image: "assets/images/moni.png");
