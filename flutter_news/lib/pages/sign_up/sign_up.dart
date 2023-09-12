import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TapGestureRecognizer _tapGestureRecognizer1 = TapGestureRecognizer();
  final TapGestureRecognizer _tapGestureRecognizer2 = TapGestureRecognizer();

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(50)),
      child: Text(
        'Sign up',
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: kMontserrat,
          fontSize: duSetFontSize(24),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildInptForm() {
    return Container(
      width: duSetWidth(295),
      child: Column(
        children: [
          inputTextEdit(
            controller: _fullnameController,
            hintText: '请输入昵称',
            marginTop: 49,
          ),
          inputTextEdit(
            controller: _emailController,
            hintText: '请输入邮箱',
          ),
          inputTextEdit(
            controller: _passwordController,
            hintText: '请输入密码',
            isPassword: true,
          ),
          Container(
            height: duSetHeight(40),
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: btnElevatedButtonWidget(
              onPressed: () {},
              title: 'Created an account',
              width: 295,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(20)),
            child: RichText(
              maxLines: 2,
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'By signing up you agree to our',
                style: TextStyle(
                  fontFamily: kAvenir,
                  fontSize: duSetFontSize(16),
                  color: AppColors.primaryText,
                  height: 1,
                ),
                children: [
                  TextSpan(
                    text: '\nTerms',
                    style: TextStyle(
                      color: AppColors.primaryElement,
                      fontFamily: kAvenir,
                      fontSize: duSetFontSize(16),
                      height: 1,
                    ),
                    recognizer: _tapGestureRecognizer1
                      ..onTap = () {
                        toast(msg: '点击Terms');
                      },
                  ),
                  TextSpan(
                    text: ' and ',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: kAvenir,
                      fontSize: duSetFontSize(16),
                      height: 1,
                    ),
                  ),
                  TextSpan(
                    text: 'Conditions of Use',
                    style: TextStyle(
                      color: AppColors.primaryElement,
                      fontFamily: kAvenir,
                      fontSize: duSetFontSize(16),
                      height: 1,
                    ),
                    recognizer: _tapGestureRecognizer2
                      ..onTap = () {
                        toast(msg: '点击Conditions');
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 第三方登录
  Widget _buildThirdPartLogin() {
    return Container(
      width: duSetWidth(295),
      margin: EdgeInsets.only(bottom: duSetHeight(40)),
      child: Column(
        children: [
          Container(
            child: Text(
              'Or sign in with social networks',
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: kAvenir,
                fontSize: duSetFontSize(16),
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: duSetHeight(20)),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  btnElevatedButtonBorderOnlyWidget(
                    onPressed: () {},
                    iconFileName: 'twitter',
                  ),
                  btnElevatedButtonBorderOnlyWidget(
                    onPressed: () {},
                    iconFileName: 'google',
                  ),
                  btnElevatedButtonBorderOnlyWidget(
                    onPressed: () {},
                    iconFileName: 'facebook',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ///
  Widget _bulidAccont() {
    return Container(
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: btnElevatedButtonWidget(
        onPressed: () {},
        title: 'I have an account',
        height: 44,
        width: 295,
        gbColor: AppColors.secondaryElement,
        fontColor: AppColors.primaryText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: transparentAppBar(
        context: context,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: AppColors.primaryText,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            color: AppColors.primaryText,
            onPressed: () {
              toast(msg: '这是注册界面');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Divider(
              height: 1,
            ),
            _buildLogo(),
            _buildInptForm(),
            Spacer(),
            _buildThirdPartLogin(),
            _bulidAccont(),
          ],
        ),
      ),
    );
  }
}
