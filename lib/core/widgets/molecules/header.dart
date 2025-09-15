import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Header extends ConsumerWidget implements PreferredSizeWidget {
  const Header(
    {
        super.key,
        this.title = '城なび'
    }
  );

  final String title; // ← 受け取った値を保持

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      centerTitle: false, // タイトルを左寄せ
      title: Text(title),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 8.0), // 右に余白
            child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
                Scaffold.of(context).openEndDrawer();
            },
            ),
        ),
      ],
    );
  }

  @override
  // kToolbarHeight:Flutter が定義している定数で、デフォルトの AppBar の高さ（56.0）
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}