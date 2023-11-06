import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_afilhado_widget.dart' show EditarAfilhadoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditarAfilhadoModel extends FlutterFlowModel<EditarAfilhadoWidget> {
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

  // Stores action output result for [Backend Call - API (Consulta Unidade)] action in editar_afilhado widget.
  ApiCallResponse? outUnidadeatualizaafilhado;
  // Stores action output result for [Backend Call - API (Consulta Ocupacao)] action in editar_afilhado widget.
  ApiCallResponse? outOcupacaoatualizaafilhado;
  // Stores action output result for [Backend Call - API (Consulta Padrinho)] action in editar_afilhado widget.
  ApiCallResponse? outPadrinhoatualizaafilhado;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  final textFieldMask2 = MaskTextInputFormatter(mask: '(##)####-####');
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for DropDownUnidade widget.
  int? dropDownUnidadeValue;
  FormFieldController<int>? dropDownUnidadeValueController;
  // State field(s) for DropDownOcupacao widget.
  int? dropDownOcupacaoValue;
  FormFieldController<int>? dropDownOcupacaoValueController;
  // State field(s) for DropDownPadrinho widget.
  int? dropDownPadrinhoValue;
  FormFieldController<int>? dropDownPadrinhoValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    textFieldFocusNode9?.dispose();
    textController9?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
