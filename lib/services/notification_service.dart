import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {

  static final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();


static Future<void> initializeNotification() async{

  //configure for notification send to android platform
  const AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings('flutter');

  //for ios
  final DarwinInitializationSettings iosIntializationSettings = DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
    onDidReceiveLocalNotification: (int id,String ? title,String?body, String ? payload) async{}
  );
  
  //initialize the notification
  InitializationSettings initializationSettings = InitializationSettings(
    android: androidInitializationSettings,
    iOS: iosIntializationSettings
  );
  await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async{});
  
}


Future<void> showNotification({int id = 0,String ? title,String ? body,String ? payload}) async{
  return _flutterLocalNotificationsPlugin.show(id, title, body, notificationDetails());

}
  NotificationDetails notificationDetails(){
    return const  NotificationDetails(
        android: AndroidNotificationDetails('channelId','channelName',importance: Importance.max),
        iOS: DarwinNotificationDetails()
    );
  }


}