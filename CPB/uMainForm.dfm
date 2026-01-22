object MainForm: TMainForm
  Left = 0
  Top = 0
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  AutoSize = True
  Caption = 'Product List Report'
  ClientHeight = 850
  ClientWidth = 1282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 192
  TextHeight = 32
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1282
    Height = 850
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    TabOrder = 0
    AutoSize = True
    object btnPreview: TcxButton
      Left = 25
      Top = 44
      Width = 1114
      Height = 50
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Preview Report'
      OptionsImage.Spacing = 8
      TabOrder = 0
      OnClick = btnPreviewClick
    end
    object cxGrid1: TcxGrid
      Left = 25
      Top = 108
      Width = 1114
      Height = 690
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      TabOrder = 1
      object gvProducts: TcxGridDBTableView
        DataController.DataSource = DataSource1
        FilterRow.SeparatorWidth = 12
        FixedDataRows.SeparatorWidth = 12
        NewItemRow.SeparatorWidth = 12
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow]
        OptionsView.NavigatorOffset = 100
        OptionsView.ColumnAutoWidth = True
        OptionsView.FixedColumnSeparatorWidth = 4
        OptionsView.GroupByBox = False
        Preview.LeftIndent = 40
        Preview.RightIndent = 10
        RowLayout.MinValueWidth = 160
        object gvProductsProductID: TcxGridDBColumn
          DataBinding.FieldName = 'ProductID'
          Visible = False
          MinWidth = 40
        end
        object gvProductsProductName: TcxGridDBColumn
          DataBinding.FieldName = 'ProductName'
          MinWidth = 40
          Width = 300
        end
        object gvProductsCategoryName: TcxGridDBColumn
          DataBinding.FieldName = 'CategoryName'
          MinWidth = 40
          Width = 272
        end
        object gvProductsQuantityPerUnit: TcxGridDBColumn
          DataBinding.FieldName = 'QuantityPerUnit'
          MinWidth = 40
          Width = 246
        end
        object gvProductsUnitsInStock: TcxGridDBColumn
          DataBinding.FieldName = 'UnitsInStock'
          MinWidth = 40
          Width = 244
        end
        object gvProductsCategoryID: TcxGridDBColumn
          DataBinding.FieldName = 'CategoryID'
          Visible = False
          MinWidth = 40
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
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'btnViewReport'
      CaptionOptions.Visible = False
      Control = btnPreview
      ControlOptions.MinHeight = 40
      ControlOptions.MinWidth = 40
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 386
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      CaptionOptions.Text = 'Label'
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.DefaultHeight = 32
      ButtonOptions.DefaultWidth = 32
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.DefaultHeight = 32
      ButtonOptions.DefaultWidth = 32
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.MinHeight = 40
      ControlOptions.MinWidth = 40
      ControlOptions.OriginalHeight = 690
      ControlOptions.OriginalWidth = 1114
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.DefaultHeight = 32
      ButtonOptions.DefaultWidth = 32
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
  end
  object dxReport1: TdxReport
    ReportName = 'Product List Report'
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
    Parameters = <>
    Left = 40
    Top = 192
  end
  object dxBackendDataConnectionManager: TdxBackendDataConnectionManager
    Left = 40
    Top = 144
    object NWindMemDataConnection: TdxBackendDataSetJSONConnection
      object NWindMemDataConnectionItem1: TdxBackendDataSetCollectionItem
        DataSet = mdProducts
        DataSetAlias = 'Products'
      end
    end
  end
  object dxSkinController1: TdxSkinController
    SkinName = 'WXI'
    Left = 88
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = mdProducts
    Left = 88
    Top = 192
  end
  object mdProducts: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F060000000400000003000A0050726F647563744944
      002800000014000C0050726F647563744E616D65001400000014001000517561
      6E74697479506572556E6974000200000002000D00556E697473496E53746F63
      6B000400000003000B0043617465676F72794944000F00000014000D00436174
      65676F72794E616D650001010000000104000000430068006100690001120000
      0031003000200062006F00780065007300200078002000320030002000620061
      0067007300012700010100000001090000004200650076006500720061006700
      65007300010200000001050000004300680061006E0067000112000000320034
      0020002D0020003100320020006F007A00200062006F00740074006C00650073
      0001110001010000000109000000420065007600650072006100670065007300
      0103000000010D00000041006E00690073006500650064002000530079007200
      7500700001130000003100320020002D00200035003500300020006D006C0020
      0062006F00740074006C0065007300010D000102000000010A00000043006F00
      6E00640069006D0065006E00740073000104000000011C000000430068006500
      6600200041006E0074006F006E00270073002000430061006A0075006E002000
      53006500610073006F006E0069006E006700010E0000003400380020002D0020
      00360020006F007A0020006A006100720073000135000102000000010A000000
      43006F006E00640069006D0065006E0074007300010500000001160000004300
      680065006600200041006E0074006F006E00270073002000470075006D006200
      6F0020004D0069007800010800000033003600200062006F0078006500730001
      00000102000000010A00000043006F006E00640069006D0065006E0074007300
      0106000000011C0000004700720061006E0064006D0061002700730020004200
      6F007900730065006E0062006500720072007900200053007000720065006100
      6400010E0000003100320020002D002000380020006F007A0020006A00610072
      0073000178000102000000010A00000043006F006E00640069006D0065006E00
      740073000107000000011F00000055006E0063006C006500200042006F006200
      2700730020004F007200670061006E0069006300200044007200690065006400
      200050006500610072007300010F0000003100320020002D002000310020006C
      006200200070006B00670073002E00010F000107000000010700000050007200
      6F0064007500630065000108000000011A0000004E006F007200740068007700
      6F006F006400730020004300720061006E006200650072007200790020005300
      6100750063006500010F0000003100320020002D0020003100320020006F007A
      0020006A006100720073000106000102000000010A00000043006F006E006400
      69006D0065006E00740073000109000000010F0000004D006900730068006900
      20004B006F006200650020004E0069006B00750001100000003100380020002D
      00200035003000300020006700200070006B00670073002E00011D0001060000
      00010C0000004D006500610074002F0050006F0075006C00740072007900010A
      000000010500000049006B0075007200610001100000003100320020002D0020
      0032003000300020006D006C0020006A00610072007300011F00010800000001
      0700000053006500610066006F006F006400010B000000010E00000051007500
      650073006F002000430061006200720061006C00650073000109000000310020
      006B006700200070006B0067002E000116000104000000010E00000044006100
      6900720079002000500072006F0064007500630074007300010C000000011900
      000051007500650073006F0020004D0061006E0063006800650067006F002000
      4C006100200050006100730074006F007200610001100000003100300020002D
      00200035003000300020006700200070006B00670073002E0001560001040000
      00010E000000440061006900720079002000500072006F006400750063007400
      7300010D00000001050000004B006F006E00620075000108000000320020006B
      006700200062006F007800011800010800000001070000005300650061006600
      6F006F006400010E000000010400000054006F00660075000110000000340030
      0020002D00200031003000300020006700200070006B00670073002E00012300
      01070000000107000000500072006F006400750063006500010F000000010C00
      0000470065006E0065006E002000530068006F00750079007500011300000032
      00340020002D00200032003500300020006D006C00200062006F00740074006C
      00650073000127000102000000010A00000043006F006E00640069006D006500
      6E0074007300011000000001070000005000610076006C006F00760061000110
      0000003300320020002D00200035003000300020006700200062006F00780065
      007300011D000103000000010B00000043006F006E0066006500630074006900
      6F006E0073000111000000010C00000041006C0069006300650020004D007500
      740074006F006E00010E0000003200300020002D002000310020006B00670020
      00740069006E0073000100000106000000010C0000004D006500610074002F00
      50006F0075006C00740072007900011200000001100000004300610072006E00
      6100720076006F006E002000540069006700650072007300010A000000310036
      0020006B006700200070006B0067002E00012A00010800000001070000005300
      6500610066006F006F0064000113000000011A00000054006500610074006900
      6D0065002000430068006F0063006F006C006100740065002000420069007300
      63007500690074007300011400000031003000200062006F0078006500730020
      0078002000310032002000700069006500630065007300011900010300000001
      0B00000043006F006E00660065006300740069006F006E007300011400000001
      16000000530069007200200052006F0064006E00650079002700730020004D00
      610072006D0061006C00610064006500010D0000003300300020006700690066
      007400200062006F007800650073000128000103000000010B00000043006F00
      6E00660065006300740069006F006E0073000115000000011300000053006900
      7200200052006F0064006E0065007900270073002000530063006F006E006500
      7300011300000032003400200070006B00670073002E00200078002000340020
      007000690065006300650073000103000103000000010B00000043006F006E00
      660065006300740069006F006E00730001160000000113000000470075007300
      7400610066002700730020004B006E00E40063006B00650062007200F6006400
      01100000003200340020002D00200035003000300020006700200070006B0067
      0073002E000168000105000000010E00000047007200610069006E0073002F00
      430065007200650061006C00730001170000000108000000540075006E006E00
      62007200F600640001100000003100320020002D002000320035003000200067
      00200070006B00670073002E00013D000105000000010E000000470072006100
      69006E0073002F00430065007200650061006C00730001180000000112000000
      470075006100720061006E00E1002000460061006E007400E100730074006900
      6300610001100000003100320020002D00200033003500350020006D006C0020
      00630061006E0073000114000101000000010900000042006500760065007200
      6100670065007300011900000001170000004E0075004E007500430061002000
      4E007500DF002D004E006F0075006700610074002D004300720065006D006500
      01120000003200300020002D00200034003500300020006700200067006C0061
      007300730065007300014C000103000000010B00000043006F006E0066006500
      6300740069006F006E007300011A0000000113000000470075006D006200E400
      72002000470075006D006D0069006200E40072006300680065006E0001100000
      0031003000300020002D00200032003500300020006700200062006100670073
      00010F000103000000010B00000043006F006E00660065006300740069006F00
      6E007300011B00000001120000005300630068006F0067006700690020005300
      630068006F006B006F006C00610064006500011200000031003000300020002D
      0020003100300030002000670020007000690065006300650073000131000103
      000000010B00000043006F006E00660065006300740069006F006E007300011C
      00000001110000005200F600730073006C006500200053006100750065007200
      6B007200610075007400010F0000003200350020002D00200038003200350020
      0067002000630061006E007300011A0001070000000107000000500072006F00
      6400750063006500011D000000011700000054006800FC00720069006E006700
      65007200200052006F0073007400620072006100740077007500720073007400
      0114000000350030002000620061006700730020007800200033003000200073
      00610075007300670073002E000100000106000000010C0000004D0065006100
      74002F0050006F0075006C00740072007900011E00000001150000004E006F00
      720064002D004F007300740020004D00610074006A0065007300680065007200
      69006E00670001120000003100300020002D0020003200300030002000670020
      0067006C0061007300730065007300010A000108000000010700000053006500
      610066006F006F006400011F000000011100000047006F00720067006F006E00
      7A006F006C0061002000540065006C0069006E006F00010F0000003100320020
      002D00200031003000300020006700200070006B006700730001000001040000
      00010E000000440061006900720079002000500072006F006400750063007400
      7300012000000001120000004D006100730063006100720070006F006E006500
      200046006100620069006F006C00690001100000003200340020002D00200032
      003000300020006700200070006B00670073002E000109000104000000010E00
      0000440061006900720079002000500072006F00640075006300740073000121
      000000010700000047006500690074006F007300740001050000003500300030
      00200067000170000104000000010E0000004400610069007200790020005000
      72006F00640075006300740073000122000000010D0000005300610073007100
      75006100740063006800200041006C00650001120000003200340020002D0020
      003100320020006F007A00200062006F00740074006C0065007300016F000101
      0000000109000000420065007600650072006100670065007300012300000001
      0E00000053007400650065006C006500790065002000530074006F0075007400
      01120000003200340020002D0020003100320020006F007A00200062006F0074
      0074006C00650073000114000101000000010900000042006500760065007200
      61006700650073000124000000010B00000049006E006C006100670064002000
      530069006C006C0001100000003200340020002D002000320035003000200067
      00200020006A0061007200730001700001080000000107000000530065006100
      66006F006F0064000125000000010A0000004700720061007600610064002000
      6C006100780001100000003100320020002D0020003500300030002000670020
      0070006B00670073002E00010B00010800000001070000005300650061006600
      6F006F0064000126000000010D0000004300F400740065002000640065002000
      42006C0061007900650001120000003100320020002D00200037003500200063
      006C00200062006F00740074006C006500730001110001010000000109000000
      4200650076006500720061006700650073000127000000011000000043006800
      6100720074007200650075007300650020007600650072007400650001110000
      003700350030002000630063002000700065007200200062006F00740074006C
      0065000145000101000000010900000042006500760065007200610067006500
      73000128000000011000000042006F00730074006F006E002000430072006100
      620020004D00650061007400010E0000003200340020002D002000340020006F
      007A002000740069006E007300017B0001080000000107000000530065006100
      66006F006F0064000129000000011F0000004A00610063006B00270073002000
      4E0065007700200045006E0067006C0061006E006400200043006C0061006D00
      2000430068006F007700640065007200010F0000003100320020002D00200031
      00320020006F007A002000630061006E00730001550001080000000107000000
      53006500610066006F006F006400012A000000011D000000530069006E006700
      610070006F007200650061006E00200048006F006B006B00690065006E002000
      4600720069006500640020004D0065006500010F0000003300320020002D0020
      00310020006B006700200070006B00670073002E00011A000105000000010E00
      000047007200610069006E0073002F00430065007200650061006C007300012B
      000000010B000000490070006F006800200043006F006600660065006500010F
      0000003100360020002D002000350030003000200067002000740069006E0073
      0001110001010000000109000000420065007600650072006100670065007300
      012C000000010C000000470075006C00610020004D0061006C00610063006300
      6100010E0000003200300020002D002000320020006B00670020006200610067
      007300011B000102000000010A00000043006F006E00640069006D0065006E00
      74007300012D000000010B00000052006F006700650064006500200073006900
      6C006400010700000031006B00200070006B0067002E00010500010800000001
      0700000053006500610066006F006F006400012E000000010900000053007000
      650067006500730069006C0064000111000000340020002D0020003400350030
      0020006700200067006C0061007300730065007300015F000108000000010700
      000053006500610066006F006F006400012F000000010D0000005A0061006100
      6E007300650020006B006F0065006B0065006E00010F0000003100300020002D
      002000340020006F007A00200062006F00780065007300012400010300000001
      0B00000043006F006E00660065006300740069006F006E007300013000000001
      09000000430068006F0063006F006C0061006400650001080000003100300020
      0070006B00670073002E00010F000103000000010B00000043006F006E006600
      65006300740069006F006E007300013100000001080000004D00610078006900
      6C0061006B007500010F0000003200340020002D002000350030002000670020
      0070006B00670073002E00010A000103000000010B00000043006F006E006600
      65006300740069006F006E00730001320000000110000000560061006C006B00
      6F0069006E0065006E002000730075006B006C0061006100010F000000310032
      0020002D00200031003000300020006700200062006100720073000141000103
      000000010B00000043006F006E00660065006300740069006F006E0073000133
      00000001150000004D0061006E006A0069006D00750070002000440072006900
      6500640020004100700070006C006500730001100000003500300020002D0020
      0033003000300020006700200070006B00670073002E00011400010700000001
      07000000500072006F0064007500630065000134000000010800000046006900
      6C006F0020004D0069007800010F0000003100360020002D002000320020006B
      006700200062006F007800650073000126000105000000010E00000047007200
      610069006E0073002F00430065007200650061006C0073000135000000010D00
      0000500065007200740068002000500061007300740069006500730001090000
      003400380020007000690065006300650073000100000106000000010C000000
      4D006500610074002F0050006F0075006C007400720079000136000000010900
      000054006F007500720074006900E80072006500010700000031003600200070
      006900650073000115000106000000010C0000004D006500610074002F005000
      6F0075006C007400720079000137000000010C0000005000E2007400E9002000
      6300680069006E006F0069007300011100000032003400200062006F00780065
      0073002000780020003200200070006900650073000173000106000000010C00
      00004D006500610074002F0050006F0075006C00740072007900013800000001
      1600000047006E006F00630063006800690020006400690020006E006F006E00
      6E006100200041006C0069006300650001100000003200340020002D00200032
      003500300020006700200070006B00670073002E000115000105000000010E00
      000047007200610069006E0073002F00430065007200650061006C0073000139
      000000010E00000052006100760069006F006C006900200041006E0067006500
      6C006F0001100000003200340020002D00200032003500300020006700200070
      006B00670073002E000124000105000000010E00000047007200610069006E00
      73002F00430065007200650061006C007300013A000000011600000045007300
      63006100720067006F0074007300200064006500200042006F00750072006700
      6F0067006E006500010900000032003400200070006900650063006500730001
      3E000108000000010700000053006500610066006F006F006400013B00000001
      140000005200610063006C006500740074006500200043006F00750072006400
      61007600610075006C0074000109000000350020006B006700200070006B0067
      002E00014F000104000000010E00000044006100690072007900200050007200
      6F0064007500630074007300013C0000000111000000430061006D0065006D00
      62006500720074002000500069006500720072006F0074000111000000310035
      0020002D00200033003000300020006700200072006F0075006E006400730001
      13000104000000010E000000440061006900720079002000500072006F006400
      7500630074007300013D000000010E0000005300690072006F00700020006400
      2700E9007200610062006C00650001130000003200340020002D002000350030
      00300020006D006C00200062006F00740074006C006500730001710001020000
      00010A00000043006F006E00640069006D0065006E0074007300013E00000001
      0E00000054006100720074006500200061007500200073007500630072006500
      010700000034003800200070006900650073000111000103000000010B000000
      43006F006E00660065006300740069006F006E007300013F000000010C000000
      560065006700690065002D00730070007200650061006400010F000000310035
      0020002D0020003600320035002000670020006A006100720073000118000102
      000000010A00000043006F006E00640069006D0065006E007400730001400000
      000119000000570069006D006D00650072007300200067007500740065002000
      530065006D006D0065006C006B006E00F600640065006C000112000000320030
      0020006200610067007300200078002000340020007000690065006300650073
      000116000105000000010E00000047007200610069006E0073002F0043006500
      7200650061006C007300014100000001200000004C006F007500690073006900
      61006E006100200046006900650072007900200048006F007400200050006500
      700070006500720020005300610075006300650001110000003300320020002D
      002000380020006F007A00200062006F00740074006C0065007300014C000102
      000000010A00000043006F006E00640069006D0065006E007400730001420000
      0001190000004C006F00750069007300690061006E006100200048006F007400
      200053007000690063006500640020004F006B0072006100010E000000320034
      0020002D002000380020006F007A0020006A0061007200730001040001020000
      00010A00000043006F006E00640069006D0065006E0074007300014300000001
      190000004C00610075006700680069006E00670020004C0075006D0062006500
      72006A00610063006B0020004C00610067006500720001120000003200340020
      002D0020003100320020006F007A00200062006F00740074006C006500730001
      3400010100000001090000004200650076006500720061006700650073000144
      0000000113000000530063006F007400740069007300680020004C006F006E00
      6700620072006500610064007300011300000031003000200062006F00780065
      0073002000780020003800200070006900650063006500730001060001030000
      00010B00000043006F006E00660065006300740069006F006E00730001450000
      0001100000004700750064006200720061006E0064007300640061006C007300
      6F0073007400010A0000003100300020006B006700200070006B0067002E0001
      1A000104000000010E000000440061006900720079002000500072006F006400
      75006300740073000146000000010D0000004F00750074006200610063006B00
      20004C00610067006500720001130000003200340020002D0020003300350035
      0020006D006C00200062006F00740074006C0065007300010F00010100000001
      090000004200650076006500720061006700650073000147000000010B000000
      46006C006F00740065006D00790073006F007300740001100000003100300020
      002D00200035003000300020006700200070006B00670073002E00011A000104
      000000010E000000440061006900720079002000500072006F00640075006300
      74007300014800000001160000004D006F007A007A006100720065006C006C00
      61002000640069002000470069006F00760061006E006E006900011000000032
      00340020002D00200032003000300020006700200070006B00670073002E0001
      0E000104000000010E000000440061006900720079002000500072006F006400
      75006300740073000149000000010A0000005200F600640020004B0061007600
      690061007200010F0000003200340020002D0020003100350030002000670020
      006A006100720073000165000108000000010700000053006500610066006F00
      6F006400014A000000010D0000004C006F006E0067006C006900660065002000
      54006F00660075000109000000350020006B006700200070006B0067002E0001
      040001070000000107000000500072006F006400750063006500014B00000001
      1400000052006800F6006E0062007200E400750020004B006C006F0073007400
      65007200620069006500720001120000003200340020002D00200030002E0035
      0020006C00200062006F00740074006C0065007300017D000101000000010900
      0000420065007600650072006100670065007300014C000000010C0000004C00
      61006B006B0061006C0069006B00F600F6007200690001060000003500300030
      0020006D006C0001390001010000000109000000420065007600650072006100
      670065007300014D000000011F0000004F0072006900670069006E0061006C00
      20004600720061006E006B00660075007200740065007200200067007200FC00
      6E006500200053006F00DF006500010800000031003200200062006F00780065
      0073000120000102000000010A00000043006F006E00640069006D0065006E00
      74007300}
    SortOptions = []
    Left = 320
    Top = 200
    object mdProductsProductID: TIntegerField
      FieldName = 'ProductID'
    end
    object mdProductsProductName: TWideStringField
      FieldName = 'ProductName'
      Size = 40
    end
    object mdProductsQuantityPerUnit: TWideStringField
      FieldName = 'QuantityPerUnit'
    end
    object mdProductsUnitsInStock: TSmallintField
      FieldName = 'UnitsInStock'
    end
    object mdProductsCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object mdProductsCategoryName: TWideStringField
      FieldName = 'CategoryName'
      Size = 15
    end
  end
end
