import 'package:flutter/material.dart';

import 'package:bootstrap_flutter/src/controller_bootstrap.dart';

import 'models/model.dart';

class ScaffoldBootstrap extends StatefulWidget {
  final Color? backgroundColor;
  final List<Component> children;
  const ScaffoldBootstrap({
    Key? key,
    this.backgroundColor,
    required this.children,
  }) : super(key: key);

  @override
  _ScaffoldBootstrapState createState() => _ScaffoldBootstrapState();
}

class _ScaffoldBootstrapState extends State<ScaffoldBootstrap> {
  late ControllerBootstrap controller;

  @override
  void initState() {
    controller = ControllerBootstrap(widget.children);
    controller.createComponents();
    super.initState();
  }

  List<Widget> mountWidgets(TypeScreen typeScreen) {
    final widgets = controller.components
        .map((e) => e.organizations.containsKey(typeScreen)
            ? SizedBox(
                child: e.child,
                height: MediaQuery.of(context).size.height *
                    e.organizations[typeScreen]!.height,
                width: Screen.screens()[typeScreen]!.column *
                    e.organizations[typeScreen]!.division,
              )
            : Container())
        .toList();
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: mountWidgets(constraints.getScreenType));
            },
          ),
        ),
      ),
    );
  }
}
