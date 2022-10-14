import 'package:flutter/material.dart';
import 'package:notification_lesson/local_notification_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local Notification"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                LocalNotificationService.localNotificationService
                    .showNotification("DATA MALUMOT 1", 12);
              },
              child: Text("Get Notifiction 1"),
            ),
            TextButton(
              onPressed: () {
                LocalNotificationService.localNotificationService
                    .showNotification("DATA MALUMOT 2", 13);
              },
              child: Text("Get Notifiction 2"),
            ),

            TextButton(
              onPressed: () {
                LocalNotificationService.localNotificationService
                    .scheduleNotification(5);
              },
              child: Text("scheduleNotification"),
            ),

            TextButton(
              onPressed: () {
                LocalNotificationService.localNotificationService
                    .showPeriodically();
              },
              child: Text("showPeriodically"),
            ),


            const Expanded(child: SizedBox()),
            TextButton(
                onPressed: () {
                  LocalNotificationService.localNotificationService
                      .cancelAllNotifications();
                },
                child: const Text("Cancel All Notifications")),
            TextButton(
                onPressed: () {
                  LocalNotificationService.localNotificationService
                      .cancelNotificationById(12);
                },
                child: const Text("Cancel Notification By id")),
          ],
        ),
      ),
    );
  }
}
