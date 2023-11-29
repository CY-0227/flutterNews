import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/widgets.dart';

class NewsLetterWidget extends StatefulWidget {
  final Function? callback;
  const NewsLetterWidget({Key? key, this.callback}) : super(key: key);

  @override
  _NewsLetterWidgetState createState() => _NewsLetterWidgetState();
}

class _NewsLetterWidgetState extends State<NewsLetterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(duSetWidth(20)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Newsletter",
                style: TextStyle(
                  fontFamily: kMontserrat,
                  fontSize: duSetFontSize(18),
                  fontWeight: FontWeight.w600,
                  color: AppColors.thirdElement,
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: AppColors.thirdElementText,
                  size: duSetWidth(17),
                ),
                onPressed: () {
                  if (widget.callback != null) {
                    widget.callback!();
                  }
                },
              ),
            ],
          ),
          inputEmailTextEdit(
            controller: null,
            hintText: "email",
            keyboardType: TextInputType.emailAddress,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: btnElevatedButtonWidget(
              onPressed: () {},
              width: duSetWidth(335),
              height: duSetHeight(40),
              title: "Subscribe",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(29)),
            width: duSetWidth(261),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "By clicking on Subscribe button you agree to accept ",
                    style: TextStyle(
                      color: AppColors.thirdElementText,
                      fontSize: duSetFontSize(14),
                      fontFamily: kAvenir,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                      color: AppColors.secondaryElementText,
                      fontSize: duSetFontSize(14),
                      fontFamily: kAvenir,
                      fontWeight: FontWeight.w400,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        toast(msg: "Privacy Policy");
                      },
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
