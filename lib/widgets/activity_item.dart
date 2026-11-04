import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class ActivityItem extends StatefulWidget {
  const ActivityItem({super.key});

  @override
  State<ActivityItem> createState() => _ActivityItemState();
}

class _ActivityItemState extends State<ActivityItem> {
  final List<Map<String, dynamic>> activities = [
    {
      'title': 'Like a post',
      'description': 'Description, for Activity 1',
      'icon': Icons.thumb_up,
      'time': '2m ago',
    },
    {
      'title': 'Commented',
      'description': 'Description, for Activity 2',
      'icon': Icons.comment,
      'time': '45m ago',
    },
    {
      'title': 'New followers',
      'description': 'Description, for Activity 3',
      'icon': Icons.person_add,
      'time': '5h ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      
      itemCount: activities.length,
      itemBuilder: (context, index) {
        final item = activities[index];
        return ListTile(
          leading: buildIconButton(
            icon: item['icon'],
            onPressed: () {},
          ),
          title: Text(
            item['title'],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.text,
            ),
          ),
          subtitle: Text(
            item['description'],
            style: const TextStyle(color: AppColors.secondaryText),
          ),
          trailing: Text(
            item['time'],
            style: const TextStyle(
              color: AppColors.secondaryText,
              fontSize: 12,
            ),
          ),
          onTap: () {},
        );
      },
    );
  }
}