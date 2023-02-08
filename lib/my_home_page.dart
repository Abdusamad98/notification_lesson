import 'package:flutter/material.dart';
import 'package:notification_lesson/local_notification_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentId = 1;

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
                currentId++;
                LocalNotificationService.localNotificationService
                    .showNotification(id: currentId);
              },
              child: Text("SIMPLE Notifiction 1"),
            ),
            TextButton(
              onPressed: () {
                currentId++;
                LocalNotificationService.localNotificationService
                    .showNotification(id: currentId);
              },
              child: Text("SIMPLE Notifiction 2"),
            ),
            TextButton(
              onPressed: () {
                currentId++;
                LocalNotificationService.localNotificationService
                    .scheduleNotification(
                  id: currentId,
                  delayedTime: 3,
                );
              },
              child: Text("SCHUADULED NOTIFICATION "),
            ),
            TextButton(
              onPressed: () {
                currentId++;
                LocalNotificationService.localNotificationService
                    .showPeriodically(id: currentId);
              },
              child: Text("PERIODIC NOTIFICATION EVERY MINUT"),
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
                      .cancelNotificationById(currentId);
                },
                child: const Text("Cancel Notification By id")),
          ],
        ),
      ),
    );
  }
}
