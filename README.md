<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/1085692671/25.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T1316615)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->


# DevExpress Reports for Delphi/C++Builder – Filter Data Records in a Report

This example allows you to select individual dataset records in a DevExpress VCL [Data Grid][TcxGrid]
control and display selected records in a built report using the [Report Viewer][report-viewer] dialog.
Source data is stored in a memory-based dataset ([TdxMemData]
inherited from the [TDataSet] class shipped with the standard VCL library).

## Prerequisites

[DevExpress Reports Prerequisites][req]

[req]: https://docs.devexpress.com/VCL/405773/ExpressCrossPlatformLibrary/vcl-backend/reports-dashboards-app-deployment#vcl-reportsdashboards-prerequisites

## Test the Example

Run the sample app and check any records in a table:

![Data Record Selection](/vcl-reports-selected-grid-records.png)

Click the **Preview Report** button to display a report containing all selected records in the [Report Viewer][report-viewer] dialog.

![Selected Records in a Sample Report](/vcl-reports-sample-report-with-selected-records.png)


## Documentation

-   [Introduction to DevExpress Reports for Delphi/C++Builder][reports-intro]
-   [Tutorial: Create a table report using the Report Wizard][report-wizard]
-   [Use JSON as a data source for dashboards (as demonstrated in the current example)][json-data-source]
-   [Store report layouts in REPX files at design-time][reports-design-time-store]
-   API reference:
    -   [TdxReport]
    -   [TdxReport.ReportName] (internal report name)
    -   [TdxReport.Layout] (an XML-based layout template that can be stored in a BLOB data field)
    -   [TdxReport.ShowViewer]
    -   [TdxMemData] (DevExpress in-memory dataset implementation)
    -   [TDataSet] (contains generic database connection methods)
    -   [TdxBackendDataSetJSONConnection] (supplies data to reports)

<!-- documentation links -->

[report-viewer]: https://docs.devexpress.com/XtraReports/401850/web-reporting/web-document-viewer
[reports-intro]: https://docs.devexpress.com/VCL/405469/ExpressReports/vcl-reports
[report-wizard]: https://docs.devexpress.com/VCL/405760/ExpressReports/getting-started/create-table-report-using-report-wizard
[json-data-source]: https://docs.devexpress.com/VCL/405747/ExpressCrossPlatformLibrary/vcl-backend/database-engines/vcl-backend-memory-based-data-storage
[reports-design-time-store]: https://docs.devexpress.com/VCL/dxReport.TdxReport.Layout#string-list-editor


<!-- reference links -->
[TcxGrid]: https://docs.devexpress.com/VCL/cxGrid.TcxGrid?v=25.2
[TdxReport]: https://docs.devexpress.com/VCL/dxReport.TdxReport
[TdxReport.Layout]: https://docs.devexpress.com/VCL/dxReport.TdxReport.Layout
[TdxReport.ReportName]: https://docs.devexpress.com/VCL/dxReport.TdxReport.ReportName
[TdxReport.ShowViewer]: https://docs.devexpress.com/VCL/dxReport.TdxReport.ShowViewer
[TdxBackendDataSetJSONConnection]: https://docs.devexpress.com/VCL/dxBackend.ConnectionString.JSON.DataSet.TdxBackendDataSetJSONConnection
[TdxMemData]: https://docs.devexpress.com/VCL/dxmdaset.TdxMemData

<!-- external documentation links -->
[TDataSet]: https://docwiki.embarcadero.com/Libraries/Athens/en/Data.DB.TDataSet

<!-- in-repository links -->
[uMainForm.pas]: ./Delphi/uMainForm.pas
[uMainForm.cpp]: ./CPB/uMainForm.cpp


## More Examples

-   [Store report layouts in REPX files][file-example]
-   [Store report layouts in a Database][database-example]
-   [Generate reports in a backend / service application][non-interactive-export]
-   [Localize Report Viewer and Report Designer dialogs][localize]

[file-example]: https://github.com/DevExpress-Examples/vcl-reports-store-layout-template-file
[database-example]: https://github.com/DevExpress-Examples/vcl-reports-store-layout-template-database
[non-interactive-export]: https://github.com/DevExpress-Examples/vcl-reports-non-interactive-export
[localize]: https://github.com/DevExpress-Examples/vcl-reports-localize


<!-- feedback -->
## Does This Example Address Your Development Requirements/Objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-filter-report-preview-based-on-grid-selected-rows&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-filter-report-preview-based-on-grid-selected-rows&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
