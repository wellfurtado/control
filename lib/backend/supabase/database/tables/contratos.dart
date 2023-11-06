import '../database.dart';

class ContratosTable extends SupabaseTable<ContratosRow> {
  @override
  String get tableName => 'contratos';

  @override
  ContratosRow createRow(Map<String, dynamic> data) => ContratosRow(data);
}

class ContratosRow extends SupabaseDataRow {
  ContratosRow(super.data);

  @override
  SupabaseTable get table => ContratosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idOcupacao => getField<int>('id_ocupacao');
  set idOcupacao(int? value) => setField<int>('id_ocupacao', value);

  int? get idUnidade => getField<int>('id_unidade');
  set idUnidade(int? value) => setField<int>('id_unidade', value);

  int? get idPadrinho => getField<int>('id_padrinho');
  set idPadrinho(int? value) => setField<int>('id_padrinho', value);
}
