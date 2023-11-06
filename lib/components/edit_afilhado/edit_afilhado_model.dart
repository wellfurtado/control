import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_afilhado_widget.dart' show EditAfilhadoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditAfilhadoModel extends FlutterFlowModel<EditAfilhadoWidget> {
  ///  Local state fields for this component.

  List<dynamic> listaUnidadeAtualizaAfilhado = [];
  void addToListaUnidadeAtualizaAfilhado(dynamic item) =>
      listaUnidadeAtualizaAfilhado.add(item);
  void removeFromListaUnidadeAtualizaAfilhado(dynamic item) =>
      listaUnidadeAtualizaAfilhado.remove(item);
  void removeAtIndexFromListaUnidadeAtualizaAfilhado(int index) =>
      listaUnidadeAtualizaAfilhado.removeAt(index);
  void insertAtIndexInListaUnidadeAtualizaAfilhado(int index, dynamic item) =>
      listaUnidadeAtualizaAfilhado.insert(index, item);
  void updateListaUnidadeAtualizaAfilhadoAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaUnidadeAtualizaAfilhado[index] =
          updateFn(listaUnidadeAtualizaAfilhado[index]);

  List<dynamic> listaOcupacaoAtualizaAfilhado = [];
  void addToListaOcupacaoAtualizaAfilhado(dynamic item) =>
      listaOcupacaoAtualizaAfilhado.add(item);
  void removeFromListaOcupacaoAtualizaAfilhado(dynamic item) =>
      listaOcupacaoAtualizaAfilhado.remove(item);
  void removeAtIndexFromListaOcupacaoAtualizaAfilhado(int index) =>
      listaOcupacaoAtualizaAfilhado.removeAt(index);
  void insertAtIndexInListaOcupacaoAtualizaAfilhado(int index, dynamic item) =>
      listaOcupacaoAtualizaAfilhado.insert(index, item);
  void updateListaOcupacaoAtualizaAfilhadoAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaOcupacaoAtualizaAfilhado[index] =
          updateFn(listaOcupacaoAtualizaAfilhado[index]);

  List<dynamic> listaPadrinhoAtualizaAfilhado = [];
  void addToListaPadrinhoAtualizaAfilhado(dynamic item) =>
      listaPadrinhoAtualizaAfilhado.add(item);
  void removeFromListaPadrinhoAtualizaAfilhado(dynamic item) =>
      listaPadrinhoAtualizaAfilhado.remove(item);
  void removeAtIndexFromListaPadrinhoAtualizaAfilhado(int index) =>
      listaPadrinhoAtualizaAfilhado.removeAt(index);
  void insertAtIndexInListaPadrinhoAtualizaAfilhado(int index, dynamic item) =>
      listaPadrinhoAtualizaAfilhado.insert(index, item);
  void updateListaPadrinhoAtualizaAfilhadoAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaPadrinhoAtualizaAfilhado[index] =
          updateFn(listaPadrinhoAtualizaAfilhado[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Consulta Unidade)] action in edit_afilhado widget.
  ApiCallResponse? outUnidadeatualizaafilhado;
  // Stores action output result for [Backend Call - API (Consulta Ocupacao)] action in edit_afilhado widget.
  ApiCallResponse? outOcupacaoatualizaafilhado;
  // Stores action output result for [Backend Call - API (Consulta Padrinho)] action in edit_afilhado widget.
  ApiCallResponse? outPadrinhoatualizaafilhado;
  // State field(s) for tf-nome-add-afilhado widget.
  FocusNode? tfNomeAddAfilhadoFocusNode1;
  TextEditingController? tfNomeAddAfilhadoController1;
  String? Function(BuildContext, String?)?
      tfNomeAddAfilhadoController1Validator;
  // State field(s) for tf-contato-add-afilhado widget.
  FocusNode? tfContatoAddAfilhadoFocusNode;
  TextEditingController? tfContatoAddAfilhadoController;
  final tfContatoAddAfilhadoMask =
      MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      tfContatoAddAfilhadoControllerValidator;
  // State field(s) for tf-formacao-add-afilhado widget.
  FocusNode? tfFormacaoAddAfilhadoFocusNode;
  TextEditingController? tfFormacaoAddAfilhadoController;
  String? Function(BuildContext, String?)?
      tfFormacaoAddAfilhadoControllerValidator;
  // State field(s) for tf-cidade-add-afilhado widget.
  FocusNode? tfCidadeAddAfilhadoFocusNode;
  TextEditingController? tfCidadeAddAfilhadoController;
  String? Function(BuildContext, String?)?
      tfCidadeAddAfilhadoControllerValidator;
  // State field(s) for tf-bairro-add-afilhado widget.
  FocusNode? tfBairroAddAfilhadoFocusNode;
  TextEditingController? tfBairroAddAfilhadoController;
  String? Function(BuildContext, String?)?
      tfBairroAddAfilhadoControllerValidator;
  // State field(s) for tf-zona-add-afilhado widget.
  FocusNode? tfZonaAddAfilhadoFocusNode;
  TextEditingController? tfZonaAddAfilhadoController;
  String? Function(BuildContext, String?)? tfZonaAddAfilhadoControllerValidator;
  // State field(s) for tf-contar-add-afilhado widget.
  FocusNode? tfContarAddAfilhadoFocusNode;
  TextEditingController? tfContarAddAfilhadoController;
  final tfContarAddAfilhadoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      tfContarAddAfilhadoControllerValidator;
  // State field(s) for tf-decreto-add-afilhado widget.
  FocusNode? tfDecretoAddAfilhadoFocusNode;
  TextEditingController? tfDecretoAddAfilhadoController;
  String? Function(BuildContext, String?)?
      tfDecretoAddAfilhadoControllerValidator;
  // State field(s) for DD-afilhadunidade widget.
  int? dDAfilhadunidadeValue;
  FormFieldController<int>? dDAfilhadunidadeValueController;
  // State field(s) for DD-afilhado-ocupacao widget.
  int? dDAfilhadoOcupacaoValue;
  FormFieldController<int>? dDAfilhadoOcupacaoValueController;
  // State field(s) for padrinho widget.
  int? padrinhoValue;
  FormFieldController<int>? padrinhoValueController;
  // State field(s) for tf-nome-add-afilhado widget.
  FocusNode? tfNomeAddAfilhadoFocusNode2;
  TextEditingController? tfNomeAddAfilhadoController2;
  String? Function(BuildContext, String?)?
      tfNomeAddAfilhadoController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfNomeAddAfilhadoFocusNode1?.dispose();
    tfNomeAddAfilhadoController1?.dispose();

    tfContatoAddAfilhadoFocusNode?.dispose();
    tfContatoAddAfilhadoController?.dispose();

    tfFormacaoAddAfilhadoFocusNode?.dispose();
    tfFormacaoAddAfilhadoController?.dispose();

    tfCidadeAddAfilhadoFocusNode?.dispose();
    tfCidadeAddAfilhadoController?.dispose();

    tfBairroAddAfilhadoFocusNode?.dispose();
    tfBairroAddAfilhadoController?.dispose();

    tfZonaAddAfilhadoFocusNode?.dispose();
    tfZonaAddAfilhadoController?.dispose();

    tfContarAddAfilhadoFocusNode?.dispose();
    tfContarAddAfilhadoController?.dispose();

    tfDecretoAddAfilhadoFocusNode?.dispose();
    tfDecretoAddAfilhadoController?.dispose();

    tfNomeAddAfilhadoFocusNode2?.dispose();
    tfNomeAddAfilhadoController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
