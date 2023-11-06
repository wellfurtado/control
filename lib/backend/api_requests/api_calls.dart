import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class InserirUsuarioCall {
  static Future<ApiCallResponse> call({
    String? email = 'teste2@teste.com',
    String? senha = '123456',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$senha"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'InserirUsuario',
      apiUrl: 'https://pxllsamblcqidybpddtj.supabase.co/auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userid(dynamic response) => getJsonField(
        response,
        r'''$.user.id''',
      );
  static dynamic useremail(dynamic response) => getJsonField(
        response,
        r'''$.user.email''',
      );
}

class ConsultaCodigoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta Codigo',
      apiUrl:
          'https://pxllsamblcqidybpddtj.supabase.co/rest/v1/codigo?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic valor(dynamic response) => getJsonField(
        response,
        r'''$[:].valor''',
        true,
      );
  static dynamic codigo(dynamic response) => getJsonField(
        response,
        r'''$[:].codigo''',
        true,
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
}

class ConsultaUnidadeCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta Unidade',
      apiUrl:
          'https://pxllsamblcqidybpddtj.supabase.co/rest/v1/unidade?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
}

class ConsultaOcupacaoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta Ocupacao',
      apiUrl:
          'https://pxllsamblcqidybpddtj.supabase.co/rest/v1/ocupacao?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
  static dynamic tipo(dynamic response) => getJsonField(
        response,
        r'''$[:].tipo''',
        true,
      );
  static dynamic idunidade(dynamic response) => getJsonField(
        response,
        r'''$[:].id_unidade''',
        true,
      );
  static dynamic idcodigo(dynamic response) => getJsonField(
        response,
        r'''$[:].id_codigo''',
        true,
      );
}

class ConsultaPadrinhoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta Padrinho',
      apiUrl:
          'https://pxllsamblcqidybpddtj.supabase.co/rest/v1/padrinho?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
}

class ConsultaAfilhadoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta Afilhado',
      apiUrl:
          'https://pxllsamblcqidybpddtj.supabase.co/rest/v1/afilhado?select=*\'',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
      );
  static dynamic unidadeid(dynamic response) => getJsonField(
        response,
        r'''$[:].id_unidade''',
      );
  static dynamic ocupacaoid(dynamic response) => getJsonField(
        response,
        r'''$[:].id_ocupacao''',
      );
  static dynamic padrinhoid(dynamic response) => getJsonField(
        response,
        r'''$[:].id_padrinho''',
      );
}

class ConsultaValoresCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta Valores',
      apiUrl:
          'https://pxllsamblcqidybpddtj.supabase.co/rest/v1/valores?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ConsultaUsuarioCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Consulta Usuario',
      apiUrl:
          'https://pxllsamblcqidybpddtj.supabase.co/rest/v1/usuario?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4bGxzYW1ibGNxaWR5YnBkZHRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0ODI5NTMsImV4cCI6MjAwOTA1ODk1M30.9qt1xbOpBEUF_aP5H7E9_hWQ4e7YcOCrlLMm0SwC1kQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
  static dynamic perfil(dynamic response) => getJsonField(
        response,
        r'''$[:].perfil''',
        true,
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[:].email''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
