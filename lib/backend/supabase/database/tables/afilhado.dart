import '../database.dart';

class AfilhadoTable extends SupabaseTable<AfilhadoRow> {
  @override
  String get tableName => 'afilhado';

  @override
  AfilhadoRow createRow(Map<String, dynamic> data) => AfilhadoRow(data);
}

class AfilhadoRow extends SupabaseDataRow {
  AfilhadoRow(super.data);

  @override
  SupabaseTable get table => AfilhadoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get contato => getField<String>('contato');
  set contato(String? value) => setField<String>('contato', value);

  String? get formacao => getField<String>('formacao');
  set formacao(String? value) => setField<String>('formacao', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get zona => getField<String>('zona');
  set zona(String? value) => setField<String>('zona', value);

  String? get nomeacao => getField<String>('nomeacao');
  set nomeacao(String? value) => setField<String>('nomeacao', value);

  String? get decreto => getField<String>('decreto');
  set decreto(String? value) => setField<String>('decreto', value);

  int? get idUnidade => getField<int>('id_unidade');
  set idUnidade(int? value) => setField<int>('id_unidade', value);

  int? get idOcupacao => getField<int>('id_ocupacao');
  set idOcupacao(int? value) => setField<int>('id_ocupacao', value);

  int? get idPadrinho => getField<int>('id_padrinho');
  set idPadrinho(int? value) => setField<int>('id_padrinho', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);
}
