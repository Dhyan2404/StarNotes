.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;",
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

    const-string v2, "ctpagefield338atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getCap()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFld()I
.end method

.method public abstract getHier()I
.end method

.method public abstract getItem()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isSetCap()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHier()Z
.end method

.method public abstract isSetItem()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract setCap(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFld(I)V
.end method

.method public abstract setHier(I)V
.end method

.method public abstract setItem(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract unsetCap()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHier()V
.end method

.method public abstract unsetItem()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract xgetCap()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetFld()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetHier()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetItem()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetCap(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetFld(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetHier(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetItem(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
