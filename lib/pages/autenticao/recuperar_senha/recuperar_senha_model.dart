import '/flutter_flow/flutter_flow_util.dart';
import 'recuperar_senha_widget.dart' show RecuperarSenhaWidget;
import 'package:flutter/material.dart';

class RecuperarSenhaModel extends FlutterFlowModel<RecuperarSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emaiRecuperar widget.
  FocusNode? emaiRecuperarFocusNode;
  TextEditingController? emaiRecuperarController;
  String? Function(BuildContext, String?)? emaiRecuperarControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emaiRecuperarFocusNode?.dispose();
    emaiRecuperarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
