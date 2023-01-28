import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/styled_text.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomTextTag extends StatefulWidget {
  const CustomTextTag({super.key, required this.text, this.style});

  final String text;

  final TextStyle? style;

  @override
  State<CustomTextTag> createState() => _CustomTextTagState();
}

class _CustomTextTagState extends State<CustomTextTag> {
  @override
  Widget build(BuildContext context) {
    return StyledText(
      text: widget.text,
      style: widget.style,
      tags: {
        'bold': StyledTextTag(
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        'italic': StyledTextTag(
          style: const TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
        'link': StyledTextActionTag(
            style: const TextStyle(decoration: TextDecoration.underline),
            (text, attrs) {
          final String? link = attrs['href'];
          final Uri url = Uri.parse(link!);

          void _launchUrl() async {
            if (!await launchUrl(url)) throw 'Could not launch $url';
          }

          setState(() {
            _launchUrl();
          });
        }),
      },
    );
  }
}
