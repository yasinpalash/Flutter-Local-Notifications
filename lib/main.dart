import 'package:flutter/material.dart';
import 'package:notifications/local%20notification/services/notification_service.dart';

import 'app.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const NotificationApp());
}
