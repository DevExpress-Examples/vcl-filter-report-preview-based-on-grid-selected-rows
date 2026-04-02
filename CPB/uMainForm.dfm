object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 657
  Height = 464
  AutoScroll = True
  AutoSize = True
  Caption = 'DevExpress Example - Filter Data Records in a Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 641
    Height = 425
    TabOrder = 0
    AutoSize = True
    object btnPreview: TcxButton
      Left = 12
      Top = 12
      Width = 557
      Height = 25
      Caption = 'Preview Report'
      TabOrder = 0
      OnClick = btnPreviewClick
    end
    object cxGrid1: TcxGrid
      Left = 12
      Top = 44
      Width = 557
      Height = 345
      TabOrder = 1
      object gvProducts: TcxGridDBTableView
        DataController.DataSource = DataModule1.dsProducts
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow]
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gvProductsProductID: TcxGridDBColumn
          DataBinding.FieldName = 'ProductID'
          Visible = False
        end
        object gvProductsProductName: TcxGridDBColumn
          DataBinding.FieldName = 'ProductName'
          SortIndex = 0
          SortOrder = soAscending
          Width = 150
        end
        object gvProductsCategoryName: TcxGridDBColumn
          DataBinding.FieldName = 'CategoryName'
          Width = 136
        end
        object gvProductsQuantityPerUnit: TcxGridDBColumn
          DataBinding.FieldName = 'QuantityPerUnit'
          Width = 123
        end
        object gvProductsUnitsInStock: TcxGridDBColumn
          DataBinding.FieldName = 'UnitsInStock'
          Width = 122
        end
        object gvProductsCategoryID: TcxGridDBColumn
          DataBinding.FieldName = 'CategoryID'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gvProducts
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object liPreview: TdxLayoutItem
      Parent = dxButtons
      CaptionOptions.Text = 'btnViewReport'
      CaptionOptions.Visible = False
      Control = btnPreview
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 557
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      CaptionOptions.Text = 'Label'
      Index = -1
    end
    object dxButtons: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object dxGrid: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 345
      ControlOptions.OriginalWidth = 557
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxReport1: TdxReport
    ReportName = 'Product List Report'
    Left = 40
    Top = 192
    Layout.Strings = (
      
        '<?xml version="1.0" encoding="utf-8"?><XtraReportsLayoutSerializ' +
        'er SerializerVersion="25.1.6.0" Ref="1" ControlType="DevExpress.' +
        'XtraReports.UI.XtraReport, DevExpress.XtraReports.v25.1, Version' +
        '=25.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Nam' +
        'e="ProductListReport" DisplayName="Product List" ShowPreviewMarg' +
        'inLines="false" Margins="75, 75, 85, 88" PageWidthF="850" PageHe' +
        'ightF="1100" Version="25.1" DataMember="Products" DataSource="#R' +
        'ef-0" TextAlignment="TopRight">  <CalculatedFields>    <Item1 Re' +
        'f="2" Name="FirstLetter" Expression="Substring([ProductName], 0,' +
        ' 1)" DataMember="Products" />  </CalculatedFields>  <Bands>    <' +
        'Item1 Ref="3" ControlType="TopMarginBand" Name="topMarginBand1" ' +
        'HeightF="85" />    <Item2 Ref="4" ControlType="ReportHeaderBand"' +
        ' Name="ReportHeader" HeightF="138.1917" TextAlignment="TopLeft" ' +
        'Padding="0,0,0,0,100">      <Controls>        <Item1 Ref="5" Con' +
        'trolType="XRPictureBox" Name="pictureBox1" ImageSource="svg,77u/' +
        'PD94bWwgdmVyc2lvbj0nMS4wJyBlbmNvZGluZz0nVVRGLTgnPz4NCjxzdmcgeD0i' +
        'MHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCAxMTIgNzIiIHZlcnNpb249IjEuMSIg' +
        'eG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0i' +
        'aHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeG1sOnNwYWNlPSJwcmVzZXJ2' +
        'ZSIgaWQ9IkxheWVyXzEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAw' +
        'IDExMiA3MiI+DQogIDxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+CgkuQmxhY2t7Zmls' +
        'bDojM0M0MjUyO30KPC9zdHlsZT4NCiAgPHBvbHlnb24gcG9pbnRzPSIxMCwzOCAy' +
        'MywyNSAzNiwzOCAzNiw0OCAyMywzNSAxMCw0OCAiIGNsYXNzPSJCbGFjayIgLz4N' +
        'CiAgPHBhdGggZD0iTTYzLjcsMzUuOGgtMi4zbC02LTkuM2MtMC4yLTAuMi0wLjMt' +
        'MC41LTAuNC0wLjdINTVjMCwwLjMsMC4xLDAuOCwwLjEsMS43djguM2gtMlYyMy4y' +
        'aDIuNGw1LjgsOSAgYzAuMiwwLjQsMC40LDAuNiwwLjUsMC44aDBjLTAuMS0wLjMt' +
        'MC4xLTAuOS0wLjEtMS43di04LjFoMlYzNS44eiBNNzIsMzZjLTEuOCwwLTMuMy0w' +
        'LjYtNC40LTEuOGMtMS4xLTEuMi0xLjYtMi43LTEuNi00LjYgIGMwLTIsMC42LTMu' +
        'NiwxLjctNC45czIuNi0xLjgsNC41LTEuOGMxLjgsMCwzLjIsMC42LDQuMywxLjhj' +
        'MS4xLDEuMiwxLjYsMi43LDEuNiw0LjZjMCwyLjEtMC42LDMuNy0xLjcsNC45Uzcz' +
        'LjksMzYsNzIsMzZ6ICAgTTcyLjEsMjQuOGMtMS4yLDAtMi4xLDAuNC0yLjgsMS4z' +
        'cy0xLjEsMi0xLjEsMy40YzAsMS40LDAuNCwyLjUsMS4xLDMuNHMxLjYsMS4zLDIu' +
        'OCwxLjNjMS4yLDAsMi4yLTAuNCwyLjktMS4yczEtMiwxLTMuNCAgYzAtMS41LTAu' +
        'My0yLjctMS0zLjVDNzQuMiwyNS4yLDczLjMsMjQuOCw3Mi4xLDI0Ljh6IE05MC4y' +
        'LDM1LjhoLTIuNGwtMi0zLjRjLTAuMi0wLjMtMC40LTAuNi0wLjUtMC44Yy0wLjIt' +
        'MC4yLTAuMy0wLjQtMC41LTAuNSAgYy0wLjItMC4xLTAuNC0wLjItMC42LTAuM3Mt' +
        'MC40LTAuMS0wLjctMC4xaC0wLjh2NS4xaC0yLjFWMjMuMmg0LjFjMC42LDAsMS4x' +
        'LDAuMSwxLjYsMC4yczAuOSwwLjQsMS4zLDAuNnMwLjcsMC42LDAuOSwxLjEgIGMw' +
        'LjIsMC40LDAuMywwLjksMC4zLDEuNWMwLDAuNC0wLjEsMC45LTAuMiwxLjJjLTAu' +
        'MSwwLjQtMC4zLDAuNy0wLjYsMXMtMC41LDAuNS0wLjksMC43Yy0wLjMsMC4yLTAu' +
        'NywwLjQtMS4yLDAuNXYwICBjMC4yLDAuMSwwLjQsMC4zLDAuNiwwLjRzMC4zLDAu' +
        'MywwLjUsMC41czAuMywwLjQsMC41LDAuNmMwLjEsMC4yLDAuMywwLjQsMC41LDAu' +
        'N0w5MC4yLDM1Ljh6IE04Mi41LDI0LjlWMjloMS43ICBjMC4zLDAsMC42LDAsMC45' +
        'LTAuMWMwLjMtMC4xLDAuNS0wLjIsMC43LTAuNHMwLjQtMC40LDAuNS0wLjdzMC4y' +
        'LTAuNiwwLjItMC45YzAtMC42LTAuMi0xLjEtMC42LTEuNHMtMC45LTAuNS0xLjYt' +
        'MC41SDgyLjV6ICAgTTk5LjMsMjVoLTMuNnYxMC44aC0yLjFWMjVIOTB2LTEuOGg5' +
        'LjNWMjV6IE0xMTEuMywzNS44aC0yLjF2LTUuNWgtNS45djUuNWgtMi4xVjIzLjJo' +
        'Mi4xdjUuM2g1Ljl2LTUuM2gyLjFWMzUuOHoiIGNsYXNzPSJCbGFjayIgLz4NCiAg' +
        'PHBvbHlnb24gcG9pbnRzPSI2OCw1NSA2OCw2OCA0LDY4IDQsNCA2OCw0IDY4LDIw' +
        'IDcyLDIwIDcyLDAgMCwwIDAsNzIgNzIsNzIgNzIsNTUgIiBjbGFzcz0iQmxhY2si' +
        'IC8+DQogIDxwYXRoIGQ9Ik02NC42LDUyaC0wLjdsLTIuOC05LjhjLTAuMS0wLjUt' +
        'MC4yLTAuOS0wLjItMS4yaDBjMCwwLjMtMC4xLDAuNy0wLjMsMS4ybC0zLDkuOGgt' +
        'MC43TDUzLDM5aDFsMi45LDEwLjQgIGMwLjEsMC41LDAuMiwwLjksMC4zLDEuMmgw' +
        'YzAtMC4yLDAuMS0wLjYsMC4zLTEuMkw2MC42LDM5aDAuNGwyLjksMTAuNGMwLjEs' +
        'MC41LDAuMiwwLjksMC4zLDEuMmgwYzAtMC4yLDAuMS0wLjQsMC4xLTAuNmwzLTEx' +
        'aDAuOSAgTDY0LjYsNTJ6IE03MC40LDUyVjM5aDAuOXYxM0g3MC40eiBNODMuNSw1' +
        'MmwtNy42LTEwLjVjLTAuMi0wLjItMC4zLTAuNC0wLjQtMC42bC0wLjEtMC4yaDBj' +
        'MCwwLjIsMCwwLjMsMCwwLjZWNTJoLTAuOVYzOWgwLjcgIGw3LjUsMTAuNGMwLjIs' +
        'MC4yLDAuMywwLjUsMC41LDAuOGgwYzAtMC40LDAtMC44LDAtMS4xVjM5aDAuOXYx' +
        'M0g4My41eiBNODcuNCw1MlYzOWgzLjJjMi4xLDAsMy43LDAuNSw0LjgsMS42ICBj' +
        'MS4xLDEuMSwxLjYsMi42LDEuNiw0LjdjMCwyLTAuNiwzLjYtMS44LDQuOGMtMS4y' +
        'LDEuMi0yLjgsMS45LTQuOSwxLjlIODcuNHogTTg4LjIsMzkuOHYxMS40aDJjMS45' +
        'LDAsMy4zLTAuNSw0LjMtMS41ICBjMS0xLDEuNS0yLjQsMS41LTQuM2MwLTMuNy0x' +
        'LjktNS41LTUuNy01LjVIODguMnoiIGNsYXNzPSJCbGFjayIgLz4NCjwvc3ZnPg==' +
        '" SizeF="116.683,76.20612" LocationFloat="583.317,0">          <' +
        'StylePriority Ref="6" UsePadding="false" />        </Item1>     ' +
        '   <Item2 Ref="7" ControlType="XRPageInfo" Name="xrPageInfo2" Pa' +
        'geInfo="DateTime" TextFormatString="{0:d}" TextAlignment="Middle' +
        'Left" SizeF="96,16" LocationFloat="0,60.20612" StyleName="Genera' +
        'l" Font="Tahoma, 8.25pt" Padding="2,2,0,0,100">          <StyleP' +
        'riority Ref="8" UsePadding="false" UseTextAlignment="false" />  ' +
        '      </Item2>        <Item3 Ref="9" ControlType="XRLabel" Name=' +
        '"lbTitle" Text="Alphabetical List of Products" TextAlignment="To' +
        'pLeft" SizeF="414.625,33.41667" LocationFloat="0,18.10892" Font=' +
        '"Arial, 21pt, style=Bold" ForeColor="255,60,66,82" Padding="2,2,' +
        '0,0,100" BorderColor="Transparent">          <StylePriority Ref=' +
        '"10" UseFont="false" UseForeColor="false" UsePadding="false" Use' +
        'BorderColor="false" />        </Item3>      </Controls>    </Ite' +
        'm2>    <Item3 Ref="11" ControlType="GroupHeaderBand" Name="Group' +
        'Header0" PrintAcrossBands="true" GroupUnion="WithFirstDetail" Le' +
        'vel="1" HeightF="64" TextAlignment="TopLeft" Padding="0,0,0,0,10' +
        '0">      <GroupFields>        <Item1 Ref="12" FieldName="FirstLe' +
        'tter" />      </GroupFields>      <Controls>        <Item1 Ref="' +
        '13" ControlType="XRLabel" Name="xrLabel1" Multiline="true" TextA' +
        'lignment="MiddleCenter" SizeF="60,62" LocationFloat="0,2" Font="' +
        'Arial, 21pt, style=Bold" ForeColor="255,60,66,82" BackColor="255' +
        ',255,227,128" BorderColor="255,60,66,82">          <ExpressionBi' +
        'ndings>            <Item1 Ref="14" EventName="BeforePrint" Prope' +
        'rtyName="Text" Expression="[FirstLetter]" />          </Expressi' +
        'onBindings>          <StylePriority Ref="15" UseFont="false" Use' +
        'ForeColor="false" UseBackColor="false" UsePadding="false" UseBor' +
        'derColor="false" UseBorders="false" UseBorderWidth="false" UseTe' +
        'xtAlignment="false" />        </Item1>      </Controls>    </Ite' +
        'm3>    <Item4 Ref="16" ControlType="GroupHeaderBand" Name="Group' +
        'Header1" GroupUnion="WithFirstDetail" HeightF="32.083">      <Co' +
        'ntrols>        <Item1 Ref="17" ControlType="XRLine" Name="xrLine' +
        '1" LineWidth="2" SizeF="700,2.083333" LocationFloat="0,0" ForeCo' +
        'lor="255,60,66,82">          <StylePriority Ref="18" UseForeColo' +
        'r="false" UseBorderColor="false" />        </Item1>        <Item' +
        '2 Ref="19" ControlType="XRTable" Name="table1" TextAlignment="Mi' +
        'ddleLeft" SizeF="640,30" LocationFloat="60,2.083333">          <' +
        'Rows>            <Item1 Ref="20" ControlType="XRTableRow" Name="' +
        'tableRow1" Weight="0.9538342864480398" Padding="0,0,0,0,100">   ' +
        '           <Cells>                <Item1 Ref="21" ControlType="X' +
        'RTableCell" Name="tableCell2" Weight="0.38575415685319997" Text=' +
        '"ProductName" StyleName="TableHeaderStyle" Padding="5,0,0,0,100"' +
        '>                  <StylePriority Ref="22" UseTextAlignment="fal' +
        'se" />                </Item1>                <Item2 Ref="23" Co' +
        'ntrolType="XRTableCell" Name="tableCell3" Weight="0.225745147086' +
        '3936" Text="Category Name" StyleName="TableHeaderStyle" Padding=' +
        '"5,0,0,0,100">                  <StylePriority Ref="24" UseTextA' +
        'lignment="false" />                </Item2>                <Item' +
        '3 Ref="25" ControlType="XRTableCell" Name="tableCell4" Weight="0' +
        '.2344534427735297" Text="Quantity Per Unit" TextAlignment="Middl' +
        'eLeft" StyleName="TableHeaderStyle" Padding="5,0,0,0,100">      ' +
        '            <StylePriority Ref="26" UseTextAlignment="false" /> ' +
        '               </Item3>                <Item4 Ref="27" ControlTy' +
        'pe="XRTableCell" Name="tableCell5" Weight="0.19667476938729045" ' +
        'Text="Units In Stock" TextAlignment="MiddleRight" StyleName="Tab' +
        'leHeaderStyle" Padding="10,8,0,0,100" Borders="Right">          ' +
        '        <StylePriority Ref="28" UsePadding="false" UseBorders="f' +
        'alse" UseTextAlignment="false" />                </Item4>       ' +
        '       </Cells>            </Item1>          </Rows>          <E' +
        'xpressionBindings>            <Item1 Ref="29" EventName="BeforeP' +
        'rint" PropertyName="Bookmark" Expression="FirstLetter" />       ' +
        '   </ExpressionBindings>          <StylePriority Ref="30" UseFon' +
        't="false" UseForeColor="false" UseBackColor="false" UsePadding="' +
        'false" UseBorderColor="false" UseBorders="false" />        </Ite' +
        'm2>      </Controls>    </Item4>    <Item5 Ref="31" ControlType=' +
        '"DetailBand" Name="Detail" HeightF="32" TextAlignment="TopLeft" ' +
        'Font="Tahoma, 8.25pt" Padding="0,0,0,0,100" BorderColor="White" ' +
        'Borders="Right">      <SortFields>        <Item1 Ref="32" FieldN' +
        'ame="ProductName" />      </SortFields>      <Controls>        <' +
        'Item1 Ref="33" ControlType="XRTable" Name="table3" SizeF="700,32' +
        '" LocationFloat="0,0">          <Rows>            <Item1 Ref="34' +
        '" ControlType="XRTableRow" Name="tableRow3" Weight="2.7878787878' +
        '78788">              <Cells>                <Item1 Ref="35" Cont' +
        'rolType="XRTableCell" Name="xrTableCell1" Weight="60.18763559641' +
        '9" Multiline="true" StyleName="TableStyle" BackColor="255,255,22' +
        '7,128" Borders="None">                  <ExpressionBindings>    ' +
        '                <Item1 Ref="36" EventName="BeforePrint" Property' +
        'Name="Visible" Expression="CurrentRowIndexInGroup() &gt; 0" />  ' +
        '                </ExpressionBindings>                  <StylePri' +
        'ority Ref="37" UseFont="false" UseForeColor="false" UseBackColor' +
        '="false" UsePadding="false" UseBorderColor="false" UseBorders="f' +
        'alse" UseBorderWidth="false" UseTextAlignment="false" />        ' +
        '        </Item1>                <Item2 Ref="38" ControlType="XRT' +
        'ableCell" Name="tableCell9" Weight="237.5295095638923" Multiline' +
        '="true" Text="tableCell1" TextAlignment="MiddleLeft" StyleName="' +
        'TableStyle" Padding="10,0,0,0,100">                  <Expression' +
        'Bindings>                    <Item1 Ref="39" EventName="BeforePr' +
        'int" PropertyName="Text" Expression="ProductName" />            ' +
        '      </ExpressionBindings>                  <StylePriority Ref=' +
        '"40" UseFont="false" UseForeColor="false" UseBackColor="false" U' +
        'sePadding="false" UseBorderColor="false" UseBorders="false" UseB' +
        'orderWidth="false" UseTextAlignment="false" />                </' +
        'Item2>                <Item3 Ref="41" ControlType="XRTableCell" ' +
        'Name="tableCell10" Weight="139.00336652834145" Multiline="true" ' +
        'Text="tableCell6" TextAlignment="MiddleLeft" StyleName="TableSty' +
        'le" Padding="10,0,0,0,100">                  <ExpressionBindings' +
        '>                    <Item1 Ref="42" EventName="BeforePrint" Pro' +
        'pertyName="Text" Expression="CategoryName" />                  <' +
        '/ExpressionBindings>                  <StylePriority Ref="43" Us' +
        'eFont="false" UseForeColor="false" UseBackColor="false" UsePaddi' +
        'ng="false" UseBorderColor="false" UseBorders="false" UseBorderWi' +
        'dth="false" UseTextAlignment="false" />                </Item3> ' +
        '               <Item4 Ref="44" ControlType="XRTableCell" Name="t' +
        'ableCell11" Weight="144.3655118516795" KeepTogether="true" Multi' +
        'line="true" Text="tableCell7" TextAlignment="MiddleLeft" StyleNa' +
        'me="TableStyle" Padding="10,0,0,0,100">                  <Expres' +
        'sionBindings>                    <Item1 Ref="45" EventName="Befo' +
        'rePrint" PropertyName="Text" Expression="QuantityPerUnit" />    ' +
        '              </ExpressionBindings>                  <StylePrior' +
        'ity Ref="46" UseFont="false" UseForeColor="false" UseBackColor="' +
        'false" UsePadding="false" UseBorderColor="false" UseBorders="fal' +
        'se" UseBorderWidth="false" UseTextAlignment="false" />          ' +
        '      </Item4>                <Item5 Ref="47" ControlType="XRTab' +
        'leCell" Name="tableCell12" Weight="121.1031511106165" KeepTogeth' +
        'er="true" Multiline="true" Text="xrTableCell6" TextAlignment="Mi' +
        'ddleRight" StyleName="TableStyle" Padding="10,8,0,0,100" Borders' +
        '="Top, Right">                  <ExpressionBindings>            ' +
        '        <Item1 Ref="48" EventName="BeforePrint" PropertyName="Te' +
        'xt" Expression="UnitsInStock" />                  </ExpressionBi' +
        'ndings>                  <StylePriority Ref="49" UseFont="false"' +
        ' UseForeColor="false" UseBackColor="false" UsePadding="false" Us' +
        'eBorderColor="false" UseBorders="false" UseBorderWidth="false" U' +
        'seTextAlignment="false" />                </Item5>              ' +
        '</Cells>            </Item1>          </Rows>          <StylePri' +
        'ority Ref="50" UseFont="false" UseForeColor="false" UseBorderCol' +
        'or="false" UseBorders="false" />        </Item1>      </Controls' +
        '>    </Item5>    <Item6 Ref="51" ControlType="ReportFooterBand" ' +
        'Name="ReportFooter1" HeightF="2">      <Controls>        <Item1 ' +
        'Ref="52" ControlType="XRTable" Name="table4" SizeF="700.0001,2" ' +
        'LocationFloat="0,0" Padding="2,2,0,0,96" Borders="Top">         ' +
        ' <Rows>            <Item1 Ref="53" ControlType="XRTableRow" Name' +
        '="xrTableRow1" Weight="1">              <Cells>                <' +
        'Item1 Ref="54" ControlType="XRTableCell" Name="xrTableCell2" Wei' +
        'ght="0.5999999618530274" Multiline="true" BorderColor="255,255,2' +
        '27,128">                  <StylePriority Ref="55" UseBorderColor' +
        '="false" />                </Item1>                <Item2 Ref="5' +
        '6" ControlType="XRTableCell" Name="xrTableCell3" Weight="6.40000' +
        '0648498535" Multiline="true" BorderColor="255,235,236,237">     ' +
        '             <StylePriority Ref="57" UseBorderColor="false" />  ' +
        '              </Item2>              </Cells>            </Item1>' +
        '          </Rows>          <StylePriority Ref="58" UseBorders="f' +
        'alse" />        </Item1>      </Controls>    </Item6>    <Item7 ' +
        'Ref="59" ControlType="BottomMarginBand" Name="BottomMargin" Heig' +
        'htF="88" TextAlignment="TopLeft" Padding="0,0,0,0,100" />  </Ban' +
        'ds>  <StyleSheet>    <Item1 Ref="60" Name="General" BorderStyle=' +
        '"Inset" Font="Arial, 10pt" ForeColor="255,60,66,82" StringFormat' +
        '="Near;Near;0;None;Character;Default" />    <Item2 Ref="61" Name' +
        '="TableHeaderStyle" BorderStyle="Inset" Padding="10,0,0,0,100" F' +
        'ont="Arial, 9pt, style=Bold" ForeColor="255,60,66,82" BorderColo' +
        'r="255,235,236,237" StringFormat="Near;Near;0;None;Character;Def' +
        'ault" />    <Item3 Ref="62" Name="TableStyle" BorderStyle="Inset' +
        '" Padding="10,0,0,0,100" Font="Arial, 9pt" ForeColor="255,60,66,' +
        '82" BackColor="Transparent" BorderColor="255,235,236,237" Sides=' +
        '"Top" StringFormat="Near;Near;0;None;Character;Default" BorderWi' +
        'dthSerializable="1" />  </StyleSheet>  <ComponentStorage>    <It' +
        'em1 Ref="0" ObjectType="DevExpress.DataAccess.Json.JsonDataSourc' +
        'e,DevExpress.DataAccess.v25.1" Name="jsonDataSource1" Base64="PE' +
        'pzb25EYXRhU291cmNlIE5hbWU9Impzb25EYXRhU291cmNlMSIgQ29ubmVjdGlvbk' +
        '5hbWU9Ik5XaW5kTWVtRGF0YUNvbm5lY3Rpb24iPjxTY2hlbWE+PE5vZGUgTmFtZT' +
        '0icm9vdCIgU2VsZWN0ZWQ9InRydWUiIE5vZGVUeXBlPSJPYmplY3QiPjxOb2RlIE' +
        '5hbWU9IlByb2R1Y3RzIiBTZWxlY3RlZD0idHJ1ZSIgTm9kZVR5cGU9IkFycmF5Ij' +
        '48Tm9kZSBOYW1lPSJDYXRlZ29yeUlEIiBUeXBlPSJTeXN0ZW0uTnVsbGFibGVgMV' +
        'tTeXN0ZW0uSW50NjRdIiBTZWxlY3RlZD0idHJ1ZSIgTm9kZVR5cGU9IlByb3Blcn' +
        'R5IiAvPjxOb2RlIE5hbWU9IkNhdGVnb3J5TmFtZSIgVHlwZT0iU3lzdGVtLlN0cm' +
        'luZyIgU2VsZWN0ZWQ9InRydWUiIE5vZGVUeXBlPSJQcm9wZXJ0eSIgLz48Tm9kZS' +
        'BOYW1lPSJQcm9kdWN0SUQiIFR5cGU9IlN5c3RlbS5OdWxsYWJsZWAxW1N5c3RlbS' +
        '5JbnQ2NF0iIFNlbGVjdGVkPSJ0cnVlIiBOb2RlVHlwZT0iUHJvcGVydHkiIC8+PE' +
        '5vZGUgTmFtZT0iUHJvZHVjdE5hbWUiIFR5cGU9IlN5c3RlbS5TdHJpbmciIFNlbG' +
        'VjdGVkPSJ0cnVlIiBOb2RlVHlwZT0iUHJvcGVydHkiIC8+PE5vZGUgTmFtZT0iUX' +
        'VhbnRpdHlQZXJVbml0IiBUeXBlPSJTeXN0ZW0uU3RyaW5nIiBTZWxlY3RlZD0idH' +
        'J1ZSIgTm9kZVR5cGU9IlByb3BlcnR5IiAvPjxOb2RlIE5hbWU9IlJlY0lkIiBUeX' +
        'BlPSJTeXN0ZW0uTnVsbGFibGVgMVtTeXN0ZW0uSW50NjRdIiBTZWxlY3RlZD0idH' +
        'J1ZSIgTm9kZVR5cGU9IlByb3BlcnR5IiAvPjxOb2RlIE5hbWU9IlVuaXRzSW5TdG' +
        '9jayIgVHlwZT0iU3lzdGVtLk51bGxhYmxlYDFbU3lzdGVtLkludDY0XSIgU2VsZW' +
        'N0ZWQ9InRydWUiIE5vZGVUeXBlPSJQcm9wZXJ0eSIgLz48L05vZGU+PC9Ob2RlPj' +
        'wvU2NoZW1hPjwvSnNvbkRhdGFTb3VyY2U+" />  </ComponentStorage></Xtr' +
        'aReportsLayoutSerializer>')
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'WXI'
    Left = 88
    Top = 144
  end
end
