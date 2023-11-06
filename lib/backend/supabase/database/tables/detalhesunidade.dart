import '../database.dart';

class DetalhesunidadeTable extends SupabaseTable<DetalhesunidadeRow> {
  @override
  String get tableName => 'detalhesunidade';

  @override
  DetalhesunidadeRow createRow(Map<String, dynamic> data) =>
      DetalhesunidadeRow(data);
}

class DetalhesunidadeRow extends SupabaseDataRow {
  DetalhesunidadeRow(super.data);

  @override
  SupabaseTable get table => DetalhesunidadeTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get formacao => getField<String>('formacao');
  set formacao(String? value) => setField<String>('formacao', value);

  String? get decreto => getField<String>('decreto');
  set decreto(String? value) => setField<String>('decreto', value);

  String? get nomeacao => getField<String>('nomeacao');
  set nomeacao(String? value) => setField<String>('nomeacao', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  int? get idUnidade => getField<int>('id_unidade');
  set idUnidade(int? value) => setField<int>('id_unidade', value);

  int? get idOcupacao => getField<int>('id_ocupacao');
  set idOcupacao(int? value) => setField<int>('id_ocupacao', value);

  int? get idPadrinho => getField<int>('id_padrinho');
  set idPadrinho(int? value) => setField<int>('id_padrinho', value);

  String? get nomePadrinho => getField<String>('nome_padrinho');
  set nomePadrinho(String? value) => setField<String>('nome_padrinho', value);

  String? get nomeOcupacao => getField<String>('nome_ocupacao');
  set nomeOcupacao(String? value) => setField<String>('nome_ocupacao', value);

  String? get nomeCodigo => getField<String>('nome_codigo');
  set nomeCodigo(String? value) => setField<String>('nome_codigo', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);
}
