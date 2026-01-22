//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "uMainForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGraphics"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxNavigator"
#pragma link "cxStyles"
#pragma link "dxDateRanges"
#pragma link "dxReport"
#pragma link "dxReport.Backend"
#pragma link "dxReport.ConnectionString.JSON"

#if defined(_WIN64)
  #pragma link "dxReport.ConnectionString.JSON.DB.O"
#else
  #pragma link "dxReport.ConnectionString.JSON.DB.OBJ"
#endif


#pragma link "dxScrollbarAnnotations"
#pragma link "dxmdaset"
#pragma link "dxShellDialogs"

#pragma link "dxCore"
#pragma link "dxLayoutContainer"
#pragma link "dxLayoutControl"
#pragma link "dxLayoutControlAdapters"
#pragma link "dxSkinsForm"
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
	: TForm(Owner)
{

}
//-----------------------------------------------------------------

void __fastcall TMainForm::btnPreviewClick(TObject *Sender)
{
	TStringList *ProductIDs = new TStringList();
	try
	{
		for (int i = 0; i < gvProducts->Controller->SelectedRowCount; i++)
		{
			int RowIndex = gvProducts->Controller->SelectedRows[i]->RecordIndex;
			ProductIDs->Add(
				gvProducts->DataController->Values[RowIndex][gvProductsProductID->Index]
			);
		}

		if (ProductIDs->Count > 0)
			dxReport1->FilterString = AnsiString::Format("[ProductID] In (%s)", ARRAYOFCONST((ProductIDs->CommaText)));
		else
			dxReport1->FilterString = "";

		dxReport1->ShowViewer();
	}
	__finally
	{
		delete ProductIDs;
	}
}



//---------------------------------------------------------------------------

