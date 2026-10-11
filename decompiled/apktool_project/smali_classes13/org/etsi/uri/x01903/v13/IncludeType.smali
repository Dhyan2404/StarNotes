.class public interface abstract Lorg/etsi/uri/x01903/v13/IncludeType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/IncludeType;",
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

    const-string v2, "includetypee104type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/IncludeType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/IncludeType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getReferencedData()Z
.end method

.method public abstract getURI()Ljava/lang/String;
.end method

.method public abstract isSetReferencedData()Z
.end method

.method public abstract setReferencedData(Z)V
.end method

.method public abstract setURI(Ljava/lang/String;)V
.end method

.method public abstract unsetReferencedData()V
.end method

.method public abstract xgetReferencedData()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetURI()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetReferencedData(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetURI(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
