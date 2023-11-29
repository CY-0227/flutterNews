import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';

Widget imageCached(
    {String? url = '',
    double width = 48,
    double height = 48,
    EdgeInsetsGeometry margin = EdgeInsets.zero}) {
  return CachedNetworkImage(
    imageUrl: url ?? '',
    imageBuilder: (context, imageProvider) => Container(
      height: duSetHeight(height),
      width: duSetWidth(width),
      margin: margin,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
          // colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn),
        ),
      ),
    ),
    placeholder: (context, url) {
      return Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      );
    },
    errorWidget: (context, url, error) {
      print(error);
      return Icon(Icons.error);
    },
  );
}
