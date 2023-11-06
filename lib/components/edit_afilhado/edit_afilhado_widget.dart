import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'edit_afilhado_model.dart';
export 'edit_afilhado_model.dart';

class EditAfilhadoWidget extends StatefulWidget {
  const EditAfilhadoWidget({
    super.key,
    required this.parametroEditarAfilhado,
  });

  final AfilhadoRow? parametroEditarAfilhado;

  @override
  _EditAfilhadoWidgetState createState() => _EditAfilhadoWidgetState();
}

class _EditAfilhadoWidgetState extends State<EditAfilhadoWidget> {
  late EditAfilhadoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditAfilhadoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.outUnidadeatualizaafilhado = await ConsultaUnidadeCall.call();
      if ((_model.outUnidadeatualizaafilhado?.succeeded ?? true)) {
        setState(() {
          _model.listaUnidadeAtualizaAfilhado =
              (_model.outUnidadeatualizaafilhado?.jsonBody ?? '')
                  .toList()
                  .cast<dynamic>();
        });
      }
      _model.outOcupacaoatualizaafilhado = await ConsultaOcupacaoCall.call();
      if ((_model.outOcupacaoatualizaafilhado?.succeeded ?? true)) {
        setState(() {
          _model.listaOcupacaoAtualizaAfilhado =
              (_model.outOcupacaoatualizaafilhado?.jsonBody ?? '')
                  .toList()
                  .cast<dynamic>();
        });
      }
      _model.outPadrinhoatualizaafilhado = await ConsultaPadrinhoCall.call();
      if ((_model.outPadrinhoatualizaafilhado?.succeeded ?? true)) {
        setState(() {
          _model.listaPadrinhoAtualizaAfilhado =
              (_model.outPadrinhoatualizaafilhado?.jsonBody ?? '')
                  .toList()
                  .cast<dynamic>();
        });
      }
    });

    _model.tfNomeAddAfilhadoController1 ??=
        TextEditingController(text: widget.parametroEditarAfilhado?.nome);
    _model.tfNomeAddAfilhadoFocusNode1 ??= FocusNode();

    _model.tfContatoAddAfilhadoController ??=
        TextEditingController(text: widget.parametroEditarAfilhado?.contato);
    _model.tfContatoAddAfilhadoFocusNode ??= FocusNode();

    _model.tfFormacaoAddAfilhadoController ??=
        TextEditingController(text: widget.parametroEditarAfilhado?.formacao);
    _model.tfFormacaoAddAfilhadoFocusNode ??= FocusNode();

    _model.tfCidadeAddAfilhadoController ??=
        TextEditingController(text: widget.parametroEditarAfilhado?.cidade);
    _model.tfCidadeAddAfilhadoFocusNode ??= FocusNode();

    _model.tfBairroAddAfilhadoController ??=
        TextEditingController(text: widget.parametroEditarAfilhado?.bairro);
    _model.tfBairroAddAfilhadoFocusNode ??= FocusNode();

    _model.tfZonaAddAfilhadoController ??=
        TextEditingController(text: widget.parametroEditarAfilhado?.zona);
    _model.tfZonaAddAfilhadoFocusNode ??= FocusNode();

    _model.tfContarAddAfilhadoController ??=
        TextEditingController(text: widget.parametroEditarAfilhado?.nomeacao);
    _model.tfContarAddAfilhadoFocusNode ??= FocusNode();

    _model.tfDecretoAddAfilhadoController ??= TextEditingController();
    _model.tfDecretoAddAfilhadoFocusNode ??= FocusNode();

    _model.tfNomeAddAfilhadoController2 ??=
        TextEditingController(text: widget.parametroEditarAfilhado?.observacao);
    _model.tfNomeAddAfilhadoFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.00, 0.00),
      child: Container(
        width: 1025.0,
        height: 629.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.00, 0.00),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  'Atualizar Afilhado',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).displaySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: SizedBox(
                          width: 400.0,
                          child: TextFormField(
                            controller: _model.tfNomeAddAfilhadoController1,
                            focusNode: _model.tfNomeAddAfilhadoFocusNode1,
                            autofocus: true,
                            autofillHints: const [AutofillHints.name],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Nome',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelLarge,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).bodyLarge,
                            validator: _model
                                .tfNomeAddAfilhadoController1Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: SizedBox(
                          width: 200.0,
                          child: TextFormField(
                            controller: _model.tfContatoAddAfilhadoController,
                            focusNode: _model.tfContatoAddAfilhadoFocusNode,
                            autofocus: true,
                            autofillHints: const [
                              AutofillHints.telephoneNumberNational
                            ],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Contato',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelLarge,
                              hintText: '(##) #####-####',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).bodyLarge,
                            keyboardType: TextInputType.phone,
                            validator: _model
                                .tfContatoAddAfilhadoControllerValidator
                                .asValidator(context),
                            inputFormatters: [_model.tfContatoAddAfilhadoMask],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: SizedBox(
                        width: 300.0,
                        child: TextFormField(
                          controller: _model.tfFormacaoAddAfilhadoController,
                          focusNode: _model.tfFormacaoAddAfilhadoFocusNode,
                          autofocus: true,
                          autofillHints: const [AutofillHints.name],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Formação',
                            labelStyle: FlutterFlowTheme.of(context).labelLarge,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          style: FlutterFlowTheme.of(context).bodyLarge,
                          validator: _model
                              .tfFormacaoAddAfilhadoControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: SizedBox(
                          width: 200.0,
                          child: TextFormField(
                            controller: _model.tfCidadeAddAfilhadoController,
                            focusNode: _model.tfCidadeAddAfilhadoFocusNode,
                            autofocus: true,
                            autofillHints: const [AutofillHints.birthday],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Cidade',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelLarge,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).bodyLarge,
                            keyboardType: TextInputType.datetime,
                            validator: _model
                                .tfCidadeAddAfilhadoControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: SizedBox(
                          width: 200.0,
                          child: TextFormField(
                            controller: _model.tfBairroAddAfilhadoController,
                            focusNode: _model.tfBairroAddAfilhadoFocusNode,
                            autofocus: true,
                            autofillHints: const [AutofillHints.name],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Bairro',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelLarge,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).bodyLarge,
                            validator: _model
                                .tfBairroAddAfilhadoControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: SizedBox(
                        width: 200.0,
                        child: TextFormField(
                          controller: _model.tfZonaAddAfilhadoController,
                          focusNode: _model.tfZonaAddAfilhadoFocusNode,
                          autofocus: true,
                          autofillHints: const [AutofillHints.name],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Zona',
                            labelStyle: FlutterFlowTheme.of(context).labelLarge,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          style: FlutterFlowTheme.of(context).bodyLarge,
                          validator: _model.tfZonaAddAfilhadoControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.15,
                          child: TextFormField(
                            controller: _model.tfContarAddAfilhadoController,
                            focusNode: _model.tfContarAddAfilhadoFocusNode,
                            autofocus: true,
                            autofillHints: const [AutofillHints.birthday],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'À Contar de',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelLarge,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).bodyLarge,
                            validator: _model
                                .tfContarAddAfilhadoControllerValidator
                                .asValidator(context),
                            inputFormatters: [_model.tfContarAddAfilhadoMask],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.15,
                          child: TextFormField(
                            controller: _model.tfDecretoAddAfilhadoController,
                            focusNode: _model.tfDecretoAddAfilhadoFocusNode,
                            autofocus: true,
                            autofillHints: const [AutofillHints.name],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText:
                                  widget.parametroEditarAfilhado?.decreto,
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelLarge,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).bodyLarge,
                            validator: _model
                                .tfDecretoAddAfilhadoControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: FlutterFlowDropDown<int>(
                        controller: _model.dDAfilhadunidadeValueController ??=
                            FormFieldController<int>(
                          _model.dDAfilhadunidadeValue ??=
                              widget.parametroEditarAfilhado?.idUnidade,
                        ),
                        options:
                            List<int>.from(_model.listaUnidadeAtualizaAfilhado
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.id''',
                                    ))
                                .toList()
                                .cast<int>()),
                        optionLabels: _model.listaUnidadeAtualizaAfilhado
                            .map((e) => getJsonField(
                                  e,
                                  r'''$.nome''',
                                ))
                            .toList()
                            .map((e) => e.toString())
                            .toList(),
                        onChanged: (val) =>
                            setState(() => _model.dDAfilhadunidadeValue = val),
                        width: MediaQuery.sizeOf(context).width * 0.2,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: 'Unidade',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: FlutterFlowDropDown<int>(
                        controller: _model.dDAfilhadoOcupacaoValueController ??=
                            FormFieldController<int>(
                          _model.dDAfilhadoOcupacaoValue ??=
                              widget.parametroEditarAfilhado?.idOcupacao,
                        ),
                        options:
                            List<int>.from(_model.listaOcupacaoAtualizaAfilhado
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.id''',
                                    ))
                                .toList()
                                .cast<int>()),
                        optionLabels: _model.listaOcupacaoAtualizaAfilhado
                            .map((e) => getJsonField(
                                  e,
                                  r'''$.nome''',
                                ))
                            .toList()
                            .map((e) => e.toString())
                            .toList(),
                        onChanged: (val) => setState(
                            () => _model.dDAfilhadoOcupacaoValue = val),
                        width: 500.0,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: 'Ocupação',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: FlutterFlowDropDown<int>(
                        controller: _model.padrinhoValueController ??=
                            FormFieldController<int>(
                          _model.padrinhoValue ??=
                              widget.parametroEditarAfilhado?.idPadrinho,
                        ),
                        options:
                            List<int>.from(_model.listaPadrinhoAtualizaAfilhado
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.id''',
                                    ))
                                .toList()
                                .cast<int>()),
                        optionLabels: _model.listaPadrinhoAtualizaAfilhado
                            .map((e) => getJsonField(
                                  e,
                                  r'''$.nome''',
                                ))
                            .toList()
                            .map((e) => e.toString())
                            .toList(),
                        onChanged: (val) =>
                            setState(() => _model.padrinhoValue = val),
                        width: 300.0,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: 'Padrinho',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.35,
                          child: TextFormField(
                            controller: _model.tfNomeAddAfilhadoController2,
                            focusNode: _model.tfNomeAddAfilhadoFocusNode2,
                            autofocus: true,
                            autofillHints: const [AutofillHints.name],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Observação',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelLarge,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).bodyLarge,
                            maxLines: 5,
                            keyboardType: TextInputType.multiline,
                            validator: _model
                                .tfNomeAddAfilhadoController2Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'Cancelar',
                          options: FFButtonOptions(
                            width: 200.0,
                            height: 44.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).accent3,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: const Color(0xFF161616),
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await AfilhadoTable().update(
                              data: {
                                'nome':
                                    _model.tfNomeAddAfilhadoController1.text,
                                'contato':
                                    _model.tfContatoAddAfilhadoController.text,
                                'formacao':
                                    _model.tfFormacaoAddAfilhadoController.text,
                                'cidade':
                                    _model.tfCidadeAddAfilhadoController.text,
                                'bairro':
                                    _model.tfBairroAddAfilhadoController.text,
                                'zona': _model.tfZonaAddAfilhadoController.text,
                                'decreto':
                                    _model.tfDecretoAddAfilhadoController.text,
                                'id_unidade': _model.dDAfilhadunidadeValue,
                                'id_ocupacao': _model.dDAfilhadoOcupacaoValue,
                                'id_padrinho': _model.padrinhoValue,
                                'observacao':
                                    _model.tfNomeAddAfilhadoController2.text,
                                'nomeacao':
                                    _model.tfContarAddAfilhadoController.text,
                              },
                              matchingRows: (rows) => rows.eq(
                                'id',
                                widget.parametroEditarAfilhado?.id,
                              ),
                            );

                            context.pushNamed('afilhados');
                          },
                          text: 'Atualizar',
                          options: FFButtonOptions(
                            width: 200.0,
                            height: 44.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF164773),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
