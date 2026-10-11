.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTable;",
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

    const-string v2, "ctquerytableddeftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTable;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTable;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewQueryTableRefresh()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableRefresh;
.end method

.method public abstract getAdjustColumnWidth()Z
.end method

.method public abstract getApplyAlignmentFormats()Z
.end method

.method public abstract getApplyBorderFormats()Z
.end method

.method public abstract getApplyFontFormats()Z
.end method

.method public abstract getApplyNumberFormats()Z
.end method

.method public abstract getApplyPatternFormats()Z
.end method

.method public abstract getApplyWidthHeightFormats()Z
.end method

.method public abstract getAutoFormatId()J
.end method

.method public abstract getBackgroundRefresh()Z
.end method

.method public abstract getConnectionId()J
.end method

.method public abstract getDisableEdit()Z
.end method

.method public abstract getDisableRefresh()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFillFormulas()Z
.end method

.method public abstract getFirstBackgroundRefresh()Z
.end method

.method public abstract getGrowShrinkType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGrowShrinkType$Enum;
.end method

.method public abstract getHeaders()Z
.end method

.method public abstract getIntermediate()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPreserveFormatting()Z
.end method

.method public abstract getQueryTableRefresh()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableRefresh;
.end method

.method public abstract getRefreshOnLoad()Z
.end method

.method public abstract getRemoveDataOnSave()Z
.end method

.method public abstract getRowNumbers()Z
.end method

.method public abstract isSetAdjustColumnWidth()Z
.end method

.method public abstract isSetApplyAlignmentFormats()Z
.end method

.method public abstract isSetApplyBorderFormats()Z
.end method

.method public abstract isSetApplyFontFormats()Z
.end method

.method public abstract isSetApplyNumberFormats()Z
.end method

.method public abstract isSetApplyPatternFormats()Z
.end method

.method public abstract isSetApplyWidthHeightFormats()Z
.end method

.method public abstract isSetAutoFormatId()Z
.end method

.method public abstract isSetBackgroundRefresh()Z
.end method

.method public abstract isSetDisableEdit()Z
.end method

.method public abstract isSetDisableRefresh()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFillFormulas()Z
.end method

.method public abstract isSetFirstBackgroundRefresh()Z
.end method

.method public abstract isSetGrowShrinkType()Z
.end method

.method public abstract isSetHeaders()Z
.end method

.method public abstract isSetIntermediate()Z
.end method

.method public abstract isSetPreserveFormatting()Z
.end method

.method public abstract isSetQueryTableRefresh()Z
.end method

.method public abstract isSetRefreshOnLoad()Z
.end method

.method public abstract isSetRemoveDataOnSave()Z
.end method

.method public abstract isSetRowNumbers()Z
.end method

.method public abstract setAdjustColumnWidth(Z)V
.end method

.method public abstract setApplyAlignmentFormats(Z)V
.end method

.method public abstract setApplyBorderFormats(Z)V
.end method

.method public abstract setApplyFontFormats(Z)V
.end method

.method public abstract setApplyNumberFormats(Z)V
.end method

.method public abstract setApplyPatternFormats(Z)V
.end method

.method public abstract setApplyWidthHeightFormats(Z)V
.end method

.method public abstract setAutoFormatId(J)V
.end method

.method public abstract setBackgroundRefresh(Z)V
.end method

.method public abstract setConnectionId(J)V
.end method

.method public abstract setDisableEdit(Z)V
.end method

.method public abstract setDisableRefresh(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFillFormulas(Z)V
.end method

.method public abstract setFirstBackgroundRefresh(Z)V
.end method

.method public abstract setGrowShrinkType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGrowShrinkType$Enum;)V
.end method

.method public abstract setHeaders(Z)V
.end method

.method public abstract setIntermediate(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPreserveFormatting(Z)V
.end method

.method public abstract setQueryTableRefresh(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableRefresh;)V
.end method

.method public abstract setRefreshOnLoad(Z)V
.end method

.method public abstract setRemoveDataOnSave(Z)V
.end method

.method public abstract setRowNumbers(Z)V
.end method

.method public abstract unsetAdjustColumnWidth()V
.end method

.method public abstract unsetApplyAlignmentFormats()V
.end method

.method public abstract unsetApplyBorderFormats()V
.end method

.method public abstract unsetApplyFontFormats()V
.end method

.method public abstract unsetApplyNumberFormats()V
.end method

.method public abstract unsetApplyPatternFormats()V
.end method

.method public abstract unsetApplyWidthHeightFormats()V
.end method

.method public abstract unsetAutoFormatId()V
.end method

.method public abstract unsetBackgroundRefresh()V
.end method

.method public abstract unsetDisableEdit()V
.end method

.method public abstract unsetDisableRefresh()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFillFormulas()V
.end method

.method public abstract unsetFirstBackgroundRefresh()V
.end method

.method public abstract unsetGrowShrinkType()V
.end method

.method public abstract unsetHeaders()V
.end method

.method public abstract unsetIntermediate()V
.end method

.method public abstract unsetPreserveFormatting()V
.end method

.method public abstract unsetQueryTableRefresh()V
.end method

.method public abstract unsetRefreshOnLoad()V
.end method

.method public abstract unsetRemoveDataOnSave()V
.end method

.method public abstract unsetRowNumbers()V
.end method

.method public abstract xgetAdjustColumnWidth()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyAlignmentFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyBorderFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyFontFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyNumberFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyPatternFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyWidthHeightFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoFormatId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetBackgroundRefresh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetConnectionId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDisableEdit()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDisableRefresh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFillFormulas()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFirstBackgroundRefresh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetGrowShrinkType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGrowShrinkType;
.end method

.method public abstract xgetHeaders()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIntermediate()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetPreserveFormatting()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRefreshOnLoad()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRemoveDataOnSave()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRowNumbers()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAdjustColumnWidth(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyAlignmentFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyBorderFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyFontFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyNumberFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyPatternFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyWidthHeightFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoFormatId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetBackgroundRefresh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetConnectionId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDisableEdit(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDisableRefresh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFillFormulas(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFirstBackgroundRefresh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetGrowShrinkType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGrowShrinkType;)V
.end method

.method public abstract xsetHeaders(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIntermediate(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetPreserveFormatting(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRefreshOnLoad(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRemoveDataOnSave(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRowNumbers(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
