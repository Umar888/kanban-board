import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:kanban_board/constant/color.dart';


class BottomNavigationBarWidget extends StatelessWidget {
  final TabController tabController;
  int index;
  final void Function(int) onTap;

  BottomNavigationBarWidget({
    super.key,
    required this.onTap,
    required this.tabController,
    required this.index,
  }) ;

  @override
  Widget build(BuildContext context) {
    return StyleProvider(
      style: Style(),
      child: ConvexAppBar(
        controller: tabController,
        color: index == 1?AppColors.primaryColor:Colors.grey,
        elevation: 2,
        activeColor: AppColors.primaryColor,
        initialActiveIndex: 0,
        style: TabStyle.fixedCircle,
        cornerRadius: 10,
        items:  [
          const TabItem(
            icon: Icons.grid_on,
            title: 'Tasks',
          ),
          TabItem(
            icon: Container(
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle

                ),
                child: const Icon(Icons.add,color: Colors.white,)),
            title: '',
          ),
          const TabItem(
            icon: Icons.history,
            title: 'History',
          ),
        ],
        backgroundColor: AppColors.groupBackgroundColor,
        onTap: onTap,
      ),
    );
  }
}
class Style extends StyleHook {
  @override
  double get activeIconSize => 26;


  @override
  double get activeIconMargin => 10;

  @override
  double get iconSize => 24;

  @override
  TextStyle textStyle(Color color,String? fontFamily) {
    return TextStyle(fontSize: 13, color: color);
  }
}