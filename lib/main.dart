import 'package:flutter/material.dart';
import 'package:flutter_local_notification_setup/app.dart';
import 'package:flutter_local_notification_setup/services/notification_service.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  runApp(const MyApp());
}
