import '../database.dart';

class UnidadecargoTable extends SupabaseTable<UnidadecargoRow> {
  @override
  String get tableName => 'unidadecargo';

  @override
  UnidadecargoRow createRow(Map<String, dynamic> data) => UnidadecargoRow(data);
}

class UnidadecargoRow extends SupabaseDataRow {
  UnidadecargoRow(super.data);

  @override
  SupabaseTable get table => UnidadecargoTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idUnidade => getField<int>('id_unidade');
  set idUnidade(int? value) => setField<int>('id_unidade', value);

  int? get idPadrinho => getField<int>('id_padrinho');
  set idPadrinho(int? value) => setField<int>('id_padrinho', value);

  int? get idOcupacao => getField<int>('id_ocupacao');
  set idOcupacao(int? value) => setField<int>('id_ocupacao', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);
}
