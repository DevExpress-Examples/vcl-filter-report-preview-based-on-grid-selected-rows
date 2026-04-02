//---------------------------------------------------------------------------

#ifndef uMainFormH
#define uMainFormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxNavigator.hpp"
#include "cxStyles.hpp"
#include "dxDateRanges.hpp"
#include "dxReport.hpp"
#include "dxScrollbarAnnotations.hpp"
#include <Data.DB.hpp>
#include <Vcl.Menus.hpp>
#include "dxmdaset.hpp"
#include "dxShellDialogs.hpp"
#include <Vcl.Dialogs.hpp>
#include "dxCore.h"
#include "dxLayoutContainer.hpp"
#include "dxLayoutControl.hpp"
#include "dxLayoutControlAdapters.hpp"
#include "dxSkinsForm.hpp"
#include "dxBackend.ConnectionString.JSON.DataSet.hpp"
#include "dxBackend.ConnectionString.JSON.hpp"
#include "dxBackend.ConnectionString.SQL.hpp"
#include "dxBackend.hpp"
#include "uData.h"
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
	TdxLayoutControl *dxLayoutControl1;
	TcxButton *btnPreview;
	TcxGrid *cxGrid1;
	TcxGridDBTableView *gvProducts;
	TcxGridDBColumn *gvProductsProductID;
	TcxGridDBColumn *gvProductsProductName;
	TcxGridDBColumn *gvProductsCategoryName;
	TcxGridDBColumn *gvProductsQuantityPerUnit;
	TcxGridDBColumn *gvProductsUnitsInStock;
	TcxGridDBColumn *gvProductsCategoryID;
	TcxGridLevel *cxGrid1Level1;
	TdxLayoutGroup *dxLayoutControl1Group_Root;
	TdxLayoutItem *liPreview;
	TdxLayoutLabeledItem *dxLayoutLabeledItem1;
	TdxReport *dxReport1;
	TdxSkinController *dxSkinController1;
	void __fastcall btnPreviewClick(TObject *Sender);
private:	// User declarations
protected:
    void __fastcall LoadData();
public:		// User declarations
	__fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
