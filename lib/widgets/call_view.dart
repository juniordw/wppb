import 'package:flutter/material.dart';
import 'package:wppb/models/call.dart';
import 'package:wppb/theme.dart';

class CallView extends StatelessWidget {
  const CallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index) {
        final call = callList[index];
        return ListTile(
          leading: Icon(
            Icons.account_circle,
            color: Colors.black45,
            size: 58,
          ),
          title: Text(
            call.name,
            style: customTextStyle,
          ),
          subtitle: Text(
            call.callDate,
            style: const TextStyle(color: Colors.black45, fontSize: 16),
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(5),
            child: Icon(
              call.icon,
              color: Colors.green,
            ),
          ),
        );
      },
    );
  }
}
