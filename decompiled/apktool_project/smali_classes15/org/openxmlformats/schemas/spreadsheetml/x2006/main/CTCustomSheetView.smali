.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetView;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctcustomsheetview59d2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetView;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetView;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
.end method

.method public abstract addNewColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
.end method

.method public abstract addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
.end method

.method public abstract addNewPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;
.end method

.method public abstract addNewPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
.end method

.method public abstract addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
.end method

.method public abstract addNewRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
.end method

.method public abstract addNewSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
.end method

.method public abstract getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
.end method

.method public abstract getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
.end method

.method public abstract getColorId()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFilter()Z
.end method

.method public abstract getFilterUnique()Z
.end method

.method public abstract getFitToPage()Z
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
.end method

.method public abstract getHiddenColumns()Z
.end method

.method public abstract getHiddenRows()Z
.end method

.method public abstract getOutlineSymbols()Z
.end method

.method public abstract getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
.end method

.method public abstract getPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;
.end method

.method public abstract getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
.end method

.method public abstract getPrintArea()Z
.end method

.method public abstract getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
.end method

.method public abstract getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
.end method

.method public abstract getScale()J
.end method

.method public abstract getSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
.end method

.method public abstract getShowAutoFilter()Z
.end method

.method public abstract getShowFormulas()Z
.end method

.method public abstract getShowGridLines()Z
.end method

.method public abstract getShowPageBreaks()Z
.end method

.method public abstract getShowRowCol()Z
.end method

.method public abstract getShowRuler()Z
.end method

.method public abstract getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;
.end method

.method public abstract getTopLeftCell()Ljava/lang/String;
.end method

.method public abstract getView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType$Enum;
.end method

.method public abstract getZeroValues()Z
.end method

.method public abstract isSetAutoFilter()Z
.end method

.method public abstract isSetColBreaks()Z
.end method

.method public abstract isSetColorId()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFilter()Z
.end method

.method public abstract isSetFilterUnique()Z
.end method

.method public abstract isSetFitToPage()Z
.end method

.method public abstract isSetHeaderFooter()Z
.end method

.method public abstract isSetHiddenColumns()Z
.end method

.method public abstract isSetHiddenRows()Z
.end method

.method public abstract isSetOutlineSymbols()Z
.end method

.method public abstract isSetPageMargins()Z
.end method

.method public abstract isSetPageSetup()Z
.end method

.method public abstract isSetPane()Z
.end method

.method public abstract isSetPrintArea()Z
.end method

.method public abstract isSetPrintOptions()Z
.end method

.method public abstract isSetRowBreaks()Z
.end method

.method public abstract isSetScale()Z
.end method

.method public abstract isSetSelection()Z
.end method

.method public abstract isSetShowAutoFilter()Z
.end method

.method public abstract isSetShowFormulas()Z
.end method

.method public abstract isSetShowGridLines()Z
.end method

.method public abstract isSetShowPageBreaks()Z
.end method

.method public abstract isSetShowRowCol()Z
.end method

.method public abstract isSetShowRuler()Z
.end method

.method public abstract isSetState()Z
.end method

.method public abstract isSetTopLeftCell()Z
.end method

.method public abstract isSetView()Z
.end method

.method public abstract isSetZeroValues()Z
.end method

.method public abstract setAutoFilter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;)V
.end method

.method public abstract setColBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V
.end method

.method public abstract setColorId(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFilter(Z)V
.end method

.method public abstract setFilterUnique(Z)V
.end method

.method public abstract setFitToPage(Z)V
.end method

.method public abstract setGuid(Ljava/lang/String;)V
.end method

.method public abstract setHeaderFooter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V
.end method

.method public abstract setHiddenColumns(Z)V
.end method

.method public abstract setHiddenRows(Z)V
.end method

.method public abstract setOutlineSymbols(Z)V
.end method

.method public abstract setPageMargins(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;)V
.end method

.method public abstract setPageSetup(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;)V
.end method

.method public abstract setPane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;)V
.end method

.method public abstract setPrintArea(Z)V
.end method

.method public abstract setPrintOptions(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;)V
.end method

.method public abstract setRowBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V
.end method

.method public abstract setScale(J)V
.end method

.method public abstract setSelection(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;)V
.end method

.method public abstract setShowAutoFilter(Z)V
.end method

.method public abstract setShowFormulas(Z)V
.end method

.method public abstract setShowGridLines(Z)V
.end method

.method public abstract setShowPageBreaks(Z)V
.end method

.method public abstract setShowRowCol(Z)V
.end method

.method public abstract setShowRuler(Z)V
.end method

.method public abstract setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;)V
.end method

.method public abstract setTopLeftCell(Ljava/lang/String;)V
.end method

.method public abstract setView(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType$Enum;)V
.end method

.method public abstract setZeroValues(Z)V
.end method

.method public abstract unsetAutoFilter()V
.end method

.method public abstract unsetColBreaks()V
.end method

.method public abstract unsetColorId()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFilter()V
.end method

.method public abstract unsetFilterUnique()V
.end method

.method public abstract unsetFitToPage()V
.end method

.method public abstract unsetHeaderFooter()V
.end method

.method public abstract unsetHiddenColumns()V
.end method

.method public abstract unsetHiddenRows()V
.end method

.method public abstract unsetOutlineSymbols()V
.end method

.method public abstract unsetPageMargins()V
.end method

.method public abstract unsetPageSetup()V
.end method

.method public abstract unsetPane()V
.end method

.method public abstract unsetPrintArea()V
.end method

.method public abstract unsetPrintOptions()V
.end method

.method public abstract unsetRowBreaks()V
.end method

.method public abstract unsetScale()V
.end method

.method public abstract unsetSelection()V
.end method

.method public abstract unsetShowAutoFilter()V
.end method

.method public abstract unsetShowFormulas()V
.end method

.method public abstract unsetShowGridLines()V
.end method

.method public abstract unsetShowPageBreaks()V
.end method

.method public abstract unsetShowRowCol()V
.end method

.method public abstract unsetShowRuler()V
.end method

.method public abstract unsetState()V
.end method

.method public abstract unsetTopLeftCell()V
.end method

.method public abstract unsetView()V
.end method

.method public abstract unsetZeroValues()V
.end method

.method public abstract xgetColorId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetFilter()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFilterUnique()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFitToPage()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetHiddenColumns()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHiddenRows()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOutlineSymbols()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPrintArea()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetScale()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetShowAutoFilter()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowFormulas()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowGridLines()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowPageBreaks()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowRowCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowRuler()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;
.end method

.method public abstract xgetTopLeftCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xgetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType;
.end method

.method public abstract xgetZeroValues()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetColorId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetFilter(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFilterUnique(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFitToPage(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetGuid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetHiddenColumns(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHiddenRows(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOutlineSymbols(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPrintArea(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetScale(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetShowAutoFilter(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowFormulas(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowGridLines(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowPageBreaks(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowRowCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowRuler(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;)V
.end method

.method public abstract xsetTopLeftCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method

.method public abstract xsetView(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType;)V
.end method

.method public abstract xsetZeroValues(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
