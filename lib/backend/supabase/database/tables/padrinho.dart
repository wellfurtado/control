import '../database.dart';

class PadrinhoTable extends SupabaseTable<PadrinhoRow> {
  @override
  String get tableName => 'padrinho';

  @override
  PadrinhoRow createRow(Map<String, dynamic> data) => PadrinhoRow(data);
}

class PadrinhoRow extends SupabaseDataRow {
  PadrinhoRow(super.data);

  @override
  SupabaseTable get table => PadrinhoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get contato => getField<String>('contato');
  set contato(String? value) => setField<String>('contato', value);
}
