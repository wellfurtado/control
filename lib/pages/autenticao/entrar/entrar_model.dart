import '/flutter_flow/flutter_flow_util.dart';
import 'entrar_widget.dart' show EntrarWidget;
import 'package:flutter/material.dart';

class EntrarModel extends FlutterFlowModel<EntrarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailLogin widget.
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  // State field(s) for senhaLogin widget.
  FocusNode? senhaLoginFocusNode;
  TextEditingController? senhaLoginController;
  late bool senhaLoginVisibility;
  String? Function(BuildContext, String?)? senhaLoginControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    senhaLoginVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailLoginFocusNode?.dispose();
    emailLoginController?.dispose();

    senhaLoginFocusNode?.dispose();
    senhaLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
