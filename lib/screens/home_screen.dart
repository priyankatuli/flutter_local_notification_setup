
import 'package:flutter/material.dart';
import 'package:flutter_local_notification_setup/services/notification_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<StatefulWidget>{

  NotificationService notificationService = NotificationService();

 // @override
  //void initState(){
    //super.initState();
    //notificationService.initializeNotification();
  //}

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('Flutter local notification',style: TextStyle(
           fontSize: 24,
         ),),
       ),
       body: Center(
           child: ElevatedButton(
             onPressed: (){
               notificationService.showNotification(title: 'Hello',body: 'Its working');
             }, child: const Text('Show notifications'),
           ),
         )

     );
  }

}