import 'package:flutter/material.dart';

import '../../constants/color_ext.dart';

class CheckBoxView extends StatefulWidget {
  const CheckBoxView({
    super.key,
    required this.isSignIn,
  });

  final bool isSignIn;

  @override
  State<CheckBoxView> createState() => _CheckBoxViewState();
}

bool isSelected = false;

class _CheckBoxViewState extends State<CheckBoxView> {
  void _toggle(bool value) {
    setState(() {
      isSelected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isSignIn) {
      return Row(
        children: [
          Checkbox(value: isSelected, onChanged: (value) => _toggle(value!)),
          const Text('Remember me'),
          const Spacer(),
          TextButton(
              onPressed: () => (),
              child: const Text(
                'Forget password ?',
                style: TextStyle(color: C.accent),
              ))
        ],
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Checkbox(value: isSelected, onChanged: (value) => _toggle(value!)),
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.start,
              children: [
                const Text('By checking the box you agree to our '),
                TextButton(
                  onPressed: () => (),
                  style: ButtonStyle(
                    padding:
                        WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                    minimumSize: WidgetStateProperty.all<Size>(
                      const Size(0, 0),
                    ), // Optional: Further reduces size constraints
                    tapTargetSize: MaterialTapTargetSize
                        .shrinkWrap, // Optional: Reduce tap target size
                  ),
                  child: const Text(
                    'Terms',
                    style: TextStyle(color: C.accent),
                  ),
                ),
                const Text(' and '),
                TextButton(
                  onPressed: () => (),
                  style: ButtonStyle(
                    padding:
                        WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                    minimumSize: WidgetStateProperty.all<Size>(
                      const Size(0, 0),
                    ), // Optional: Further reduces size constraints
                    tapTargetSize: MaterialTapTargetSize
                        .shrinkWrap, // Optional: Reduce tap target size
                  ),
                  child: const Text(
                    'Conditions.',
                    style: TextStyle(color: C.accent),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
