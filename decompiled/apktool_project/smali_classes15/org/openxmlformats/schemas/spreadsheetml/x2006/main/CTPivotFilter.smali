.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFilter;",
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

    const-string v2, "ctpivotfilter22b9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFilter;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFilter;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEvalOrder()I
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFld()J
.end method

.method public abstract getIMeasureFld()J
.end method

.method public abstract getIMeasureHier()J
.end method

.method public abstract getId()J
.end method

.method public abstract getMpFld()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getStringValue1()Ljava/lang/String;
.end method

.method public abstract getStringValue2()Ljava/lang/String;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotFilterType$Enum;
.end method

.method public abstract isSetDescription()Z
.end method

.method public abstract isSetEvalOrder()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetIMeasureFld()Z
.end method

.method public abstract isSetIMeasureHier()Z
.end method

.method public abstract isSetMpFld()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetStringValue1()Z
.end method

.method public abstract isSetStringValue2()Z
.end method

.method public abstract setAutoFilter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setEvalOrder(I)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFld(J)V
.end method

.method public abstract setIMeasureFld(J)V
.end method

.method public abstract setIMeasureHier(J)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setMpFld(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setStringValue1(Ljava/lang/String;)V
.end method

.method public abstract setStringValue2(Ljava/lang/String;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotFilterType$Enum;)V
.end method

.method public abstract unsetDescription()V
.end method

.method public abstract unsetEvalOrder()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetIMeasureFld()V
.end method

.method public abstract unsetIMeasureHier()V
.end method

.method public abstract unsetMpFld()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetStringValue1()V
.end method

.method public abstract unsetStringValue2()V
.end method

.method public abstract xgetDescription()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetEvalOrder()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetFld()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetIMeasureFld()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetIMeasureHier()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMpFld()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetStringValue1()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetStringValue2()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotFilterType;
.end method

.method public abstract xsetDescription(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetEvalOrder(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetFld(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetIMeasureFld(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetIMeasureHier(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMpFld(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetStringValue1(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetStringValue2(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotFilterType;)V
.end method
