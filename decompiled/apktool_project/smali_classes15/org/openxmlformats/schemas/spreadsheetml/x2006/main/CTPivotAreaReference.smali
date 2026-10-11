.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;",
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

    const-string v2, "ctpivotareareferencee5a5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewX()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;
.end method

.method public abstract getAvgSubtotal()Z
.end method

.method public abstract getByPosition()Z
.end method

.method public abstract getCount()J
.end method

.method public abstract getCountASubtotal()Z
.end method

.method public abstract getCountSubtotal()Z
.end method

.method public abstract getDefaultSubtotal()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getField()J
.end method

.method public abstract getMaxSubtotal()Z
.end method

.method public abstract getMinSubtotal()Z
.end method

.method public abstract getProductSubtotal()Z
.end method

.method public abstract getRelative()Z
.end method

.method public abstract getSelected()Z
.end method

.method public abstract getStdDevPSubtotal()Z
.end method

.method public abstract getStdDevSubtotal()Z
.end method

.method public abstract getSumSubtotal()Z
.end method

.method public abstract getVarPSubtotal()Z
.end method

.method public abstract getVarSubtotal()Z
.end method

.method public abstract getXArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;
.end method

.method public abstract getXArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;
.end method

.method public abstract getXList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewX(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;
.end method

.method public abstract isSetAvgSubtotal()Z
.end method

.method public abstract isSetByPosition()Z
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetCountASubtotal()Z
.end method

.method public abstract isSetCountSubtotal()Z
.end method

.method public abstract isSetDefaultSubtotal()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetField()Z
.end method

.method public abstract isSetMaxSubtotal()Z
.end method

.method public abstract isSetMinSubtotal()Z
.end method

.method public abstract isSetProductSubtotal()Z
.end method

.method public abstract isSetRelative()Z
.end method

.method public abstract isSetSelected()Z
.end method

.method public abstract isSetStdDevPSubtotal()Z
.end method

.method public abstract isSetStdDevSubtotal()Z
.end method

.method public abstract isSetSumSubtotal()Z
.end method

.method public abstract isSetVarPSubtotal()Z
.end method

.method public abstract isSetVarSubtotal()Z
.end method

.method public abstract removeX(I)V
.end method

.method public abstract setAvgSubtotal(Z)V
.end method

.method public abstract setByPosition(Z)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setCountASubtotal(Z)V
.end method

.method public abstract setCountSubtotal(Z)V
.end method

.method public abstract setDefaultSubtotal(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setField(J)V
.end method

.method public abstract setMaxSubtotal(Z)V
.end method

.method public abstract setMinSubtotal(Z)V
.end method

.method public abstract setProductSubtotal(Z)V
.end method

.method public abstract setRelative(Z)V
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract setStdDevPSubtotal(Z)V
.end method

.method public abstract setStdDevSubtotal(Z)V
.end method

.method public abstract setSumSubtotal(Z)V
.end method

.method public abstract setVarPSubtotal(Z)V
.end method

.method public abstract setVarSubtotal(Z)V
.end method

.method public abstract setXArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;)V
.end method

.method public abstract setXArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;)V
.end method

.method public abstract sizeOfXArray()I
.end method

.method public abstract unsetAvgSubtotal()V
.end method

.method public abstract unsetByPosition()V
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetCountASubtotal()V
.end method

.method public abstract unsetCountSubtotal()V
.end method

.method public abstract unsetDefaultSubtotal()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetField()V
.end method

.method public abstract unsetMaxSubtotal()V
.end method

.method public abstract unsetMinSubtotal()V
.end method

.method public abstract unsetProductSubtotal()V
.end method

.method public abstract unsetRelative()V
.end method

.method public abstract unsetSelected()V
.end method

.method public abstract unsetStdDevPSubtotal()V
.end method

.method public abstract unsetStdDevSubtotal()V
.end method

.method public abstract unsetSumSubtotal()V
.end method

.method public abstract unsetVarPSubtotal()V
.end method

.method public abstract unsetVarSubtotal()V
.end method

.method public abstract xgetAvgSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetByPosition()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCountASubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCountSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDefaultSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetField()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMaxSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMinSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetProductSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRelative()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSelected()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetStdDevPSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetStdDevSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSumSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVarPSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVarSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAvgSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetByPosition(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCountASubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCountSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDefaultSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetField(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMaxSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMinSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetProductSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRelative(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSelected(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetStdDevPSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetStdDevSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSumSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVarPSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVarSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
