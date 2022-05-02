import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Database {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<void> addUser(User user) async {
    await _db
        .collection('users')
        .doc(user.uid)
        .set({'id': user.uid, 'name': user.displayName, 'email': user.email});
  }
}
