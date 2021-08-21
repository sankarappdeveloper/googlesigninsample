
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Viewprofile extends StatefulWidget

{

  final GoogleSignInAccount user;

  Viewprofile({
    required this.user
});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Viewprofile();
  }




}

class _Viewprofile  extends State<Viewprofile>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.center,children: [

            Text("Profile"),
          ],),
          SizedBox(height:32),

          Row(
            mainAxisAlignment:MainAxisAlignment.center,children: [

            CircleAvatar(radius: 40,backgroundImage: NetworkImage(widget.user.photoUrl ?? ""),),
          ],),


          Row(
            mainAxisAlignment:MainAxisAlignment.center,children: [
            Text("name   :"+widget.user.displayName!),

          ],),


          Row(
            mainAxisAlignment:MainAxisAlignment.center,children: [

            Text("emailaddress  :"+widget.user.email)
          ],),

        ],
      ),
    );
  }
}