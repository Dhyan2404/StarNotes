.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuple;",
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

    const-string v2, "cttuplef2e7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuple;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuple;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getFld()J
.end method

.method public abstract getHier()J
.end method

.method public abstract getItem()J
.end method

.method public abstract isSetFld()Z
.end method

.method public abstract isSetHier()Z
.end method

.method public abstract setFld(J)V
.end method

.method public abstract setHier(J)V
.end method

.method public abstract setItem(J)V
.end method

.method public abstract unsetFld()V
.end method

.method public abstract unsetHier()V
.end method

.method public abstract xgetFld()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetHier()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetItem()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetFld(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetHier(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetItem(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
