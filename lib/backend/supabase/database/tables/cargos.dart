import '../database.dart';

class CargosTable extends SupabaseTable<CargosRow> {
  @override
  String get tableName => 'cargos';

  @override
  CargosRow createRow(Map<String, dynamic> data) => CargosRow(data);
}

class CargosRow extends SupabaseDataRow {
  CargosRow(super.data);

  @override
  SupabaseTable get table => CargosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idOcupacao => getField<int>('id_ocupacao');
  set idOcupacao(int? value) => setField<int>('id_ocupacao', value);

  int? get idUnidade => getField<int>('id_unidade');
  set idUnidade(int? value) => setField<int>('id_unidade', value);

  int? get idPadrinho => getField<int>('id_padrinho');
  set idPadrinho(int? value) => setField<int>('id_padrinho', value);
}
