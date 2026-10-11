.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyle;",
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

    const-string v2, "ctcellstyle584etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getBuiltinId()J
.end method

.method public abstract getCustomBuiltin()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getILevel()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getXfId()J
.end method

.method public abstract isSetBuiltinId()Z
.end method

.method public abstract isSetCustomBuiltin()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetILevel()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract setBuiltinId(J)V
.end method

.method public abstract setCustomBuiltin(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setILevel(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setXfId(J)V
.end method

.method public abstract unsetBuiltinId()V
.end method

.method public abstract unsetCustomBuiltin()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetILevel()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract xgetBuiltinId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCustomBuiltin()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHidden()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetILevel()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetXfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellStyleXfId;
.end method

.method public abstract xsetBuiltinId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCustomBuiltin(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHidden(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetILevel(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetXfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellStyleXfId;)V
.end method
