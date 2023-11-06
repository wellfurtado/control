import '/backend/api_requests/api_calls.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_usuario_widget.dart' show AddUsuarioWidget;
import 'package:flutter/material.dart';

class AddUsuarioModel extends FlutterFlowModel<AddUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for nome-add-user widget.
  FocusNode? nomeAddUserFocusNode;
  TextEditingController? nomeAddUserController;
  String? Function(BuildContext, String?)? nomeAddUserControllerValidator;
  String? _nomeAddUserControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  // State field(s) for email-add-user widget.
  FocusNode? emailAddUserFocusNode;
  TextEditingController? emailAddUserController;
  String? Function(BuildContext, String?)? emailAddUserControllerValidator;
  String? _emailAddUserControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for senha-add-user widget.
  FocusNode? senhaAddUserFocusNode;
  TextEditingController? senhaAddUserController;
  late bool senhaAddUserVisibility;
  String? Function(BuildContext, String?)? senhaAddUserControllerValidator;
  String? _senhaAddUserControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  // State field(s) for perfil-add-user widget.
  String? perfilAddUserValue;
  FormFieldController<String>? perfilAddUserValueController;
  // Stores action output result for [Backend Call - API (InserirUsuario)] action in add-user widget.
  ApiCallResponse? outUser;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
    nomeAddUserControllerValidator = _nomeAddUserControllerValidator;
    emailAddUserControllerValidator = _emailAddUserControllerValidator;
    senhaAddUserVisibility = false;
    senhaAddUserControllerValidator = _senhaAddUserControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel.dispose();
    nomeAddUserFocusNode?.dispose();
    nomeAddUserController?.dispose();

    emailAddUserFocusNode?.dispose();
    emailAddUserController?.dispose();

    senhaAddUserFocusNode?.dispose();
    senhaAddUserController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
