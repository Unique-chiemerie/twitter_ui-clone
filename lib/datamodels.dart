import 'package:flutter/material.dart';

class UserPost {
  String username;
  Image post;
  Image Verified;
  String usertext;
  String handle;
  String time;
  Image dp;

  UserPost(this.username, this.post, this.usertext, this.handle, this.Verified,
      this.time, this.dp);
}

List<UserPost> tweet = [
  UserPost(
      'anonymous nigs',
      Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNYgSPoWchrYkoO3fpX1i4-BcWgSGheBlgLA&usqp=CAU'),
      'shit',
      '@saitama',
      Image.asset('pics/verify.png'),
      '1h',
      Image.asset('pics/man.png')),
  UserPost(
      'some guy',
      Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNYgSPoWchrYkoO3fpX1i4-BcWgSGheBlgLA&usqp=CAU'),
      'bro said whtf',
      '@shigeo',
      Image.asset('pics/verify.png'),
      '6h',
      Image.asset('pics/man.png')),
  UserPost(
      'doctor who',
      Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNYgSPoWchrYkoO3fpX1i4-BcWgSGheBlgLA&usqp=CAU'),
      'wait is this legal',
      '@xingchao',
      Image.asset('pics/verify.png'),
      '1h',
      Image.asset('pics/man.png')),
  UserPost(
    'mr.Princeton',
    Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNYgSPoWchrYkoO3fpX1i4-BcWgSGheBlgLA&usqp=CAU'),
    'i should get my wife some of this',
    '@daddy123',
    Image.asset('pics/verify.png'),
    '5h',
    Image.asset('pics/man.png'),
  ),
];
