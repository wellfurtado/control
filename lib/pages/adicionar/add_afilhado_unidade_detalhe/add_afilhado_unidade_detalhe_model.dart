import '/backend/api_requests/api_calls.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_afilhado_unidade_detalhe_widget.dart'
    show AddAfilhadoUnidadeDetalheWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddAfilhadoUnidadeDetalheModel
    extends FlutterFlowModel<AddAfilhadoUnidadeDetalheWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaunidade = [];
  void addToListaunidade(dynamic item) => listaunidade.add(item);
  void removeFromListaunidade(dynamic item) => listaunidade.remove(item);
  void removeAtIndexFromListaunidade(int index) => listaunidade.removeAt(index);
  void insertAtIndexInListaunidade(int index, dynamic item) =>
      listaunidade.insert(index, item);
  void updateListaunidadeAtIndex(int index, Function(dynamic) updateFn) =>
      listaunidade[index] = updateFn(listaunidade[index]);

  List<dynamic> listapadrinho = [];
  void addToListapadrinho(dynamic item) => listapadrinho.add(item);
  void removeFromListapadrinho(dynamic item) => listapadrinho.remove(item);
  void removeAtIndexFromListapadrinho(int index) =>
      listapadrinho.removeAt(index);
  void insertAtIndexInListapadrinho(int index, dynamic item) =>
      listapadrinho.insert(index, item);
  void updateListapadrinhoAtIndex(int index, Function(dynamic) updateFn) =>
      listapadrinho[index] = updateFn(listapadrinho[index]);

  List<dynamic> listaocupacao = [];
  void addToListaocupacao(dynamic item) => listaocupacao.add(item);
  void removeFromListaocupacao(dynamic item) => listaocupacao.remove(item);
  void removeAtIndexFromListaocupacao(int index) =>
      listaocupacao.removeAt(index);
  void insertAtIndexInListaocupacao(int index, dynamic item) =>
      listaocupacao.insert(index, item);
  void updateListaocupacaoAtIndex(int index, Function(dynamic) updateFn) =>
      listaocupacao[index] = updateFn(listaocupacao[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Consulta Unidade)] action in addAfilhadoUnidadeDetalhe widget.
  ApiCallResponse? outUnidad;
  // Stores action output result for [Backend Call - API (Consulta Ocupacao)] action in addAfilhadoUnidadeDetalhe widget.
  ApiCallResponse? outOcupacao;
  // Stores action output result for [Backend Call - API (Consulta Padrinho)] action in addAfilhadoUnidadeDetalhe widget.
  ApiCallResponse? outPadrinho;
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
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
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel.dispose();
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
