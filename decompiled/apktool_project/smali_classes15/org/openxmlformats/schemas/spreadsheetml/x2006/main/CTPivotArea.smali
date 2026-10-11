.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;",
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

    const-string v2, "ctpivotarea26cetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewReferences()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReferences;
.end method

.method public abstract getAxis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;
.end method

.method public abstract getCacheIndex()Z
.end method

.method public abstract getCollapsedLevelsAreSubtotals()Z
.end method

.method public abstract getDataOnly()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getField()I
.end method

.method public abstract getFieldPosition()J
.end method

.method public abstract getGrandCol()Z
.end method

.method public abstract getGrandRow()Z
.end method

.method public abstract getLabelOnly()Z
.end method

.method public abstract getOffset()Ljava/lang/String;
.end method

.method public abstract getOutline()Z
.end method

.method public abstract getReferences()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReferences;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;
.end method

.method public abstract isSetAxis()Z
.end method

.method public abstract isSetCacheIndex()Z
.end method

.method public abstract isSetCollapsedLevelsAreSubtotals()Z
.end method

.method public abstract isSetDataOnly()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetField()Z
.end method

.method public abstract isSetFieldPosition()Z
.end method

.method public abstract isSetGrandCol()Z
.end method

.method public abstract isSetGrandRow()Z
.end method

.method public abstract isSetLabelOnly()Z
.end method

.method public abstract isSetOffset()Z
.end method

.method public abstract isSetOutline()Z
.end method

.method public abstract isSetReferences()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V
.end method

.method public abstract setCacheIndex(Z)V
.end method

.method public abstract setCollapsedLevelsAreSubtotals(Z)V
.end method

.method public abstract setDataOnly(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setField(I)V
.end method

.method public abstract setFieldPosition(J)V
.end method

.method public abstract setGrandCol(Z)V
.end method

.method public abstract setGrandRow(Z)V
.end method

.method public abstract setLabelOnly(Z)V
.end method

.method public abstract setOffset(Ljava/lang/String;)V
.end method

.method public abstract setOutline(Z)V
.end method

.method public abstract setReferences(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReferences;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;)V
.end method

.method public abstract unsetAxis()V
.end method

.method public abstract unsetCacheIndex()V
.end method

.method public abstract unsetCollapsedLevelsAreSubtotals()V
.end method

.method public abstract unsetDataOnly()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetField()V
.end method

.method public abstract unsetFieldPosition()V
.end method

.method public abstract unsetGrandCol()V
.end method

.method public abstract unsetGrandRow()V
.end method

.method public abstract unsetLabelOnly()V
.end method

.method public abstract unsetOffset()V
.end method

.method public abstract unsetOutline()V
.end method

.method public abstract unsetReferences()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetAxis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;
.end method

.method public abstract xgetCacheIndex()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCollapsedLevelsAreSubtotals()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDataOnly()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetField()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetFieldPosition()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetGrandCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetGrandRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLabelOnly()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOffset()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetOutline()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;
.end method

.method public abstract xsetAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;)V
.end method

.method public abstract xsetCacheIndex(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCollapsedLevelsAreSubtotals(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDataOnly(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetField(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetFieldPosition(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetGrandCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetGrandRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLabelOnly(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOffset(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetOutline(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;)V
.end method
