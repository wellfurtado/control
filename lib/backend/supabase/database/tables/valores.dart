import '../database.dart';

class ValoresTable extends SupabaseTable<ValoresRow> {
  @override
  String get tableName => 'valores';

  @override
  ValoresRow createRow(Map<String, dynamic> data) => ValoresRow(data);
}

class ValoresRow extends SupabaseDataRow {
  ValoresRow(super.data);

  @override
  SupabaseTable get table => ValoresTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get idPadrinho => getField<int>('id_padrinho');
  set idPadrinho(int? value) => setField<int>('id_padrinho', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);
}
