.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;",
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

    const-string v2, "ctdialogsheet6f36type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewControls()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControls;
.end method

.method public abstract addNewCustomSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetViews;
.end method

.method public abstract addNewDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
.end method

.method public abstract addNewDrawingHF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawingHF;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
.end method

.method public abstract addNewLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
.end method

.method public abstract addNewLegacyDrawingHF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
.end method

.method public abstract addNewOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;
.end method

.method public abstract addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
.end method

.method public abstract addNewPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;
.end method

.method public abstract addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
.end method

.method public abstract addNewSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
.end method

.method public abstract addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
.end method

.method public abstract addNewSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
.end method

.method public abstract addNewSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
.end method

.method public abstract getControls()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControls;
.end method

.method public abstract getCustomSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetViews;
.end method

.method public abstract getDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
.end method

.method public abstract getDrawingHF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawingHF;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
.end method

.method public abstract getLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
.end method

.method public abstract getLegacyDrawingHF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
.end method

.method public abstract getOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;
.end method

.method public abstract getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
.end method

.method public abstract getPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;
.end method

.method public abstract getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
.end method

.method public abstract getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
.end method

.method public abstract getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
.end method

.method public abstract getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
.end method

.method public abstract getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
.end method

.method public abstract isSetControls()Z
.end method

.method public abstract isSetCustomSheetViews()Z
.end method

.method public abstract isSetDrawing()Z
.end method

.method public abstract isSetDrawingHF()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHeaderFooter()Z
.end method

.method public abstract isSetLegacyDrawing()Z
.end method

.method public abstract isSetLegacyDrawingHF()Z
.end method

.method public abstract isSetOleObjects()Z
.end method

.method public abstract isSetPageMargins()Z
.end method

.method public abstract isSetPageSetup()Z
.end method

.method public abstract isSetPrintOptions()Z
.end method

.method public abstract isSetSheetFormatPr()Z
.end method

.method public abstract isSetSheetPr()Z
.end method

.method public abstract isSetSheetProtection()Z
.end method

.method public abstract isSetSheetViews()Z
.end method

.method public abstract setControls(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControls;)V
.end method

.method public abstract setCustomSheetViews(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetViews;)V
.end method

.method public abstract setDrawing(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;)V
.end method

.method public abstract setDrawingHF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawingHF;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHeaderFooter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V
.end method

.method public abstract setLegacyDrawing(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;)V
.end method

.method public abstract setLegacyDrawingHF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;)V
.end method

.method public abstract setOleObjects(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;)V
.end method

.method public abstract setPageMargins(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;)V
.end method

.method public abstract setPageSetup(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;)V
.end method

.method public abstract setPrintOptions(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;)V
.end method

.method public abstract setSheetFormatPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;)V
.end method

.method public abstract setSheetPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;)V
.end method

.method public abstract setSheetProtection(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;)V
.end method

.method public abstract setSheetViews(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;)V
.end method

.method public abstract unsetControls()V
.end method

.method public abstract unsetCustomSheetViews()V
.end method

.method public abstract unsetDrawing()V
.end method

.method public abstract unsetDrawingHF()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHeaderFooter()V
.end method

.method public abstract unsetLegacyDrawing()V
.end method

.method public abstract unsetLegacyDrawingHF()V
.end method

.method public abstract unsetOleObjects()V
.end method

.method public abstract unsetPageMargins()V
.end method

.method public abstract unsetPageSetup()V
.end method

.method public abstract unsetPrintOptions()V
.end method

.method public abstract unsetSheetFormatPr()V
.end method

.method public abstract unsetSheetPr()V
.end method

.method public abstract unsetSheetProtection()V
.end method

.method public abstract unsetSheetViews()V
.end method
