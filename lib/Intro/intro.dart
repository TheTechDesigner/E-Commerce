import 'package:e_commerce/Intro/components/emptyAppBar.dart';
import 'package:e_commerce/Intro/components/introBottom.dart';
import 'package:e_commerce/Intro/components/introData.dart';
import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  Intro({Key key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  var _controller = PageController();
  var _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page.round();
      });
    });
    return Scaffold(
      backgroundColor: kAccentColor,
      appBar: EmptyAppBar(),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: introData.length,
              itemBuilder: (context, index) => IntroData(
                introImage: introData[index]['image'],
                headText: introData[index]['headText'],
                descText: introData[index]['descText'],
              ),
              onPageChanged: (page) {
                setState(() {
                  _currentPage = page;
                });
              },
            ),
          ),
          IntroBottom(currentPage: _currentPage)
        ],
      ),
    );
  }
}
