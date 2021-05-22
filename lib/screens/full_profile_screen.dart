import 'package:badee3_task/models/post-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/user_details_widget.dart';

class FullProfileScreen extends StatelessWidget {
  final String id;
  FullProfileScreen({this.id});
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<PostProvider>(context, listen: false);
    userData.userProfileFetching(id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Details'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (cxt, index) {
              return UserDetails(
                id: userData.userInfo.id,
                firstName: userData.userInfo.firstName,
                lastName: userData.userInfo.lastName,
                dateOfBirth: userData.userInfo.dateOfBirth,
                registerDate: userData.userInfo.registerDate,
                title: userData.userInfo.title,
                pictureUrl: userData.userInfo.pictureUrl,
                gender: userData.userInfo.gender,
                email: userData.userInfo.email,
                phone: userData.userInfo.phone,
                location: userData.userInfo.location,
              );
            }),
      ),
    );
  }
}
