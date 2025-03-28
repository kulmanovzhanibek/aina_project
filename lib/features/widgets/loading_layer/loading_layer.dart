import 'dart:developer';

import 'package:aina_project/core/const/all_styles.dart';
import 'package:flutter/material.dart';

///best our implementation of loading layer
class LoadingLayer extends StatelessWidget {
  static final Map<String, OverlayEntry?> _entriesMap = {};

  const LoadingLayer._();

  static OverlayState? _overlayState;

  ///syntax sugar for less code on screens
  static void showOrHide(BuildContext context,
      {bool isShow = true, String overlayKey = ''}) {
    if (isShow) {
      LoadingLayer.show(context, overlayKey: overlayKey);
    } else {
      LoadingLayer.hide(overlayKey: overlayKey);
    }
  }

  static void show(
    BuildContext context, {
    String overlayKey = '',
    bool isTinted = true,
  }) {
    _overlayState = Overlay.of(context);
    FocusScope.of(context).unfocus();

    if (_entriesMap[overlayKey] == null) {
      _entriesMap[overlayKey] = OverlayEntry(builder: (context) {
        return Stack(
          children: <Widget>[
            if (isTinted)
              SafeArea(
                bottom: false,
                top: false,
                child: Container(
                  color: Colors.black54,
                ),
              ),
            const Center(
              child: LoadingLayer._(),
            ),
          ],
        );
      });
      if (_entriesMap.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) => _overlayState?.insertAll([_entriesMap[overlayKey]!]));
      }
    }
  }

  static void hide({String overlayKey = ''}) {
    if (_entriesMap[overlayKey] != null) {
      try {
        _entriesMap[overlayKey]?.remove();
      } catch (e) {
        log(e.toString());
      } finally {
        _entriesMap[overlayKey] = null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: const CircularProgressIndicator(color: colorBlue),
    );
  }
}

class LoadingLayerProvider extends StatefulWidget {
  final Widget child;
  final String loadingKey;

  const LoadingLayerProvider({
    Key? key,
    required this.child,
    this.loadingKey = '',
  }) : super(key: key);

  @override
  _LoadingLayerProviderState createState() => _LoadingLayerProviderState();
}

class _LoadingLayerProviderState extends State<LoadingLayerProvider> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    LoadingLayer.hide(overlayKey: widget.loadingKey);
    super.dispose();
  }
}
