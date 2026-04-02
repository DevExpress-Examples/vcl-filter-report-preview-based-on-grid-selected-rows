unit uData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, dxmdaset,
  dxBackend.ConnectionString.JSON.DataSet, cxClasses, dxBackend,
  dxBackend.ConnectionString.JSON;

type
  TDataModule1 = class(TDataModule)
    mdProducts: TdxMemData;
    mdProductsProductID: TIntegerField;
    mdProductsProductName: TWideStringField;
    mdProductsQuantityPerUnit: TWideStringField;
    mdProductsUnitsInStock: TSmallintField;
    mdProductsCategoryID: TIntegerField;
    mdProductsCategoryName: TWideStringField;
    dsProducts: TDataSource;
    dxReportDataConnectionManager: TdxBackendDataConnectionManager;
    NWindMemDataConnection: TdxBackendDataSetJSONConnection;
    NWindMemDataConnectionItem1: TdxBackendDataSetCollectionItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
