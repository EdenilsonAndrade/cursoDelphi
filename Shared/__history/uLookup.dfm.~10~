object Lookup: TLookup
  OldCreateOrder = False
  Height = 289
  Width = 394
  object fdQryEstados: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransection
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 328
    Top = 80
  end
  object dsEstados: TDataSource
    DataSet = fdQryEstados
    Left = 328
    Top = 136
  end
  object fdTransection: TFDTransaction
    Connection = dmDados.fdCon
    Left = 16
    Top = 8
  end
  object fdQryCidades: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransection
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 240
    Top = 80
  end
  object DdsCidades: TDataSource
    DataSet = fdQryCidades
    Left = 240
    Top = 136
  end
  object fdQryFornecedor: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransection
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 178
    Top = 80
  end
  object dsFornecedor: TDataSource
    DataSet = fdQryFornecedor
    Left = 178
    Top = 136
  end
  object fdQryCliente: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransection
    SQL.Strings = (
      'SELECT ID_CLIENTE,'
      '       DECODE(TIPO_FJ, '#39'F'#39', NOME, RAZAO_SOCIAL) NomeCliente'
      ' FROM CLIENTE')
    Left = 107
    Top = 79
  end
  object dsCliente: TDataSource
    DataSet = fdQryCliente
    Left = 107
    Top = 135
  end
end
