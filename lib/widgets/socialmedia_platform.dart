import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../start.dart';

class ContactChanelCard extends StatelessWidget {
  String platform;
  Uri url;

  ContactChanelCard({
    Key? key,
    required this.platform,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 4,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  StartSocialMedia(url: url,)),
              );
            },
            child: Image(
                image: AssetImage(
                  'assets/$platform.png',
                ),
                height: 80,
                width: 80,
                fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
