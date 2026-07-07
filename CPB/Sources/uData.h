//---------------------------------------------------------------------------

#ifndef uDataH
#define uDataH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include "dxmdaset.hpp"
#include <Data.DB.hpp>
#include "cxClasses.hpp"
#include "dxBackend.ConnectionString.JSON.DataSet.hpp"
#include "dxBackend.ConnectionString.JSON.hpp"
#include "dxBackend.hpp"
//---------------------------------------------------------------------------
class TDataModule1 : public TDataModule
{
__published:	// IDE-managed Components
	TdxMemData *mdProducts;
	TIntegerField *mdProductsProductID;
	TWideStringField *mdProductsProductName;
	TWideStringField *mdProductsQuantityPerUnit;
	TSmallintField *mdProductsUnitsInStock;
	TIntegerField *mdProductsCategoryID;
	TWideStringField *mdProductsCategoryName;
	TDataSource *dsProducts;
	TdxBackendDataConnectionManager *dxReportDataConnectionManager;
	TdxBackendDataSetJSONConnection *NWindMemDataConnection;
	TdxBackendDataSetCollectionItem *NWindMemDataConnectionItem1;
private:	// User declarations
public:		// User declarations
	__fastcall TDataModule1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDataModule1 *DataModule1;
//---------------------------------------------------------------------------
#endif
