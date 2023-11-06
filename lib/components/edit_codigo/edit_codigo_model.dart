import '/flutter_flow/flutter_flow_util.dart';
import 'edit_codigo_widget.dart' show EditCodigoWidget;
import 'package:flutter/material.dart';

class EditCodigoModel extends FlutterFlowModel<EditCodigoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tf-nome-codigo widget.
  FocusNode? tfNomeCodigoFocusNode;
  TextEditingController? tfNomeCodigoController;
  String? Function(BuildContext, String?)? tfNomeCodigoControllerValidator;
  // State field(s) for tf-valor-codigo widget.
  FocusNode? tfValorCodigoFocusNode;
  TextEditingController? tfValorCodigoController;
  String? Function(BuildContext, String?)? tfValorCodigoControllerValidator;
  // State field(s) for tf-desc-codigo widget.
  FocusNode? tfDescCodigoFocusNode;
  TextEditingController? tfDescCodigoController;
  String? Function(BuildContext, String?)? tfDescCodigoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfNomeCodigoFocusNode?.dispose();
    tfNomeCodigoController?.dispose();

    tfValorCodigoFocusNode?.dispose();
    tfValorCodigoController?.dispose();

    tfDescCodigoFocusNode?.dispose();
    tfDescCodigoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
