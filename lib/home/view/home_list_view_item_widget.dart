import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_demo/home/model/bean/home_photo_bean.dart';

class HomeListViewItemWidget extends StatelessWidget {
  const HomeListViewItemWidget({@required HomePhotoBean article})
      : _article = article;

  final HomePhotoBean _article;

  static BorderRadius borderRadiusAll = BorderRadius.circular(8);
  static BorderRadius borderRadiusTop = const BorderRadius.only(
      topRight: Radius.circular(8),
      topLeft: Radius.circular(8),
      bottomLeft: Radius.circular(0),
      bottomRight: Radius.circular(0));

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Card(
            shape: RoundedRectangleBorder(borderRadius: borderRadiusAll),
            elevation: 4,
            child: GestureDetector(
                child: Column(children: <Widget>[
              Hero(
                  tag: _article.url,
                  child: SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: ClipRRect(
                          borderRadius: borderRadiusTop,
                          child:
                              Image.network(_article.url, fit: BoxFit.cover)))),
              Container(
                  margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: Text('Id︰${_article.id}',
                      style: TextStyle(color: Color(0xFF8F4F06)))),
              Container(
                  margin: const EdgeInsets.only(
                      top: 8, left: 8, right: 8, bottom: 16),
                  child: Text('Title︰${_article.title}',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(color: Color(0xFF8F4F06))))
            ]))));
  }
}
