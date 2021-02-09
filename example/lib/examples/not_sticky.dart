import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import '../common.dart';

class NotStickyExample extends StatelessWidget {
  const NotStickyExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Not Sticky Example',
      slivers: [
        _NotStickyList(index: 0),
        _NotStickyList(index: 1),
        _NotStickyList(index: 2),
        _NotStickyList(index: 3),
      ],
    );
  }
}

class _NotStickyList extends StatelessWidget {
  const _NotStickyList({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      header: Header(index: index),
      sticky: false,
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) => ListTile(
            leading: CircleAvatar(
              child: Text('$index'),
            ),
            title: Text('List tile #$i'),
          ),
          childCount: 6,
        ),
      ),
    );
  }
}
