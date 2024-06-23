import 'package:flutter/material.dart';
import 'package:notifications/local%20notification/services/notification_service.dart';

import 'app.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  runApp(const NotificationApp());
}
