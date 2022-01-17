import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String checkControlTested(bool controlTested) {
  // Add your function code here!
  if (controlTested) {
    return 'Yes';
  } else {
    return 'No';
  }
}

bool checkControlTestedField(String fieldText) {
  return (fieldText.toLowerCase() == 'yes');
}
