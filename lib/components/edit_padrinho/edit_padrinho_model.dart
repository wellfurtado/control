import '/flutter_flow/flutter_flow_util.dart';
import 'edit_padrinho_widget.dart' show EditPadrinhoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditPadrinhoModel extends FlutterFlowModel<EditPadrinhoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tf-nome-add-padrinho widget.
  FocusNode? tfNomeAddPadrinhoFocusNode;
  TextEditingController? tfNomeAddPadrinhoController;
  String? Function(BuildContext, String?)? tfNomeAddPadrinhoControllerValidator;
  // State field(s) for tf-contato-add-padrinho widget.
  FocusNode? tfContatoAddPadrinhoFocusNode;
  TextEditingController? tfContatoAddPadrinhoController;
  final tfContatoAddPadrinhoMask =
      MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      tfContatoAddPadrinhoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfNomeAddPadrinhoFocusNode?.dispose();
    tfNomeAddPadrinhoController?.dispose();

    tfContatoAddPadrinhoFocusNode?.dispose();
    tfContatoAddPadrinhoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
