
import 'package:flutter/material.dart';
import 'socialmedia_platform.dart';

class ContactsGrid extends StatelessWidget {
  const ContactsGrid({
    super.key,
    required this.myContacts,
  });

  final Map myContacts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, index) {
        return ContactChanelCard(
          platform: myContacts.keys.toList()[index],
          url: myContacts.values.toList()[index],
        );
      },
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.symmetric(vertical: 20),
    );
  }
}