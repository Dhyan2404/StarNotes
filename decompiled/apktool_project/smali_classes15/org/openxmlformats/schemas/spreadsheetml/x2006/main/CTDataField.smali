.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;",
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

    const-string v2, "ctdatafield6f0ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getBaseField()I
.end method

.method public abstract getBaseItem()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFld()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumFmtId()J
.end method

.method public abstract getShowDataAs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;
.end method

.method public abstract getSubtotal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;
.end method

.method public abstract isSetBaseField()Z
.end method

.method public abstract isSetBaseItem()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNumFmtId()Z
.end method

.method public abstract isSetShowDataAs()Z
.end method

.method public abstract isSetSubtotal()Z
.end method

.method public abstract setBaseField(I)V
.end method

.method public abstract setBaseItem(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFld(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNumFmtId(J)V
.end method

.method public abstract setShowDataAs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;)V
.end method

.method public abstract setSubtotal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;)V
.end method

.method public abstract unsetBaseField()V
.end method

.method public abstract unsetBaseItem()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNumFmtId()V
.end method

.method public abstract unsetShowDataAs()V
.end method

.method public abstract unsetSubtotal()V
.end method

.method public abstract xgetBaseField()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetBaseItem()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetFld()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetNumFmtId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;
.end method

.method public abstract xgetShowDataAs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;
.end method

.method public abstract xgetSubtotal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;
.end method

.method public abstract xsetBaseField(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetBaseItem(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetFld(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetNumFmtId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;)V
.end method

.method public abstract xsetShowDataAs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;)V
.end method

.method public abstract xsetSubtotal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;)V
.end method
