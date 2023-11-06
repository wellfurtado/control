import '../database.dart';

class CodigoTable extends SupabaseTable<CodigoRow> {
  @override
  String get tableName => 'codigo';

  @override
  CodigoRow createRow(Map<String, dynamic> data) => CodigoRow(data);
}

class CodigoRow extends SupabaseDataRow {
  CodigoRow(super.data);

  @override
  SupabaseTable get table => CodigoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);
}
