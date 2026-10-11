.class public interface abstract Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;",
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

    const-string v2, "objectidentifiertype2f56type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDocumentationReferences()Lorg/etsi/uri/x01903/v13/DocumentationReferencesType;
.end method

.method public abstract addNewIdentifier()Lorg/etsi/uri/x01903/v13/IdentifierType;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDocumentationReferences()Lorg/etsi/uri/x01903/v13/DocumentationReferencesType;
.end method

.method public abstract getIdentifier()Lorg/etsi/uri/x01903/v13/IdentifierType;
.end method

.method public abstract isSetDescription()Z
.end method

.method public abstract isSetDocumentationReferences()Z
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setDocumentationReferences(Lorg/etsi/uri/x01903/v13/DocumentationReferencesType;)V
.end method

.method public abstract setIdentifier(Lorg/etsi/uri/x01903/v13/IdentifierType;)V
.end method

.method public abstract unsetDescription()V
.end method

.method public abstract unsetDocumentationReferences()V
.end method

.method public abstract xgetDescription()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetDescription(Lorg/apache/xmlbeans/XmlString;)V
.end method
