import 'package:flutter_news/pages/application/application.dart';
import 'package:flutter_news/pages/details/details.dart';
import 'package:flutter_news/pages/sign_in/sign_in.dart';
import 'package:flutter_news/pages/sign_up/sign_up.dart';

var staticRoutes = {
  "/sign_in": (context) => const SignInPage(),
  "/sign_up": (context) => const SignUpPage(),
  "/applicationPage": (context) => const ApplicationPage(),
  "/detailPage": (context) => const DetailsPage(),
};
