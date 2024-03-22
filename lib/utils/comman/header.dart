import 'package:banking_mobile_app/utils/constants/string_images.dart';
import 'package:flutter/material.dart';

class PHeader extends StatelessWidget {
  const PHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Icon
        Icon(
          Icons.pending,
          color: Colors.blue,
          size: 30,
        ),
    
        // AvatarPhoto
        Column(
          children: [
            PProfilePhoto(),
            
          ],
        ),
    
        // Icons
        Icon(Icons.more_horiz),
      ],
    );
  }
}

class PProfilePhoto extends StatelessWidget {
  const PProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          PImages.profile,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
