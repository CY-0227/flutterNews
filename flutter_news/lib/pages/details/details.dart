import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final String htmlString = '''
<!DOCTYPE html>
<head>
<title>webview demo | IAM17</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, 
  maximum-scale=1.0, user-scalable=no,viewport-fit=cover" />
<style>
*{
  margin:0;
  padding:0;
}
body{
   background:#BBDFFC;  
   display:flex;
   justify-content:center;
   align-items:center;
   height:100px;
   color:#C45F84;
   font-size:20px;
}
</style>


</head>
<html>
<body>
<div >大家好，我是 17</div>
<button id="btn" onclick="myFunction()" type="button">点我!</button>
<script>
function myFunction() {
  Jump.postMessage('video');
}
</script>
</body>
</html>
''';

  bool _isPageFinished = false;
  double _webViewHeight = 200;
  String title = '';
  late final WebViewController _controller;

  Future<void> _onShowUserAgent() async {
    // Send a message with the user agent string to the Toaster JavaScript channel we registered
    // with the WebView.
    return await _controller.runJavaScript(
      "myFunction.postMessage('mm');",
    );
  }

  @override
  void initState() {
    // TODO: implement initState

    // late final PlatformWebViewControllerCreationParams params;
    // if (WebViewPlatform.instance is WebKitWebViewPlatform) {
    //   params = WebKitWebViewControllerCreationParams(
    //     allowsInlineMediaPlayback: true,
    //     mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
    //   );
    // } else {
    //   params = const PlatformWebViewControllerCreationParams();
    // }

    final WebViewController controller = WebViewController();
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            print('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) async {
            print('Page finished loading: $url');
            await Future.delayed(Duration(milliseconds: 50));
            var message = await _controller.runJavaScriptReturningResult(
                'document.documentElement.scrollHeight');
            // _controller.runJavaScript('Toaster.postMessage("你好");');
            setState(() {
              _webViewHeight = double.parse(message.toString());
            });
            // _controller.runJavaScript(
            //   'Toaster.postMessage("User Agent: " + navigator.userAgent);',
            // );
          },
          onWebResourceError: (WebResourceError error) {
            print('''
              Page resource error:
              code: ${error.errorCode}
              description: ${error.description}
              errorType: ${error.errorType}
              isForMainFrame: ${error.isForMainFrame}
          ''');
          },
          onNavigationRequest: (NavigationRequest request) {
            // if (request.url.startsWith('https://www.baidu.com/')) {
            //   print('blocking navigation to ${request.url}');
            //   return NavigationDecision.prevent;
            // }
            print('allowing navigation to ${request.url}');
            return NavigationDecision.navigate;
          },
          onUrlChange: (UrlChange change) {
            print('url change to ${change.url}');
          },
        ),
      )
      ..addJavaScriptChannel(
        'Jump',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
          print(message.message);
          setState(() {
            title = '你好';
          });
        },
      )
      ..loadHtmlString(htmlString);

    // #docregion platform_features
    // if (controller.platform is AndroidWebViewController) {
    //   AndroidWebViewController.enableDebugging(true);
    //   (controller.platform as AndroidWebViewController)
    //       .setMediaPlaybackRequiresUserGesture(false);
    // }
    // #enddocregion platform_features

    _controller = controller;
    super.initState();
  }

  // 标题
  Widget _buildPageTitle() {
    return Container(
      margin: EdgeInsets.all(duSetHeight(10)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fox News',
                style: TextStyle(
                  fontFamily: kMontserrat,
                  fontWeight: FontWeight.normal,
                  fontSize: duSetFontSize(30),
                  color: AppColors.thirdElement,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontFamily: kAvenir,
                  fontWeight: FontWeight.normal,
                  fontSize: duSetFontSize(14),
                  color: AppColors.thirdElementText,
                ),
              ),
            ],
          ),
          Spacer(),
          CircleAvatar(
            radius: duSetWidth(22),
            backgroundImage: AssetImage("assets/images/channel-fox.png"),
          ),
        ],
      ),
    );
  }

  // 头部
  Widget _buildPageHeader() {
    return Container(
      margin: EdgeInsets.all(duSetHeight(10)),
      child: Column(
        children: [
          Container(
            width: duSetWidth(335),
            height: duSetHeight(290),
            color: Colors.green,
          ),
          InkWell(
            // onTap: _onShowUserAgent,
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(top: duSetWidth(15)),
              child: Text(
                'Consumers hit by online and phone problems as deadline looms',
                style: TextStyle(
                  fontFamily: kMontserrat,
                  fontSize: duSetFontSize(24),
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryText,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 120),
                  child: Text(
                    'tag',
                    style: TextStyle(
                      fontFamily: kAvenir,
                      fontWeight: FontWeight.normal,
                      color: AppColors.secondaryElementText,
                      fontSize: duSetFontSize(14),
                      height: 1,
                    ),
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                ),
                SizedBox(
                  width: duSetWidth(10),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 120),
                  child: Text(
                    '• 2023-01-01',
                    style: TextStyle(
                      fontSize: duSetFontSize(14),
                      fontFamily: kAvenir,
                      fontWeight: FontWeight.normal,
                      color: AppColors.thirdElementText,
                      height: 1,
                    ),
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // webview
  Widget _buildWebView() {
    return Container(
      child: WebViewWidget(controller: _controller),
      height: _webViewHeight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildPageTitle(),
            Divider(
              height: 1,
            ),
            _buildPageHeader(),
            _buildWebView(),
          ],
        ),
      ),
    );
  }
}
