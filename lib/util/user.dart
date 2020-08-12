import 'package:flutter/material.dart';
import 'package:procrastinay/util/taskWidget.dart';

class User {
  Image pfp = null;
  String username;
  String email;
  Set<Task> tasks;

  User(username){
    this.username = username;
    tasks = new Set<Task>();
  }

  setProfileImage(img){
    this.pfp = img;
  }
}