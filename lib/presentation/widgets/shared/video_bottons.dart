import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoBottons extends StatelessWidget {
  final VideoPost videoPost;

  const VideoBottons({super.key, required this.videoPost});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          iconData: Icons.favorite,
          value: videoPost.likes,
          iconColor: Colors.redAccent,
        ),
        _CustomIconButton(
          iconData: Icons.remove_red_eye_outlined,
          value: videoPost.views,
        ),
        SpinPerfect(
          duration: const Duration(seconds: 5),
          infinite: true,
          child: _CustomIconButton(
            iconData: Icons.play_circle_outline_sharp,
            value: 0,
          ),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final int value;
  final Color? color;

  const _CustomIconButton({
    required this.iconData,
    required this.value,
    iconColor,
  }) : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData, color: color),
        ),
        if (value > 0) Text(HumanFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}
