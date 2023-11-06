import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_ocupacao_widget.dart' show EditOcupacaoWidget;
import 'package:flutter/material.dart';

class EditOcupacaoModel extends FlutterFlowModel<EditOcupacaoWidget> {
  ///  Local state fields for this component.

  List<dynamic> listaIdCodigoatualiza = [];
  void addToListaIdCodigoatualiza(dynamic item) =>
      listaIdCodigoatualiza.add(item);
  void removeFromListaIdCodigoatualiza(dynamic item) =>
      listaIdCodigoatualiza.remove(item);
  void removeAtIndexFromListaIdCodigoatualiza(int index) =>
      listaIdCodigoatualiza.removeAt(index);
  void insertAtIndexInListaIdCodigoatualiza(int index, dynamic item) =>
      listaIdCodigoatualiza.insert(index, item);
  void updateListaIdCodigoatualizaAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaIdCodigoatualiza[index] = updateFn(listaIdCodigoatualiza[index]);

  List<dynamic> listaUnidadeatualiza = [];
  void addToListaUnidadeatualiza(dynamic item) =>
      listaUnidadeatualiza.add(item);
  void removeFromListaUnidadeatualiza(dynamic item) =>
      listaUnidadeatualiza.remove(item);
  void removeAtIndexFromListaUnidadeatualiza(int index) =>
      listaUnidadeatualiza.removeAt(index);
  void insertAtIndexInListaUnidadeatualiza(int index, dynamic item) =>
      listaUnidadeatualiza.insert(index, item);
  void updateListaUnidadeatualizaAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaUnidadeatualiza[index] = updateFn(listaUnidadeatualiza[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Consulta Codigo)] action in edit_ocupacao widget.
  ApiCallResponse? outCodigoAtualiza;
  // Stores action output result for [Backend Call - API (Consulta Unidade)] action in edit_ocupacao widget.
  ApiCallResponse? outUnidadeAtualiza;
  // State field(s) for nome-add-ocupacao widget.
  FocusNode? nomeAddOcupacaoFocusNode;
  TextEditingController? nomeAddOcupacaoController;
  String? Function(BuildContext, String?)? nomeAddOcupacaoControllerValidator;
  // State field(s) for tipo-add-ocupacao widget.
  String? tipoAddOcupacaoValue;
  FormFieldController<String>? tipoAddOcupacaoValueController;
  // State field(s) for codigo-add-ocupacao widget.
  int? codigoAddOcupacaoValue;
  FormFieldController<int>? codigoAddOcupacaoValueController;
  // State field(s) for unidade-add-ocupacao widget.
  int? unidadeAddOcupacaoValue;
  FormFieldController<int>? unidadeAddOcupacaoValueController;
  // State field(s) for desc-add-ocupacao widget.
  FocusNode? descAddOcupacaoFocusNode;
  TextEditingController? descAddOcupacaoController;
  String? Function(BuildContext, String?)? descAddOcupacaoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeAddOcupacaoFocusNode?.dispose();
    nomeAddOcupacaoController?.dispose();

    descAddOcupacaoFocusNode?.dispose();
    descAddOcupacaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
