import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'edit_ocupacao_model.dart';
export 'edit_ocupacao_model.dart';

class EditOcupacaoWidget extends StatefulWidget {
  const EditOcupacaoWidget({
    super.key,
    required this.parametroOcupacao,
  });

  final OcupacaoRow? parametroOcupacao;

  @override
  _EditOcupacaoWidgetState createState() => _EditOcupacaoWidgetState();
}

class _EditOcupacaoWidgetState extends State<EditOcupacaoWidget>
    with TickerProviderStateMixin {
  late EditOcupacaoModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 140.0),
          end: const Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.9, 0.9),
          end: const Offset(1.0, 1.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(-0.349, 0),
          end: const Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditOcupacaoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.outCodigoAtualiza = await ConsultaCodigoCall.call();
      if ((_model.outCodigoAtualiza?.succeeded ?? true)) {
        setState(() {
          _model.listaIdCodigoatualiza =
              (_model.outCodigoAtualiza?.jsonBody ?? '')
                  .toList()
                  .cast<dynamic>();
        });
      }
      _model.outUnidadeAtualiza = await ConsultaUnidadeCall.call();
      if ((_model.outUnidadeAtualiza?.succeeded ?? true)) {
        setState(() {
          _model.listaUnidadeatualiza =
              (_model.outUnidadeAtualiza?.jsonBody ?? '')
                  .toList()
                  .cast<dynamic>();
        });
      }
    });

    _model.nomeAddOcupacaoController ??=
        TextEditingController(text: widget.parametroOcupacao?.nome);
    _model.nomeAddOcupacaoFocusNode ??= FocusNode();

    _model.descAddOcupacaoController ??=
        TextEditingController(text: widget.parametroOcupacao?.desc);
    _model.descAddOcupacaoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Material(
        color: Colors.transparent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          width: 650.0,
          height: 600.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: Text(
                      'Atualizar Ocupação',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).displaySmall,
                    ),
                  ),
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: SizedBox(
                            width: 500.0,
                            child: TextFormField(
                              controller: _model.nomeAddOcupacaoController,
                              focusNode: _model.nomeAddOcupacaoFocusNode,
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
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                  .nomeAddOcupacaoControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 15.0, 20.0),
                              child: FlutterFlowDropDown<String>(
                                controller:
                                    _model.tipoAddOcupacaoValueController ??=
                                        FormFieldController<String>(
                                  _model.tipoAddOcupacaoValue ??=
                                      widget.parametroOcupacao?.tipo,
                                ),
                                options: const ['Cargo', 'Contrato'],
                                onChanged: (val) => setState(
                                    () => _model.tipoAddOcupacaoValue = val),
                                width: 120.0,
                                height: 50.0,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Tipo',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: FlutterFlowDropDown<int>(
                                controller:
                                    _model.codigoAddOcupacaoValueController ??=
                                        FormFieldController<int>(
                                  _model.codigoAddOcupacaoValue ??=
                                      widget.parametroOcupacao?.idCodigo,
                                ),
                                options:
                                    List<int>.from(_model.listaIdCodigoatualiza
                                        .map((e) => getJsonField(
                                              e,
                                              r'''$.id''',
                                            ))
                                        .toList()
                                        .cast<int>()),
                                optionLabels: _model.listaIdCodigoatualiza
                                    .map((e) => getJsonField(
                                          e,
                                          r'''$.codigo''',
                                        ))
                                    .toList()
                                    .map((e) => e.toString())
                                    .toList(),
                                onChanged: (val) => setState(
                                    () => _model.codigoAddOcupacaoValue = val),
                                width: 120.0,
                                height: 50.0,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Código',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: FlutterFlowDropDown<int>(
                            controller:
                                _model.unidadeAddOcupacaoValueController ??=
                                    FormFieldController<int>(
                              _model.unidadeAddOcupacaoValue ??=
                                  widget.parametroOcupacao?.idUnidade,
                            ),
                            options: List<int>.from(_model.listaUnidadeatualiza
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.id''',
                                    ))
                                .toList()
                                .cast<int>()),
                            optionLabels: _model.listaUnidadeatualiza
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.nome''',
                                    ))
                                .toList()
                                .map((e) => e.toString())
                                .toList(),
                            onChanged: (val) => setState(
                                () => _model.unidadeAddOcupacaoValue = val),
                            width: 300.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: 'Unidade',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: SizedBox(
                            width: 350.0,
                            child: TextFormField(
                              controller: _model.descAddOcupacaoController,
                              focusNode: _model.descAddOcupacaoFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Descrição',
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
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context).bodyLarge,
                              maxLines: 4,
                              keyboardType: TextInputType.multiline,
                              validator: _model
                                  .descAddOcupacaoControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 16.0, 20.0, 16.0),
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
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 16.0, 20.0, 16.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await OcupacaoTable().update(
                                    data: {
                                      'nome':
                                          _model.nomeAddOcupacaoController.text,
                                      'tipo': _model.tipoAddOcupacaoValue,
                                      'id_unidade':
                                          _model.unidadeAddOcupacaoValue,
                                      'desc':
                                          _model.descAddOcupacaoController.text,
                                      'id_codigo':
                                          _model.codigoAddOcupacaoValue,
                                    },
                                    matchingRows: (rows) => rows.eq(
                                      'id',
                                      widget.parametroOcupacao?.id,
                                    ),
                                  );

                                  context.pushNamed('ocupacao');
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
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
