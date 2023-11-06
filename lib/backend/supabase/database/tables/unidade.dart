import '../database.dart';

class UnidadeTable extends SupabaseTable<UnidadeRow> {
  @override
  String get tableName => 'unidade';

  @override
  UnidadeRow createRow(Map<String, dynamic> data) => UnidadeRow(data);
}

class UnidadeRow extends SupabaseDataRow {
  UnidadeRow(super.data);

  @override
  SupabaseTable get table => UnidadeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get contato => getField<String>('contato');
  set contato(String? value) => setField<String>('contato', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);
}
