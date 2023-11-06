import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_unidade_widget.dart' show AddUnidadeWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddUnidadeModel extends FlutterFlowModel<AddUnidadeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
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
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel.dispose();
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
