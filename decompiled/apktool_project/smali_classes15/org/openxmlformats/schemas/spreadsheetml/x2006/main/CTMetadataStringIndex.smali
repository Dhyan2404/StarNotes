.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;",
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

    const-string v2, "ctmetadatastringindex5bf1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getS()Z
.end method

.method public abstract getX()J
.end method

.method public abstract isSetS()Z
.end method

.method public abstract setS(Z)V
.end method

.method public abstract setX(J)V
.end method

.method public abstract unsetS()V
.end method

.method public abstract xgetS()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetX()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetS(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetX(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
