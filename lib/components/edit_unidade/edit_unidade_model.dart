import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_unidade_widget.dart' show EditUnidadeWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditUnidadeModel extends FlutterFlowModel<EditUnidadeWidget> {
  ///  Local state fields for this component.

  UnidadeRow? varEditUnidade;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tf-nome-add-unidade widget.
  FocusNode? tfNomeAddUnidadeFocusNode;
  TextEditingController? tfNomeAddUnidadeController;
  String? Function(BuildContext, String?)? tfNomeAddUnidadeControllerValidator;
  // State field(s) for tf-contato-add-unidade widget.
  FocusNode? tfContatoAddUnidadeFocusNode;
  TextEditingController? tfContatoAddUnidadeController;
  final tfContatoAddUnidadeMask =
      MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      tfContatoAddUnidadeControllerValidator;
  // State field(s) for tf-endereco-add-unidade widget.
  FocusNode? tfEnderecoAddUnidadeFocusNode;
  TextEditingController? tfEnderecoAddUnidadeController;
  String? Function(BuildContext, String?)?
      tfEnderecoAddUnidadeControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfNomeAddUnidadeFocusNode?.dispose();
    tfNomeAddUnidadeController?.dispose();

    tfContatoAddUnidadeFocusNode?.dispose();
    tfContatoAddUnidadeController?.dispose();

    tfEnderecoAddUnidadeFocusNode?.dispose();
    tfEnderecoAddUnidadeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
