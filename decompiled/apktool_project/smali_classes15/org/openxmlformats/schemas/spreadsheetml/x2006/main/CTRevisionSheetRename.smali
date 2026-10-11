.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;",
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

    const-string v2, "ctrevisionsheetrename8a01type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionSheetRename;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getNewName()Ljava/lang/String;
.end method

.method public abstract getOldName()Ljava/lang/String;
.end method

.method public abstract getRId()J
.end method

.method public abstract getRa()Z
.end method

.method public abstract getSheetId()J
.end method

.method public abstract getUa()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetRa()Z
.end method

.method public abstract isSetUa()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setNewName(Ljava/lang/String;)V
.end method

.method public abstract setOldName(Ljava/lang/String;)V
.end method

.method public abstract setRId(J)V
.end method

.method public abstract setRa(Z)V
.end method

.method public abstract setSheetId(J)V
.end method

.method public abstract setUa(Z)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetRa()V
.end method

.method public abstract unsetUa()V
.end method

.method public abstract xgetNewName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOldName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetRId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRa()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSheetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUa()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetNewName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOldName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetRId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRa(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSheetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUa(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
