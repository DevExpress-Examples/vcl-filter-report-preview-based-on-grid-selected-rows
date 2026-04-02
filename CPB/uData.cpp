//---------------------------------------------------------------------------


#pragma hdrstop

#include "uData.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma classgroup "Vcl.Controls.TControl"
#pragma link "dxmdaset"
#pragma link "cxClasses"
#pragma link "dxBackend"
#pragma link "dxBackend.ConnectionString.JSON"
#pragma link "dxBackend.ConnectionString.JSON.DataSet"
#pragma resource "*.dfm"
TDataModule1 *DataModule1;
//---------------------------------------------------------------------------
__fastcall TDataModule1::TDataModule1(TComponent* Owner)
	: TDataModule(Owner)
{
}
//---------------------------------------------------------------------------
