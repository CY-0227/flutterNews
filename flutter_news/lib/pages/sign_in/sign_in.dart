import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/widgets.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  _handleSignIn() {
    if (!duIsEmail(_emailController.value.text)) {
      toast(msg: '请正确输入邮件');
      return;
    }
    if (!duIsEmail(_passwordController.value.text)) {
      toast(msg: '密码不能小于6位');
      return;
    }
  }

  _handleSignUp() {
    Navigator.pushNamed(context, "/sign_up");
  }

  void request() async {
    final dio = Dio();
    Response response;
    response = await dio.get('https://yapi.pro/mock/76143/categories');
    String ss = response.data.toString();
    print('------$ss');
    // The below request is the same as above.
    // response = await dio.get(
    //   '/test',
    //   queryParameters: {'id': 12, 'name': 'dio'},
    // );
    // print(response.data.toString());
  }

  // logo
  Widget _buildLogo() {
    return Container(
      width: duSetWidth(110),
      margin: EdgeInsets.only(top: duSetHeight(44 + 40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: duSetWidth(76),
            width: duSetWidth(76),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    // height: duSetWidth(76),
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: [
                        Shadows.primaryShadow,
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(duSetWidth(76 * 0.5)),
                      ),
                    ),
                    child: Container(),
                  ),
                ),
                Positioned(
                  top: duSetHeight(13),
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.none,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Text(
              "SECTOR",
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: kMontserrat,
                fontSize: duSetFontSize(24),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Text(
              "news",
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: kAvenir,
                fontSize: duSetFontSize(16),
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 登录表单
  Widget _buildInputForm() {
    return Container(
      width: duSetWidth(295),
      margin: EdgeInsets.only(top: duSetHeight(49)),
      child: Column(
        children: [
          inputTextEdit(
            controller: _emailController,
            marginTop: 0,
            hintText: 'email',
            keyboardType: TextInputType.emailAddress,
          ),
          inputTextEdit(
            controller: _passwordController,
            marginTop: 15,
            hintText: 'password',
            keyboardType: TextInputType.emailAddress,
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                btnElevatedButtonWidget(
                  onPressed: _handleSignUp,
                  title: "Sign up",
                  gbColor: AppColors.thirdElement,
                ),
                btnElevatedButtonWidget(
                  onPressed: _handleSignIn,
                  title: "Sign in",
                  gbColor: AppColors.primaryElement,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(20)),
            child: Text(
              'Forgot password?',
              style: TextStyle(
                color: AppColors.primaryElement,
                fontFamily: kAvenir,
                fontWeight: FontWeight.w400,
                fontSize: duSetFontSize(16),
              ),
            ),
          )
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

  // 注册按钮
  Widget _buildSignInButton() {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(54)),
      child: ElevatedButton(
        child: const Text(
          "Sign up",
          style: TextStyle(
            fontFamily: kMontserrat,
            fontWeight: FontWeight.w500,
            color: AppColors.primaryText,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(
            AppColors.secondaryElement,
          ),
          foregroundColor: const MaterialStatePropertyAll(
            AppColors.primaryElement,
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: Radii.k6pxRadius,
            ),
          ),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: request,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
            _buildInputForm(),
            const Spacer(),
            _buildThirdPartLogin(),
            _buildSignInButton(),
          ],
        ),
      ),
    );
  }
}
