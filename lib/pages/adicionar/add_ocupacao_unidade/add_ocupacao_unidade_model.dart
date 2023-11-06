import '/backend/api_requests/api_calls.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_ocupacao_unidade_widget.dart' show AddOcupacaoUnidadeWidget;
import 'package:flutter/material.dart';

class AddOcupacaoUnidadeModel
    extends FlutterFlowModel<AddOcupacaoUnidadeWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaIdCodigo = [];
  void addToListaIdCodigo(dynamic item) => listaIdCodigo.add(item);
  void removeFromListaIdCodigo(dynamic item) => listaIdCodigo.remove(item);
  void removeAtIndexFromListaIdCodigo(int index) =>
      listaIdCodigo.removeAt(index);
  void insertAtIndexInListaIdCodigo(int index, dynamic item) =>
      listaIdCodigo.insert(index, item);
  void updateListaIdCodigoAtIndex(int index, Function(dynamic) updateFn) =>
      listaIdCodigo[index] = updateFn(listaIdCodigo[index]);

  List<dynamic> listaUnidade = [];
  void addToListaUnidade(dynamic item) => listaUnidade.add(item);
  void removeFromListaUnidade(dynamic item) => listaUnidade.remove(item);
  void removeAtIndexFromListaUnidade(int index) => listaUnidade.removeAt(index);
  void insertAtIndexInListaUnidade(int index, dynamic item) =>
      listaUnidade.insert(index, item);
  void updateListaUnidadeAtIndex(int index, Function(dynamic) updateFn) =>
      listaUnidade[index] = updateFn(listaUnidade[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Consulta Codigo)] action in addOcupacaoUnidade widget.
  ApiCallResponse? outCodigo;
  // Stores action output result for [Backend Call - API (Consulta Unidade)] action in addOcupacaoUnidade widget.
  ApiCallResponse? outUnidade;
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
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
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel.dispose();
    nomeAddOcupacaoFocusNode?.dispose();
    nomeAddOcupacaoController?.dispose();

    descAddOcupacaoFocusNode?.dispose();
    descAddOcupacaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
