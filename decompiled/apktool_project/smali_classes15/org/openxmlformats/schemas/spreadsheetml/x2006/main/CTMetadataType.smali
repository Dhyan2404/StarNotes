.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataType;",
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

    const-string v2, "ctmetadatatype6612type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAdjust()Z
.end method

.method public abstract getAssign()Z
.end method

.method public abstract getCellMeta()Z
.end method

.method public abstract getClearAll()Z
.end method

.method public abstract getClearComments()Z
.end method

.method public abstract getClearContents()Z
.end method

.method public abstract getClearFormats()Z
.end method

.method public abstract getCoerce()Z
.end method

.method public abstract getCopy()Z
.end method

.method public abstract getDelete()Z
.end method

.method public abstract getEdit()Z
.end method

.method public abstract getGhostCol()Z
.end method

.method public abstract getGhostRow()Z
.end method

.method public abstract getMerge()Z
.end method

.method public abstract getMinSupportedVersion()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPasteAll()Z
.end method

.method public abstract getPasteBorders()Z
.end method

.method public abstract getPasteColWidths()Z
.end method

.method public abstract getPasteComments()Z
.end method

.method public abstract getPasteDataValidation()Z
.end method

.method public abstract getPasteFormats()Z
.end method

.method public abstract getPasteFormulas()Z
.end method

.method public abstract getPasteNumberFormats()Z
.end method

.method public abstract getPasteValues()Z
.end method

.method public abstract getRowColShift()Z
.end method

.method public abstract getSplitAll()Z
.end method

.method public abstract getSplitFirst()Z
.end method

.method public abstract isSetAdjust()Z
.end method

.method public abstract isSetAssign()Z
.end method

.method public abstract isSetCellMeta()Z
.end method

.method public abstract isSetClearAll()Z
.end method

.method public abstract isSetClearComments()Z
.end method

.method public abstract isSetClearContents()Z
.end method

.method public abstract isSetClearFormats()Z
.end method

.method public abstract isSetCoerce()Z
.end method

.method public abstract isSetCopy()Z
.end method

.method public abstract isSetDelete()Z
.end method

.method public abstract isSetEdit()Z
.end method

.method public abstract isSetGhostCol()Z
.end method

.method public abstract isSetGhostRow()Z
.end method

.method public abstract isSetMerge()Z
.end method

.method public abstract isSetPasteAll()Z
.end method

.method public abstract isSetPasteBorders()Z
.end method

.method public abstract isSetPasteColWidths()Z
.end method

.method public abstract isSetPasteComments()Z
.end method

.method public abstract isSetPasteDataValidation()Z
.end method

.method public abstract isSetPasteFormats()Z
.end method

.method public abstract isSetPasteFormulas()Z
.end method

.method public abstract isSetPasteNumberFormats()Z
.end method

.method public abstract isSetPasteValues()Z
.end method

.method public abstract isSetRowColShift()Z
.end method

.method public abstract isSetSplitAll()Z
.end method

.method public abstract isSetSplitFirst()Z
.end method

.method public abstract setAdjust(Z)V
.end method

.method public abstract setAssign(Z)V
.end method

.method public abstract setCellMeta(Z)V
.end method

.method public abstract setClearAll(Z)V
.end method

.method public abstract setClearComments(Z)V
.end method

.method public abstract setClearContents(Z)V
.end method

.method public abstract setClearFormats(Z)V
.end method

.method public abstract setCoerce(Z)V
.end method

.method public abstract setCopy(Z)V
.end method

.method public abstract setDelete(Z)V
.end method

.method public abstract setEdit(Z)V
.end method

.method public abstract setGhostCol(Z)V
.end method

.method public abstract setGhostRow(Z)V
.end method

.method public abstract setMerge(Z)V
.end method

.method public abstract setMinSupportedVersion(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPasteAll(Z)V
.end method

.method public abstract setPasteBorders(Z)V
.end method

.method public abstract setPasteColWidths(Z)V
.end method

.method public abstract setPasteComments(Z)V
.end method

.method public abstract setPasteDataValidation(Z)V
.end method

.method public abstract setPasteFormats(Z)V
.end method

.method public abstract setPasteFormulas(Z)V
.end method

.method public abstract setPasteNumberFormats(Z)V
.end method

.method public abstract setPasteValues(Z)V
.end method

.method public abstract setRowColShift(Z)V
.end method

.method public abstract setSplitAll(Z)V
.end method

.method public abstract setSplitFirst(Z)V
.end method

.method public abstract unsetAdjust()V
.end method

.method public abstract unsetAssign()V
.end method

.method public abstract unsetCellMeta()V
.end method

.method public abstract unsetClearAll()V
.end method

.method public abstract unsetClearComments()V
.end method

.method public abstract unsetClearContents()V
.end method

.method public abstract unsetClearFormats()V
.end method

.method public abstract unsetCoerce()V
.end method

.method public abstract unsetCopy()V
.end method

.method public abstract unsetDelete()V
.end method

.method public abstract unsetEdit()V
.end method

.method public abstract unsetGhostCol()V
.end method

.method public abstract unsetGhostRow()V
.end method

.method public abstract unsetMerge()V
.end method

.method public abstract unsetPasteAll()V
.end method

.method public abstract unsetPasteBorders()V
.end method

.method public abstract unsetPasteColWidths()V
.end method

.method public abstract unsetPasteComments()V
.end method

.method public abstract unsetPasteDataValidation()V
.end method

.method public abstract unsetPasteFormats()V
.end method

.method public abstract unsetPasteFormulas()V
.end method

.method public abstract unsetPasteNumberFormats()V
.end method

.method public abstract unsetPasteValues()V
.end method

.method public abstract unsetRowColShift()V
.end method

.method public abstract unsetSplitAll()V
.end method

.method public abstract unsetSplitFirst()V
.end method

.method public abstract xgetAdjust()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAssign()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCellMeta()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetClearAll()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetClearComments()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetClearContents()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetClearFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCoerce()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCopy()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDelete()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEdit()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetGhostCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetGhostRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMerge()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMinSupportedVersion()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetPasteAll()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPasteBorders()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPasteColWidths()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPasteComments()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPasteDataValidation()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPasteFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPasteFormulas()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPasteNumberFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPasteValues()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRowColShift()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSplitAll()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSplitFirst()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAdjust(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAssign(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCellMeta(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetClearAll(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetClearComments(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetClearContents(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetClearFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCoerce(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCopy(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDelete(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEdit(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetGhostCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetGhostRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMerge(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMinSupportedVersion(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetPasteAll(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPasteBorders(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPasteColWidths(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPasteComments(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPasteDataValidation(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPasteFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPasteFormulas(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPasteNumberFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPasteValues(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRowColShift(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSplitAll(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSplitFirst(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
