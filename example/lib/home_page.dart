import 'package:bimatarung_design_system/bimatarung_design_system.dart';
import 'package:flutter/material.dart';

import 'components/buttons/button_page.dart';
import 'components/colors/color_page.dart';
import 'components/text_style/text_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Bimatarung UI Kit'),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.only(
            top: 16.h,
            left: 20.w,
            right: 20.w,
            bottom: 32.h,
          ),
          shrinkWrap: true,
          children: const [
            _SectionTitle(
              title: 'Base Style',
            ),
            _Button(name: 'Colors', page: ColorPage()),
            _Button(name: 'Text Style', page: TextPage()),
            _SectionTitle(
              title: 'Components',
            ),
            _Button(name: 'Buttons', page: ButtonPage()),
          ],
        ),
      );
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          top: 30.h,
        ),
        child: Text(
          title,
          style: BTTextStyle.subHeading(
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.start,
        ),
      );
}

class _Button extends StatelessWidget {
  const _Button({required this.name, required this.page});

  final String name;
  final Widget page;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          top: 16.h,
        ),
        child: BTButton(
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => page),
            );
          },
          label: name,
          // disabled: true,
        ),
      );
}
