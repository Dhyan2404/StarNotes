.class public interface abstract Lorg/etsi/uri/x01903/v13/DataObjectFormatType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/DataObjectFormatType;",
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

    const-string v2, "dataobjectformattype44eetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/DataObjectFormatType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/DataObjectFormatType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewObjectIdentifier()Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getObjectIdentifier()Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
.end method

.method public abstract getObjectReference()Ljava/lang/String;
.end method

.method public abstract isSetDescription()Z
.end method

.method public abstract isSetEncoding()Z
.end method

.method public abstract isSetMimeType()Z
.end method

.method public abstract isSetObjectIdentifier()Z
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
.end method

.method public abstract setMimeType(Ljava/lang/String;)V
.end method

.method public abstract setObjectIdentifier(Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;)V
.end method

.method public abstract setObjectReference(Ljava/lang/String;)V
.end method

.method public abstract unsetDescription()V
.end method

.method public abstract unsetEncoding()V
.end method

.method public abstract unsetMimeType()V
.end method

.method public abstract unsetObjectIdentifier()V
.end method

.method public abstract xgetDescription()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetEncoding()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetMimeType()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetObjectReference()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetDescription(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetEncoding(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetMimeType(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetObjectReference(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
