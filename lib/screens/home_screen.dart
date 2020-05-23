import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterportfoliocodepen/constants.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

const List<CodePen> codePenList = [
  CodePen("Codepen I", "https://codepen.io/md-weber/pen/YzyExNX"),
  CodePen("Navigationbar stays on Page Transition",
      "https://codepen.io/md-weber/pen/MWarERY"),
  CodePen("Navigationbar stays on Page Transition",
      "https://codepen.io/md-weber/pen/MWarERY"),
  CodePen("Navigationbar stays on Page Transition",
      "https://codepen.io/md-weber/pen/MWarERY"),
];

class CodePen {
  final String name;
  final String url;

  const CodePen(this.name, this.url);
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AppBar(
              title: Text("Portfolio"),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(Icons.zoom_in),
                          onPressed: () => openSocialMedia(
                              "https://twitter.com/flutter_exp", "Twitter"),
                        ),
                        IconButton(
                          icon: Icon(Icons.accessibility),
                          onPressed: () => openSocialMedia(
                              "https://twitter.com/flutter_exp", "Twitter"),
                        ),
                        IconButton(
                          icon: Icon(Icons.whatshot),
                          onPressed: () => openSocialMedia(
                              "https://twitter.com/flutter_exp", "Twitter"),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 200.0),
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                              width: 10.0,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemCount: codePenList.length,
                            itemBuilder: (context, index) => CodePenItem(
                              codePen: codePenList[index],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  openSocialMedia(String url, String name) {
    if (kIsWeb) {
      html.window.open(
        url,
        name,
      );
    }
  }
}

class CodePenItem extends StatelessWidget {
  final CodePen codePen;
  static const double width = 150;

  const CodePenItem({@required this.codePen});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (kIsWeb) {
          print(codePen.name);
          print(codePen.url);
          html.window.open(
            codePen.url,
            codePen.name,
          );
        }
      },
      child: Center(
        child: Column(
          children: [
            Container(
              width: width,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/$width/100"),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: kShadowColor,
                        blurRadius: 5.0,
                        offset: Offset(2, 2))
                  ]),
            ),
            SizedBox(height: 10.0),
            Container(
              width: width,
              height: 50,
              child: Text(
                codePen.name,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
