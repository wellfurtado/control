import '../database.dart';

class OcupacaoTable extends SupabaseTable<OcupacaoRow> {
  @override
  String get tableName => 'ocupacao';

  @override
  OcupacaoRow createRow(Map<String, dynamic> data) => OcupacaoRow(data);
}

class OcupacaoRow extends SupabaseDataRow {
  OcupacaoRow(super.data);

  @override
  SupabaseTable get table => OcupacaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  int? get idUnidade => getField<int>('id_unidade');
  set idUnidade(int? value) => setField<int>('id_unidade', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  int? get idCodigo => getField<int>('id_codigo');
  set idCodigo(int? value) => setField<int>('id_codigo', value);
}
