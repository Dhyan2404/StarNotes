.class public interface abstract Lcom/microsoft/schemas/office/excel/CTClientData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/excel/CTClientData;",
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

    const-string v2, "ctclientdata433btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/excel/CTClientData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/excel/CTClientData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addAccel(Ljava/math/BigInteger;)V
.end method

.method public abstract addAccel2(Ljava/math/BigInteger;)V
.end method

.method public abstract addAnchor(Ljava/lang/String;)V
.end method

.method public abstract addAutoFill(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addAutoLine(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addAutoPict(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addAutoScale(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addCF(Ljava/lang/String;)V
.end method

.method public abstract addCamera(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addCancel(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addChecked(Ljava/math/BigInteger;)V
.end method

.method public abstract addColHidden(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addColored(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addColumn(Ljava/math/BigInteger;)V
.end method

.method public abstract addDDE(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addDefault(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addDefaultSize(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addDisabled(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addDismiss(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addDropLines(Ljava/math/BigInteger;)V
.end method

.method public abstract addDropStyle(Ljava/lang/String;)V
.end method

.method public abstract addDx(Ljava/math/BigInteger;)V
.end method

.method public abstract addFirstButton(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addFmlaGroup(Ljava/lang/String;)V
.end method

.method public abstract addFmlaLink(Ljava/lang/String;)V
.end method

.method public abstract addFmlaMacro(Ljava/lang/String;)V
.end method

.method public abstract addFmlaPict(Ljava/lang/String;)V
.end method

.method public abstract addFmlaRange(Ljava/lang/String;)V
.end method

.method public abstract addFmlaTxbx(Ljava/lang/String;)V
.end method

.method public abstract addHelp(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addHoriz(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addInc(Ljava/math/BigInteger;)V
.end method

.method public abstract addJustLastX(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addLCT(Ljava/lang/String;)V
.end method

.method public abstract addListItem(Ljava/lang/String;)V
.end method

.method public abstract addLockText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addLocked(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addMapOCX(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addMax(Ljava/math/BigInteger;)V
.end method

.method public abstract addMin(Ljava/math/BigInteger;)V
.end method

.method public abstract addMoveWithCells(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addMultiLine(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addMultiSel(Ljava/lang/String;)V
.end method

.method public abstract addNewAccel()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewAccel2()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewAnchor()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewAutoFill()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewAutoLine()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewAutoPict()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewAutoScale()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewCF()Lcom/microsoft/schemas/office/excel/STCF;
.end method

.method public abstract addNewCamera()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewCancel()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewChecked()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewColHidden()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewColored()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewColumn()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewDDE()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewDefault()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewDefaultSize()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewDisabled()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewDismiss()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewDropLines()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewDropStyle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewDx()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewFirstButton()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewFmlaGroup()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewFmlaLink()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewFmlaMacro()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewFmlaPict()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewFmlaRange()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewFmlaTxbx()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewHelp()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewHoriz()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewInc()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewJustLastX()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewLCT()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewListItem()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewLockText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewLocked()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewMapOCX()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewMax()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewMin()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewMoveWithCells()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewMultiLine()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewMultiSel()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewNoThreeD()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewNoThreeD2()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewPage()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewPrintObject()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewRecalcAlways()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewRow()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewRowHidden()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewScriptExtended()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewScriptLanguage()Lorg/apache/xmlbeans/XmlNonNegativeInteger;
.end method

.method public abstract addNewScriptLocation()Lorg/apache/xmlbeans/XmlNonNegativeInteger;
.end method

.method public abstract addNewScriptText()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewSecretEdit()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewSel()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewSelType()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewSizeWithCells()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewTextHAlign()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewTextVAlign()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewUIObj()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewVScroll()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewVTEdit()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewVal()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNewValidIds()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewVisible()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract addNewWidthMin()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract addNoThreeD(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addNoThreeD2(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addPage(Ljava/math/BigInteger;)V
.end method

.method public abstract addPrintObject(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addRecalcAlways(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addRow(Ljava/math/BigInteger;)V
.end method

.method public abstract addRowHidden(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addScriptExtended(Ljava/lang/String;)V
.end method

.method public abstract addScriptLanguage(Ljava/math/BigInteger;)V
.end method

.method public abstract addScriptLocation(Ljava/math/BigInteger;)V
.end method

.method public abstract addScriptText(Ljava/lang/String;)V
.end method

.method public abstract addSecretEdit(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addSel(Ljava/math/BigInteger;)V
.end method

.method public abstract addSelType(Ljava/lang/String;)V
.end method

.method public abstract addSizeWithCells(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addTextHAlign(Ljava/lang/String;)V
.end method

.method public abstract addTextVAlign(Ljava/lang/String;)V
.end method

.method public abstract addUIObj(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addVScroll(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addVTEdit(Ljava/math/BigInteger;)V
.end method

.method public abstract addVal(Ljava/math/BigInteger;)V
.end method

.method public abstract addValidIds(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addVisible(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract addWidthMin(Ljava/math/BigInteger;)V
.end method

.method public abstract getAccel2Array(I)Ljava/math/BigInteger;
.end method

.method public abstract getAccel2Array()[Ljava/math/BigInteger;
.end method

.method public abstract getAccel2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccelArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getAccelArray()[Ljava/math/BigInteger;
.end method

.method public abstract getAccelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnchorArray(I)Ljava/lang/String;
.end method

.method public abstract getAnchorArray()[Ljava/lang/String;
.end method

.method public abstract getAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutoFillArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getAutoFillArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getAutoFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutoLineArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getAutoLineArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getAutoLineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutoPictArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getAutoPictArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getAutoPictList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutoScaleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getAutoScaleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getAutoScaleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCFArray(I)Ljava/lang/String;
.end method

.method public abstract getCFArray()[Ljava/lang/String;
.end method

.method public abstract getCFList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCameraArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getCameraArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getCameraList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCancelArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getCancelArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getCancelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCheckedArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getCheckedArray()[Ljava/math/BigInteger;
.end method

.method public abstract getCheckedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getColHiddenArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getColHiddenArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getColHiddenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getColoredArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getColoredArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getColoredList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getColumnArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getColumnArray()[Ljava/math/BigInteger;
.end method

.method public abstract getColumnList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDDEArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getDDEArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getDDEList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getDefaultArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getDefaultList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultSizeArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getDefaultSizeArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getDefaultSizeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisabledArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getDisabledArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getDisabledList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDismissArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getDismissArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getDismissList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDropLinesArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getDropLinesArray()[Ljava/math/BigInteger;
.end method

.method public abstract getDropLinesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDropStyleArray(I)Ljava/lang/String;
.end method

.method public abstract getDropStyleArray()[Ljava/lang/String;
.end method

.method public abstract getDropStyleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDxArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getDxArray()[Ljava/math/BigInteger;
.end method

.method public abstract getDxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstButtonArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getFirstButtonArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getFirstButtonList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFmlaGroupArray(I)Ljava/lang/String;
.end method

.method public abstract getFmlaGroupArray()[Ljava/lang/String;
.end method

.method public abstract getFmlaGroupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFmlaLinkArray(I)Ljava/lang/String;
.end method

.method public abstract getFmlaLinkArray()[Ljava/lang/String;
.end method

.method public abstract getFmlaLinkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFmlaMacroArray(I)Ljava/lang/String;
.end method

.method public abstract getFmlaMacroArray()[Ljava/lang/String;
.end method

.method public abstract getFmlaMacroList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFmlaPictArray(I)Ljava/lang/String;
.end method

.method public abstract getFmlaPictArray()[Ljava/lang/String;
.end method

.method public abstract getFmlaPictList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFmlaRangeArray(I)Ljava/lang/String;
.end method

.method public abstract getFmlaRangeArray()[Ljava/lang/String;
.end method

.method public abstract getFmlaRangeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFmlaTxbxArray(I)Ljava/lang/String;
.end method

.method public abstract getFmlaTxbxArray()[Ljava/lang/String;
.end method

.method public abstract getFmlaTxbxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHelpArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getHelpArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getHelpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHorizArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getHorizArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getHorizList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIncArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getIncArray()[Ljava/math/BigInteger;
.end method

.method public abstract getIncList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJustLastXArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getJustLastXArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getJustLastXList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLCTArray(I)Ljava/lang/String;
.end method

.method public abstract getLCTArray()[Ljava/lang/String;
.end method

.method public abstract getLCTList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListItemArray(I)Ljava/lang/String;
.end method

.method public abstract getListItemArray()[Ljava/lang/String;
.end method

.method public abstract getListItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockTextArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getLockTextArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getLockTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockedArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getLockedArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getLockedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMapOCXArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getMapOCXArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getMapOCXList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getMaxArray()[Ljava/math/BigInteger;
.end method

.method public abstract getMaxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMinArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getMinArray()[Ljava/math/BigInteger;
.end method

.method public abstract getMinList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMoveWithCellsArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getMoveWithCellsArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getMoveWithCellsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMultiLineArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getMultiLineArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getMultiLineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMultiSelArray(I)Ljava/lang/String;
.end method

.method public abstract getMultiSelArray()[Ljava/lang/String;
.end method

.method public abstract getMultiSelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoThreeD2Array(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getNoThreeD2Array()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getNoThreeD2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoThreeDArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getNoThreeDArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getNoThreeDList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getObjectType()Lcom/microsoft/schemas/office/excel/STObjectType$Enum;
.end method

.method public abstract getPageArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getPageArray()[Ljava/math/BigInteger;
.end method

.method public abstract getPageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrintObjectArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getPrintObjectArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getPrintObjectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecalcAlwaysArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getRecalcAlwaysArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getRecalcAlwaysList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRowArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getRowArray()[Ljava/math/BigInteger;
.end method

.method public abstract getRowHiddenArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getRowHiddenArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getRowHiddenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRowList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScriptExtendedArray(I)Ljava/lang/String;
.end method

.method public abstract getScriptExtendedArray()[Ljava/lang/String;
.end method

.method public abstract getScriptExtendedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScriptLanguageArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getScriptLanguageArray()[Ljava/math/BigInteger;
.end method

.method public abstract getScriptLanguageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScriptLocationArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getScriptLocationArray()[Ljava/math/BigInteger;
.end method

.method public abstract getScriptLocationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScriptTextArray(I)Ljava/lang/String;
.end method

.method public abstract getScriptTextArray()[Ljava/lang/String;
.end method

.method public abstract getScriptTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSecretEditArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getSecretEditArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getSecretEditList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getSelArray()[Ljava/math/BigInteger;
.end method

.method public abstract getSelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelTypeArray(I)Ljava/lang/String;
.end method

.method public abstract getSelTypeArray()[Ljava/lang/String;
.end method

.method public abstract getSelTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSizeWithCellsArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getSizeWithCellsArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getSizeWithCellsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextHAlignArray(I)Ljava/lang/String;
.end method

.method public abstract getTextHAlignArray()[Ljava/lang/String;
.end method

.method public abstract getTextHAlignList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextVAlignArray(I)Ljava/lang/String;
.end method

.method public abstract getTextVAlignArray()[Ljava/lang/String;
.end method

.method public abstract getTextVAlignList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUIObjArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getUIObjArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getUIObjList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVScrollArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getVScrollArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getVScrollList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVTEditArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getVTEditArray()[Ljava/math/BigInteger;
.end method

.method public abstract getVTEditList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getValArray()[Ljava/math/BigInteger;
.end method

.method public abstract getValList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValidIdsArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getValidIdsArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getValidIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVisibleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getVisibleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getVisibleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidthMinArray(I)Ljava/math/BigInteger;
.end method

.method public abstract getWidthMinArray()[Ljava/math/BigInteger;
.end method

.method public abstract getWidthMinList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertAccel(ILjava/math/BigInteger;)V
.end method

.method public abstract insertAccel2(ILjava/math/BigInteger;)V
.end method

.method public abstract insertAnchor(ILjava/lang/String;)V
.end method

.method public abstract insertAutoFill(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertAutoLine(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertAutoPict(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertAutoScale(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertCF(ILjava/lang/String;)V
.end method

.method public abstract insertCamera(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertCancel(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertChecked(ILjava/math/BigInteger;)V
.end method

.method public abstract insertColHidden(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertColored(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertColumn(ILjava/math/BigInteger;)V
.end method

.method public abstract insertDDE(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertDefault(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertDefaultSize(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertDisabled(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertDismiss(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertDropLines(ILjava/math/BigInteger;)V
.end method

.method public abstract insertDropStyle(ILjava/lang/String;)V
.end method

.method public abstract insertDx(ILjava/math/BigInteger;)V
.end method

.method public abstract insertFirstButton(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertFmlaGroup(ILjava/lang/String;)V
.end method

.method public abstract insertFmlaLink(ILjava/lang/String;)V
.end method

.method public abstract insertFmlaMacro(ILjava/lang/String;)V
.end method

.method public abstract insertFmlaPict(ILjava/lang/String;)V
.end method

.method public abstract insertFmlaRange(ILjava/lang/String;)V
.end method

.method public abstract insertFmlaTxbx(ILjava/lang/String;)V
.end method

.method public abstract insertHelp(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertHoriz(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertInc(ILjava/math/BigInteger;)V
.end method

.method public abstract insertJustLastX(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertLCT(ILjava/lang/String;)V
.end method

.method public abstract insertListItem(ILjava/lang/String;)V
.end method

.method public abstract insertLockText(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertLocked(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertMapOCX(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertMax(ILjava/math/BigInteger;)V
.end method

.method public abstract insertMin(ILjava/math/BigInteger;)V
.end method

.method public abstract insertMoveWithCells(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertMultiLine(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertMultiSel(ILjava/lang/String;)V
.end method

.method public abstract insertNewAccel(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewAccel2(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewAnchor(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewAutoFill(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewAutoLine(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewAutoPict(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewAutoScale(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewCF(I)Lcom/microsoft/schemas/office/excel/STCF;
.end method

.method public abstract insertNewCamera(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewCancel(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewChecked(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewColHidden(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewColored(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewColumn(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewDDE(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewDefault(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewDefaultSize(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewDisabled(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewDismiss(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewDropLines(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewDropStyle(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewDx(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewFirstButton(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewFmlaGroup(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewFmlaLink(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewFmlaMacro(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewFmlaPict(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewFmlaRange(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewFmlaTxbx(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewHelp(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewHoriz(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewInc(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewJustLastX(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewLCT(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewListItem(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewLockText(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewLocked(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewMapOCX(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewMax(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewMin(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewMoveWithCells(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewMultiLine(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewMultiSel(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewNoThreeD(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewNoThreeD2(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewPage(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewPrintObject(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewRecalcAlways(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewRow(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewRowHidden(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewScriptExtended(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewScriptLanguage(I)Lorg/apache/xmlbeans/XmlNonNegativeInteger;
.end method

.method public abstract insertNewScriptLocation(I)Lorg/apache/xmlbeans/XmlNonNegativeInteger;
.end method

.method public abstract insertNewScriptText(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewSecretEdit(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewSel(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewSelType(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewSizeWithCells(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewTextHAlign(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewTextVAlign(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewUIObj(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewVScroll(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewVTEdit(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewVal(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNewValidIds(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewVisible(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract insertNewWidthMin(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract insertNoThreeD(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertNoThreeD2(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertPage(ILjava/math/BigInteger;)V
.end method

.method public abstract insertPrintObject(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertRecalcAlways(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertRow(ILjava/math/BigInteger;)V
.end method

.method public abstract insertRowHidden(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertScriptExtended(ILjava/lang/String;)V
.end method

.method public abstract insertScriptLanguage(ILjava/math/BigInteger;)V
.end method

.method public abstract insertScriptLocation(ILjava/math/BigInteger;)V
.end method

.method public abstract insertScriptText(ILjava/lang/String;)V
.end method

.method public abstract insertSecretEdit(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertSel(ILjava/math/BigInteger;)V
.end method

.method public abstract insertSelType(ILjava/lang/String;)V
.end method

.method public abstract insertSizeWithCells(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertTextHAlign(ILjava/lang/String;)V
.end method

.method public abstract insertTextVAlign(ILjava/lang/String;)V
.end method

.method public abstract insertUIObj(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertVScroll(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertVTEdit(ILjava/math/BigInteger;)V
.end method

.method public abstract insertVal(ILjava/math/BigInteger;)V
.end method

.method public abstract insertValidIds(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertVisible(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract insertWidthMin(ILjava/math/BigInteger;)V
.end method

.method public abstract removeAccel(I)V
.end method

.method public abstract removeAccel2(I)V
.end method

.method public abstract removeAnchor(I)V
.end method

.method public abstract removeAutoFill(I)V
.end method

.method public abstract removeAutoLine(I)V
.end method

.method public abstract removeAutoPict(I)V
.end method

.method public abstract removeAutoScale(I)V
.end method

.method public abstract removeCF(I)V
.end method

.method public abstract removeCamera(I)V
.end method

.method public abstract removeCancel(I)V
.end method

.method public abstract removeChecked(I)V
.end method

.method public abstract removeColHidden(I)V
.end method

.method public abstract removeColored(I)V
.end method

.method public abstract removeColumn(I)V
.end method

.method public abstract removeDDE(I)V
.end method

.method public abstract removeDefault(I)V
.end method

.method public abstract removeDefaultSize(I)V
.end method

.method public abstract removeDisabled(I)V
.end method

.method public abstract removeDismiss(I)V
.end method

.method public abstract removeDropLines(I)V
.end method

.method public abstract removeDropStyle(I)V
.end method

.method public abstract removeDx(I)V
.end method

.method public abstract removeFirstButton(I)V
.end method

.method public abstract removeFmlaGroup(I)V
.end method

.method public abstract removeFmlaLink(I)V
.end method

.method public abstract removeFmlaMacro(I)V
.end method

.method public abstract removeFmlaPict(I)V
.end method

.method public abstract removeFmlaRange(I)V
.end method

.method public abstract removeFmlaTxbx(I)V
.end method

.method public abstract removeHelp(I)V
.end method

.method public abstract removeHoriz(I)V
.end method

.method public abstract removeInc(I)V
.end method

.method public abstract removeJustLastX(I)V
.end method

.method public abstract removeLCT(I)V
.end method

.method public abstract removeListItem(I)V
.end method

.method public abstract removeLockText(I)V
.end method

.method public abstract removeLocked(I)V
.end method

.method public abstract removeMapOCX(I)V
.end method

.method public abstract removeMax(I)V
.end method

.method public abstract removeMin(I)V
.end method

.method public abstract removeMoveWithCells(I)V
.end method

.method public abstract removeMultiLine(I)V
.end method

.method public abstract removeMultiSel(I)V
.end method

.method public abstract removeNoThreeD(I)V
.end method

.method public abstract removeNoThreeD2(I)V
.end method

.method public abstract removePage(I)V
.end method

.method public abstract removePrintObject(I)V
.end method

.method public abstract removeRecalcAlways(I)V
.end method

.method public abstract removeRow(I)V
.end method

.method public abstract removeRowHidden(I)V
.end method

.method public abstract removeScriptExtended(I)V
.end method

.method public abstract removeScriptLanguage(I)V
.end method

.method public abstract removeScriptLocation(I)V
.end method

.method public abstract removeScriptText(I)V
.end method

.method public abstract removeSecretEdit(I)V
.end method

.method public abstract removeSel(I)V
.end method

.method public abstract removeSelType(I)V
.end method

.method public abstract removeSizeWithCells(I)V
.end method

.method public abstract removeTextHAlign(I)V
.end method

.method public abstract removeTextVAlign(I)V
.end method

.method public abstract removeUIObj(I)V
.end method

.method public abstract removeVScroll(I)V
.end method

.method public abstract removeVTEdit(I)V
.end method

.method public abstract removeVal(I)V
.end method

.method public abstract removeValidIds(I)V
.end method

.method public abstract removeVisible(I)V
.end method

.method public abstract removeWidthMin(I)V
.end method

.method public abstract setAccel2Array(ILjava/math/BigInteger;)V
.end method

.method public abstract setAccel2Array([Ljava/math/BigInteger;)V
.end method

.method public abstract setAccelArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setAccelArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setAnchorArray(ILjava/lang/String;)V
.end method

.method public abstract setAnchorArray([Ljava/lang/String;)V
.end method

.method public abstract setAutoFillArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setAutoFillArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setAutoLineArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setAutoLineArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setAutoPictArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setAutoPictArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setAutoScaleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setAutoScaleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setCFArray(ILjava/lang/String;)V
.end method

.method public abstract setCFArray([Ljava/lang/String;)V
.end method

.method public abstract setCameraArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setCameraArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setCancelArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setCancelArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setCheckedArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setCheckedArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setColHiddenArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setColHiddenArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setColoredArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setColoredArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setColumnArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setColumnArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setDDEArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setDDEArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setDefaultArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setDefaultArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setDefaultSizeArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setDefaultSizeArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setDisabledArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setDisabledArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setDismissArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setDismissArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setDropLinesArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setDropLinesArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setDropStyleArray(ILjava/lang/String;)V
.end method

.method public abstract setDropStyleArray([Ljava/lang/String;)V
.end method

.method public abstract setDxArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setDxArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setFirstButtonArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setFirstButtonArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setFmlaGroupArray(ILjava/lang/String;)V
.end method

.method public abstract setFmlaGroupArray([Ljava/lang/String;)V
.end method

.method public abstract setFmlaLinkArray(ILjava/lang/String;)V
.end method

.method public abstract setFmlaLinkArray([Ljava/lang/String;)V
.end method

.method public abstract setFmlaMacroArray(ILjava/lang/String;)V
.end method

.method public abstract setFmlaMacroArray([Ljava/lang/String;)V
.end method

.method public abstract setFmlaPictArray(ILjava/lang/String;)V
.end method

.method public abstract setFmlaPictArray([Ljava/lang/String;)V
.end method

.method public abstract setFmlaRangeArray(ILjava/lang/String;)V
.end method

.method public abstract setFmlaRangeArray([Ljava/lang/String;)V
.end method

.method public abstract setFmlaTxbxArray(ILjava/lang/String;)V
.end method

.method public abstract setFmlaTxbxArray([Ljava/lang/String;)V
.end method

.method public abstract setHelpArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setHelpArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setHorizArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setHorizArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setIncArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setIncArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setJustLastXArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setJustLastXArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setLCTArray(ILjava/lang/String;)V
.end method

.method public abstract setLCTArray([Ljava/lang/String;)V
.end method

.method public abstract setListItemArray(ILjava/lang/String;)V
.end method

.method public abstract setListItemArray([Ljava/lang/String;)V
.end method

.method public abstract setLockTextArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setLockTextArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setLockedArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setLockedArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setMapOCXArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setMapOCXArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setMaxArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setMaxArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setMinArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setMinArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setMoveWithCellsArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setMoveWithCellsArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setMultiLineArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setMultiLineArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setMultiSelArray(ILjava/lang/String;)V
.end method

.method public abstract setMultiSelArray([Ljava/lang/String;)V
.end method

.method public abstract setNoThreeD2Array(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setNoThreeD2Array([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setNoThreeDArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setNoThreeDArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setObjectType(Lcom/microsoft/schemas/office/excel/STObjectType$Enum;)V
.end method

.method public abstract setPageArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setPageArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setPrintObjectArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setPrintObjectArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setRecalcAlwaysArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setRecalcAlwaysArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setRowArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setRowArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setRowHiddenArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setRowHiddenArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setScriptExtendedArray(ILjava/lang/String;)V
.end method

.method public abstract setScriptExtendedArray([Ljava/lang/String;)V
.end method

.method public abstract setScriptLanguageArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setScriptLanguageArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setScriptLocationArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setScriptLocationArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setScriptTextArray(ILjava/lang/String;)V
.end method

.method public abstract setScriptTextArray([Ljava/lang/String;)V
.end method

.method public abstract setSecretEditArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setSecretEditArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setSelArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setSelArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setSelTypeArray(ILjava/lang/String;)V
.end method

.method public abstract setSelTypeArray([Ljava/lang/String;)V
.end method

.method public abstract setSizeWithCellsArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setSizeWithCellsArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setTextHAlignArray(ILjava/lang/String;)V
.end method

.method public abstract setTextHAlignArray([Ljava/lang/String;)V
.end method

.method public abstract setTextVAlignArray(ILjava/lang/String;)V
.end method

.method public abstract setTextVAlignArray([Ljava/lang/String;)V
.end method

.method public abstract setUIObjArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setUIObjArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setVScrollArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setVScrollArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setVTEditArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setVTEditArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setValArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setValArray([Ljava/math/BigInteger;)V
.end method

.method public abstract setValidIdsArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setValidIdsArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setVisibleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setVisibleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setWidthMinArray(ILjava/math/BigInteger;)V
.end method

.method public abstract setWidthMinArray([Ljava/math/BigInteger;)V
.end method

.method public abstract sizeOfAccel2Array()I
.end method

.method public abstract sizeOfAccelArray()I
.end method

.method public abstract sizeOfAnchorArray()I
.end method

.method public abstract sizeOfAutoFillArray()I
.end method

.method public abstract sizeOfAutoLineArray()I
.end method

.method public abstract sizeOfAutoPictArray()I
.end method

.method public abstract sizeOfAutoScaleArray()I
.end method

.method public abstract sizeOfCFArray()I
.end method

.method public abstract sizeOfCameraArray()I
.end method

.method public abstract sizeOfCancelArray()I
.end method

.method public abstract sizeOfCheckedArray()I
.end method

.method public abstract sizeOfColHiddenArray()I
.end method

.method public abstract sizeOfColoredArray()I
.end method

.method public abstract sizeOfColumnArray()I
.end method

.method public abstract sizeOfDDEArray()I
.end method

.method public abstract sizeOfDefaultArray()I
.end method

.method public abstract sizeOfDefaultSizeArray()I
.end method

.method public abstract sizeOfDisabledArray()I
.end method

.method public abstract sizeOfDismissArray()I
.end method

.method public abstract sizeOfDropLinesArray()I
.end method

.method public abstract sizeOfDropStyleArray()I
.end method

.method public abstract sizeOfDxArray()I
.end method

.method public abstract sizeOfFirstButtonArray()I
.end method

.method public abstract sizeOfFmlaGroupArray()I
.end method

.method public abstract sizeOfFmlaLinkArray()I
.end method

.method public abstract sizeOfFmlaMacroArray()I
.end method

.method public abstract sizeOfFmlaPictArray()I
.end method

.method public abstract sizeOfFmlaRangeArray()I
.end method

.method public abstract sizeOfFmlaTxbxArray()I
.end method

.method public abstract sizeOfHelpArray()I
.end method

.method public abstract sizeOfHorizArray()I
.end method

.method public abstract sizeOfIncArray()I
.end method

.method public abstract sizeOfJustLastXArray()I
.end method

.method public abstract sizeOfLCTArray()I
.end method

.method public abstract sizeOfListItemArray()I
.end method

.method public abstract sizeOfLockTextArray()I
.end method

.method public abstract sizeOfLockedArray()I
.end method

.method public abstract sizeOfMapOCXArray()I
.end method

.method public abstract sizeOfMaxArray()I
.end method

.method public abstract sizeOfMinArray()I
.end method

.method public abstract sizeOfMoveWithCellsArray()I
.end method

.method public abstract sizeOfMultiLineArray()I
.end method

.method public abstract sizeOfMultiSelArray()I
.end method

.method public abstract sizeOfNoThreeD2Array()I
.end method

.method public abstract sizeOfNoThreeDArray()I
.end method

.method public abstract sizeOfPageArray()I
.end method

.method public abstract sizeOfPrintObjectArray()I
.end method

.method public abstract sizeOfRecalcAlwaysArray()I
.end method

.method public abstract sizeOfRowArray()I
.end method

.method public abstract sizeOfRowHiddenArray()I
.end method

.method public abstract sizeOfScriptExtendedArray()I
.end method

.method public abstract sizeOfScriptLanguageArray()I
.end method

.method public abstract sizeOfScriptLocationArray()I
.end method

.method public abstract sizeOfScriptTextArray()I
.end method

.method public abstract sizeOfSecretEditArray()I
.end method

.method public abstract sizeOfSelArray()I
.end method

.method public abstract sizeOfSelTypeArray()I
.end method

.method public abstract sizeOfSizeWithCellsArray()I
.end method

.method public abstract sizeOfTextHAlignArray()I
.end method

.method public abstract sizeOfTextVAlignArray()I
.end method

.method public abstract sizeOfUIObjArray()I
.end method

.method public abstract sizeOfVScrollArray()I
.end method

.method public abstract sizeOfVTEditArray()I
.end method

.method public abstract sizeOfValArray()I
.end method

.method public abstract sizeOfValidIdsArray()I
.end method

.method public abstract sizeOfVisibleArray()I
.end method

.method public abstract sizeOfWidthMinArray()I
.end method

.method public abstract xgetAccel2Array(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetAccel2Array()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetAccel2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetAccelArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetAccelArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetAccelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetAnchorArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetAnchorArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetAutoFillArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetAutoFillArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetAutoFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetAutoLineArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetAutoLineArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetAutoLineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetAutoPictArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetAutoPictArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetAutoPictList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetAutoScaleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetAutoScaleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetAutoScaleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCFArray(I)Lcom/microsoft/schemas/office/excel/STCF;
.end method

.method public abstract xgetCFArray()[Lcom/microsoft/schemas/office/excel/STCF;
.end method

.method public abstract xgetCFList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/excel/STCF;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCameraArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetCameraArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetCameraList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCancelArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetCancelArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetCancelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCheckedArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetCheckedArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetCheckedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetColHiddenArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetColHiddenArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetColHiddenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetColoredArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetColoredArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetColoredList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetColumnArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetColumnArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetColumnList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDDEArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetDDEArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetDDEList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDefaultArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetDefaultArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetDefaultList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDefaultSizeArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetDefaultSizeArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetDefaultSizeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDisabledArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetDisabledArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetDisabledList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDismissArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetDismissArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetDismissList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDropLinesArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDropLinesArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDropLinesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDropStyleArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDropStyleArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDropStyleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDxArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDxArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetFirstButtonArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetFirstButtonArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetFirstButtonList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetFmlaGroupArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaGroupArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaGroupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetFmlaLinkArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaLinkArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaLinkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetFmlaMacroArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaMacroArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaMacroList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetFmlaPictArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaPictArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaPictList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetFmlaRangeArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaRangeArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaRangeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetFmlaTxbxArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaTxbxArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFmlaTxbxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetHelpArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetHelpArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetHelpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetHorizArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetHorizArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetHorizList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetIncArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetIncArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetIncList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetJustLastXArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetJustLastXArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetJustLastXList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetLCTArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLCTArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLCTList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetListItemArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetListItemArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetListItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetLockTextArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetLockTextArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetLockTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetLockedArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetLockedArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetLockedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMapOCXArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetMapOCXArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetMapOCXList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMaxArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetMaxArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetMaxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMinArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetMinArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetMinList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMoveWithCellsArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetMoveWithCellsArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetMoveWithCellsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMultiLineArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetMultiLineArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetMultiLineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMultiSelArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetMultiSelArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetMultiSelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetNoThreeD2Array(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetNoThreeD2Array()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetNoThreeD2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetNoThreeDArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetNoThreeDArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetNoThreeDList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetObjectType()Lcom/microsoft/schemas/office/excel/STObjectType;
.end method

.method public abstract xgetPageArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetPageArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetPageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetPrintObjectArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetPrintObjectArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetPrintObjectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetRecalcAlwaysArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetRecalcAlwaysArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetRecalcAlwaysList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetRowArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetRowArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetRowHiddenArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetRowHiddenArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetRowHiddenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetRowList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetScriptExtendedArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetScriptExtendedArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetScriptExtendedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetScriptLanguageArray(I)Lorg/apache/xmlbeans/XmlNonNegativeInteger;
.end method

.method public abstract xgetScriptLanguageArray()[Lorg/apache/xmlbeans/XmlNonNegativeInteger;
.end method

.method public abstract xgetScriptLanguageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlNonNegativeInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetScriptLocationArray(I)Lorg/apache/xmlbeans/XmlNonNegativeInteger;
.end method

.method public abstract xgetScriptLocationArray()[Lorg/apache/xmlbeans/XmlNonNegativeInteger;
.end method

.method public abstract xgetScriptLocationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlNonNegativeInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetScriptTextArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetScriptTextArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetScriptTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetSecretEditArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetSecretEditArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetSecretEditList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetSelArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetSelArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetSelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetSelTypeArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSelTypeArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSelTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetSizeWithCellsArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetSizeWithCellsArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetSizeWithCellsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetTextHAlignArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTextHAlignArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTextHAlignList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetTextVAlignArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTextVAlignArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTextVAlignList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUIObjArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetUIObjArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetUIObjList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetVScrollArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetVScrollArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetVScrollList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetVTEditArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetVTEditArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetVTEditList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetValArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetValArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetValList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetValidIdsArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetValidIdsArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetValidIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetVisibleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetVisibleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetVisibleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetWidthMinArray(I)Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetWidthMinArray()[Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetWidthMinList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetAccel2Array(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetAccel2Array([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetAccelArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetAccelArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetAnchorArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetAnchorArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetAutoFillArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetAutoFillArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetAutoLineArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetAutoLineArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetAutoPictArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetAutoPictArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetAutoScaleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetAutoScaleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetCFArray(ILcom/microsoft/schemas/office/excel/STCF;)V
.end method

.method public abstract xsetCFArray([Lcom/microsoft/schemas/office/excel/STCF;)V
.end method

.method public abstract xsetCameraArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetCameraArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetCancelArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetCancelArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetCheckedArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetCheckedArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetColHiddenArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetColHiddenArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetColoredArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetColoredArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetColumnArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetColumnArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDDEArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetDDEArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetDefaultArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetDefaultArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetDefaultSizeArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetDefaultSizeArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetDisabledArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetDisabledArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetDismissArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetDismissArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetDropLinesArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDropLinesArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDropStyleArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDropStyleArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDxArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDxArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetFirstButtonArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetFirstButtonArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetFmlaGroupArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaGroupArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaLinkArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaLinkArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaMacroArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaMacroArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaPictArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaPictArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaRangeArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaRangeArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaTxbxArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFmlaTxbxArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHelpArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetHelpArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetHorizArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetHorizArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetIncArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetIncArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetJustLastXArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetJustLastXArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetLCTArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLCTArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetListItemArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetListItemArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLockTextArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetLockTextArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetLockedArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetLockedArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetMapOCXArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetMapOCXArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetMaxArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetMaxArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetMinArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetMinArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetMoveWithCellsArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetMoveWithCellsArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetMultiLineArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetMultiLineArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetMultiSelArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetMultiSelArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNoThreeD2Array(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetNoThreeD2Array([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetNoThreeDArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetNoThreeDArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetObjectType(Lcom/microsoft/schemas/office/excel/STObjectType;)V
.end method

.method public abstract xsetPageArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetPageArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetPrintObjectArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetPrintObjectArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetRecalcAlwaysArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetRecalcAlwaysArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetRowArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetRowArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetRowHiddenArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetRowHiddenArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetScriptExtendedArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetScriptExtendedArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetScriptLanguageArray(ILorg/apache/xmlbeans/XmlNonNegativeInteger;)V
.end method

.method public abstract xsetScriptLanguageArray([Lorg/apache/xmlbeans/XmlNonNegativeInteger;)V
.end method

.method public abstract xsetScriptLocationArray(ILorg/apache/xmlbeans/XmlNonNegativeInteger;)V
.end method

.method public abstract xsetScriptLocationArray([Lorg/apache/xmlbeans/XmlNonNegativeInteger;)V
.end method

.method public abstract xsetScriptTextArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetScriptTextArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSecretEditArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetSecretEditArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetSelArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetSelArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetSelTypeArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSelTypeArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSizeWithCellsArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetSizeWithCellsArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetTextHAlignArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTextHAlignArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTextVAlignArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTextVAlignArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetUIObjArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetUIObjArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetVScrollArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetVScrollArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetVTEditArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetVTEditArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetValArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetValArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetValidIdsArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetValidIdsArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetVisibleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetVisibleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetWidthMinArray(ILorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetWidthMinArray([Lorg/apache/xmlbeans/XmlInteger;)V
.end method
