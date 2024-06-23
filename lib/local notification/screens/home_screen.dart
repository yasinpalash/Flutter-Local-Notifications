import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications/local%20notification/services/notification_service.dart';
import 'package:notifications/local%20notification/widgets/notification_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFFFFFF), // Dark blue
            Color(0xFF81D4FA), // Light blue
            Color(0xFF4DB6AC) // Light teal
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Local Notification'),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                  title: 'Title of the notification',
                  body: 'Body of the notification',
                );
              },
              text: 'Normal Notification',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Title of the notification',
                    body: 'Body of the notification',
                    summary: 'Small summary',
                    notificationLayout: NotificationLayout.Inbox);
              },
              text: 'Notification with Summary',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Title of the notification',
                    body: 'Body of the notification',
                    summary: 'Small summary',
                    notificationLayout: NotificationLayout.ProgressBar);
              },
              text: 'Progress Bar Notification',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Title of the notification',
                    body: 'Body of the notification',
                    summary: 'Small summary',
                    notificationLayout: NotificationLayout.Messaging);
              },
              text: 'Message Notification',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Title of the notification',
                    body: 'Body of the notification',
                    summary: 'Small summary',
                    notificationLayout: NotificationLayout.BigPicture,
                    bigPicture:
                        "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg");
              },
              text: 'Big Image Notification ',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Title of the notification',
                    body: 'Body of the notification',
                    payload: {
                      "navigate": "true",
                    },
                    actionButtons: [
                      NotificationActionButton(
                          key: 'check',
                          label: 'check it out',
                          actionType: ActionType.SilentAction,
                          color: Colors.green)
                    ]);
              },
              text: ' Action Buttons Notification',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                  title: 'Scheduled notification',
                  body: 'notification was fired after 5 seconds',
                  scheduled: true,
                  interval: 30,
                );
              },
              text: ' Scheduled Notification',
            ),
          ],
        ),
      ),
    );
  }
}
