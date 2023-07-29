
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgWidget extends StatelessWidget {
  const SvgWidget({super.key, required this.path, this.size = 25, this.onTap});
  final String path;
  final double? size;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: SvgPicture.asset(path,
            fit: BoxFit.contain,
            height: size,
            width: size,
            placeholderBuilder: (BuildContext context) => const SizedBox(
                width: 25, height: 25, child: CircularProgressIndicator()),
            semanticsLabel: 'Acme Logo'),
      ),
    );
  }
}