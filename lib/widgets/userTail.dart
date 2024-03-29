import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:chanda_pfe/entities/user.dart';
import 'package:line_icons/line_icons.dart';

class UserTail extends StatelessWidget {
  final User user;
  final GestureTapCallback onTap;

  const UserTail({Key key, this.user, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.only(top: 6, bottom: 6),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.04),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.4),
              borderRadius: BorderRadius.circular(18),
              ),
          child: user.imgUrl == "url"
              ? CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xff4e54c8),
                  child: Icon(LineIcons.user),
                  //  Text(user.initiales,
                  //     style: TextStyle(color: Color(0xff4e54c8))),
                  maxRadius: 28,
                )
              : CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    user.imgUrl,
                  ),
                  maxRadius: 28,
                ),
        ),
        title: Text(user.name,
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 20)),
        subtitle: Text(user.email,
            style: TextStyle(
                color: Colors.white.withOpacity(.6),
                fontSize: MediaQuery.of(context).size.width / 28)),
        trailing: Text(user.isActive,
            style: TextStyle(
                color: Colors.greenAccent,
                fontSize: MediaQuery.of(context).size.width / 26)),
        onTap: onTap,
      ),
    );
  }
}
