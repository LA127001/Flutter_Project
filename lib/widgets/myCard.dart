import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class MyWidget extends StatelessWidget {
  final String title;
  final dynamic leadingIcon;
  final String? trailingText;
  // final IconData trailingIcon;
  const MyWidget({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.trailingText,
    // required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(16),
      child: InkWell(
        child: Column(
          children: [
            Row(
              children: [
                // Icon(leadingIcon, size: 24),
                HugeIcon(icon: leadingIcon, size: 24, color: Colors.black,),
                SizedBox(width: 12),

                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: .w700, fontSize: 18),
                  ),
                ),
                SizedBox(width: 8),
                if (trailingText != null)
                  Text(
                    trailingText!,
                    style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: .w500),
                  ),
                SizedBox(width: 15),
                // Icon(
                //   Icons.arrow_forward_outlined,
                //  size: 16,
                //   color: Colors.black,
                // ),
                HugeIcon(icon: HugeIcons.strokeRoundedArrowRight02,
                 size: 14,
                  color: Colors.black,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
