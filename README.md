<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/1085692671/25.1.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T1316615)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
# DevExpress VCL Reports - Data Record Filtering in a Report

This example allows you to select individual dataset records in a DevExpress VCL [Data Grid](https://docs.devexpress.com/VCL/cxGrid.TcxGrid?v=25.2) control and display selected records in a built report using the [Report Viewer](https://docs.devexpress.com/XtraReports/401850/web-reporting/web-document-viewer) dialog.
Source data is stored in a memory-based dataset ([TdxMemData](https://docs.devexpress.com/VCL/dxmdaset.TdxMemData) inherited from the [TDataSet](https://docwiki.embarcadero.com/Libraries/Athens/en/Data.DB.TDataSet) class shipped with the standard VCL library).

## Prerequisites

* Microsoft Windows 10 or newer
* Embarcadero RAD Studio IDE 12.3 (Athens) or newer (Community Edition is not supported)
* DevExpress VCL Components v25.2.3 or newer

## Testing the example

Run the sample app and check any records in a table:

![Data Record Selection](/vcl-reports-selected-grid-records.png)

Click the **Preview Report** button to display a report containing all selected records in the [Report Viewer](https://docs.devexpress.com/XtraReports/401850/web-reporting/web-document-viewer) dialog.

![Selected Records in a Sample Report](/vcl-reports-sample-report-with-selected-records.png)

<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-filter-report-preview-based-on-grid-selected-rows&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-filter-report-preview-based-on-grid-selected-rows&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
