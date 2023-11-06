import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_padrinho_widget.dart' show AddPadrinhoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddPadrinhoModel extends FlutterFlowModel<AddPadrinhoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
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
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel.dispose();
    tfNomeAddPadrinhoFocusNode?.dispose();
    tfNomeAddPadrinhoController?.dispose();

    tfContatoAddPadrinhoFocusNode?.dispose();
    tfContatoAddPadrinhoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
