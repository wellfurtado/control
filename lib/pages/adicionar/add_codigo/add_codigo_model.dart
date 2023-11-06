import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_codigo_widget.dart' show AddCodigoWidget;
import 'package:flutter/material.dart';

class AddCodigoModel extends FlutterFlowModel<AddCodigoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
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
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel.dispose();
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
