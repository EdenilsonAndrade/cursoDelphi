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
end
