import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/post-provider.dart';
import '../widgets/post_widget.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    final postData = Provider.of<PostProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
          actions: [
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    postData.postFetching();
                  });
                })
          ],
        ),
        body:
            // Center(child: Text('fffffff')),
            ListView.builder(
                itemCount: postData.post.length,
                itemBuilder: (cxt, index) {
                  return PostWidget(
                    id: postData.post[index].owner.id,
                    firstName: postData.post[index].owner.firstName,
                    lastName: postData.post[index].owner.lastName,
                    pictureUrl: postData.post[index].owner.pictureUrl,
                    title: postData.post[index].owner.title,
                    email: postData.post[index].owner.email,
                    imageUrl: postData.post[index].imageUrl,
                    tags: postData.post[index].tags,
                    text: postData.post[index].text,
                    likes: postData.post[index].likes,
                    publishDate: postData.post[index].publishDate,
                  );
                }));
  }
}
