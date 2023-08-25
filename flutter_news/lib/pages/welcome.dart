import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _buildPageHeadTitle() {
    return Text('data');
  }

  Widget _buildPageHeaderDetail() {
    return Text('data');
  }

  Widget _buildFeatureItem() {
    return Text('data');
  }

  Widget _buildStartButton() {
    return Text('data22');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildPageHeadTitle(),
            _buildPageHeaderDetail(),
            _buildFeatureItem(),
            _buildStartButton(),
          ],
        ),
      ),
    );
  }
}
