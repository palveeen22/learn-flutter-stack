import 'package:flutter/material.dart';
// import 'package:waterhub/styles/colors.dart';

class WHAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  final void Function()? onBack;
  final List<Widget>? actions;

  WHAppBar(
      {required this.title,
      this.height = 42 + kToolbarHeight,
      this.onBack,
      this.actions});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      child: Container(
                          padding: EdgeInsets.all(20),
                          child: onBack != null
                              ? Image.asset("assets/back.png")
                              : Container(height: 15)),
                      onTap: onBack),
                  Container(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 7),
                      child: Text(
                        title,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headline2,
                      ))
                ],
              ),
              Align(
                heightFactor: 2.2,
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: actions == null ? [] : actions!,
                ),
              )
            ],
          ),
          Divider(color: Colors.grey, height: 1, thickness: 1)
        ],
      ),
    );
  }
}
