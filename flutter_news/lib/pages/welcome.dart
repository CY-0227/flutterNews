import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(60 + 44)),
      child: Text(
        'Features',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: duSetFontSize(20),
          fontWeight: FontWeight.w600,
          color: AppColors.primaryText,
          fontFamily: kMontserrat,
          height: 1,
        ),
      ),
    );
  }

  Widget _buildPageHeaderDetail() {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(14)),
      width: duSetWidth(242),
      height: duSetHeight(70),
      child: Text(
        'The best of news channels all in one place. Trusted sources and personalized news for you.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: duSetFontSize(16),
          fontWeight: FontWeight.normal,
          color: AppColors.primaryText,
          fontFamily: kAvenir,
          height: 1.3,
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String imgName, String intro, double marginTop) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: marginTop),
      child: Row(
        children: [
          SizedBox(
            width: duSetWidth(80),
            height: duSetHeight(80),
            child: Image.asset(
              "assets/images/$imgName.png",
              fit: BoxFit.none,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: duSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: duSetFontSize(16),
                color: AppColors.primaryText,
                fontFamily: kAvenir,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: ElevatedButton(
        child: const Text('Get Started'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primaryElement),
          foregroundColor:
              MaterialStateProperty.all(AppColors.primaryElementText),
          // elevation: MaterialStateProperty.all(20),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(borderRadius: Radii.k6pxRadius),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/sign_in");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildPageHeadTitle(),
            _buildPageHeaderDetail(),
            _buildFeatureItem(
              "feature-1",
              "Compelling photography and typography provide a beautiful reading",
              duSetHeight(86),
            ),
            _buildFeatureItem(
              "feature-2",
              "Sector news never shares your personal data with advertisers or publishers",
              duSetHeight(40),
            ),
            _buildFeatureItem(
              "feature-3",
              "You can get Premium to unlock hundreds of publications",
              duSetHeight(40),
            ),
            const Spacer(),
            _buildStartButton(context),
          ],
        ),
      ),
    );
  }
}
