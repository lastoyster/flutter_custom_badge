import 'package:flutter/material.dart';

class IconBadge extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final int count;
  final Color countBackColor;

  const IconBadge({
    super.key,
    required this.icon,
    required this.onTap,
    this.count = 0,
    this.countBackColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () => onTap(),
          icon: Icon(icon),
        ),
        count > 0
            ? Positioned(
                top: 0,
                right: 5,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: countBackColor,
                  ),
                  child: Text(
                    count > 9 ? '9+' : count.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
