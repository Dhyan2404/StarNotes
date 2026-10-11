.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;",
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

    const-string v2, "ctrevisionconflict9c56type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionConflict;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getRId()J
.end method

.method public abstract getRa()Z
.end method

.method public abstract getSheetId()J
.end method

.method public abstract getUa()Z
.end method

.method public abstract isSetRa()Z
.end method

.method public abstract isSetSheetId()Z
.end method

.method public abstract isSetUa()Z
.end method

.method public abstract setRId(J)V
.end method

.method public abstract setRa(Z)V
.end method

.method public abstract setSheetId(J)V
.end method

.method public abstract setUa(Z)V
.end method

.method public abstract unsetRa()V
.end method

.method public abstract unsetSheetId()V
.end method

.method public abstract unsetUa()V
.end method

.method public abstract xgetRId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRa()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSheetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUa()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetRId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRa(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSheetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUa(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
