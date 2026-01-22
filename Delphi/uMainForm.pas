unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxReport, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,  cxButtons,
  dxReport.Backend, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxReport.ConnectionString.JSON.DB,
  dxReport.ConnectionString.JSON, Vcl.StdCtrls, dxmdaset, dxShellDialogs,
  dxReport.ConnectionString.SQL, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutControl, dxCore, dxSkinsForm, System.ImageList, Vcl.ImgList,
  cxImageList, 
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit;

type
  TMainForm = class(TForm)
    dxReport1: TdxReport;
    btnPreview: TcxButton;
    dxReportDataConnectionManager: TdxReportDataConnectionManager;
    ReportsNWindConnectionString: TdxReportDatabaseSQLConnection;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    liPreview: TdxLayoutItem;
    dxSkinController1: TdxSkinController;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    gvProducts: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    DataSource1: TDataSource;
    gvProductsProductID: TcxGridDBColumn;
    gvProductsProductName: TcxGridDBColumn;
    gvProductsQuantityPerUnit: TcxGridDBColumn;
    gvProductsUnitsInStock: TcxGridDBColumn;
    gvProductsCategoryID: TcxGridDBColumn;
    gvProductsCategoryName: TcxGridDBColumn;
    mdProducts: TdxMemData;
    mdProductsProductID: TIntegerField;
    mdProductsProductName: TWideStringField;
    mdProductsQuantityPerUnit: TWideStringField;
    mdProductsUnitsInStock: TSmallintField;
    mdProductsCategoryID: TIntegerField;
    mdProductsCategoryName: TWideStringField;
    NWindMemDataConnection: TdxReportDataSetJSONConnection;
    NWindMemDataConnectionItem1: TdxReportDataSetCollectionItem;
    procedure btnPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnPreviewClick(Sender: TObject);
var
  i: Integer;
  ProductIDs: TStringList;
  RowIndex: Integer;
begin
  ProductIDs := TStringList.Create;
  try
    for i := 0 to gvProducts.Controller.SelectedRowCount - 1 do
    begin
      RowIndex := gvProducts.Controller.SelectedRows[i].RecordIndex;
      ProductIDs.Add(gvProducts.DataController.Values[RowIndex, gvProductsProductID.Index]);
    end;

    if ProductIDs.Count > 0 then
      dxReport1.FilterString := Format('[ProductID] In (%s)', [ProductIDs.CommaText])
    else
      dxReport1.FilterString := '';

    dxReport1.ShowViewer;
  finally
    ProductIDs.Free;
  end;
end;

end.
