.class public interface abstract Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;",
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

    const-string v2, "unsignedpropertiestype49d6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewUnsignedDataObjectProperties()Lorg/etsi/uri/x01903/v13/UnsignedDataObjectPropertiesType;
.end method

.method public abstract addNewUnsignedSignatureProperties()Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getUnsignedDataObjectProperties()Lorg/etsi/uri/x01903/v13/UnsignedDataObjectPropertiesType;
.end method

.method public abstract getUnsignedSignatureProperties()Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetUnsignedDataObjectProperties()Z
.end method

.method public abstract isSetUnsignedSignatureProperties()Z
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setUnsignedDataObjectProperties(Lorg/etsi/uri/x01903/v13/UnsignedDataObjectPropertiesType;)V
.end method

.method public abstract setUnsignedSignatureProperties(Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;)V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetUnsignedDataObjectProperties()V
.end method

.method public abstract unsetUnsignedSignatureProperties()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method
