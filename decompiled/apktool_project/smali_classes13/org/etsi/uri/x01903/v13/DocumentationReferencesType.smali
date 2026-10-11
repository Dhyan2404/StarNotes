.class public interface abstract Lorg/etsi/uri/x01903/v13/DocumentationReferencesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/DocumentationReferencesType;",
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

    const-string v2, "documentationreferencestype4bbetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/DocumentationReferencesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/DocumentationReferencesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addDocumentationReference(Ljava/lang/String;)V
.end method

.method public abstract addNewDocumentationReference()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract getDocumentationReferenceArray(I)Ljava/lang/String;
.end method

.method public abstract getDocumentationReferenceArray()[Ljava/lang/String;
.end method

.method public abstract getDocumentationReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertDocumentationReference(ILjava/lang/String;)V
.end method

.method public abstract insertNewDocumentationReference(I)Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract removeDocumentationReference(I)V
.end method

.method public abstract setDocumentationReferenceArray(ILjava/lang/String;)V
.end method

.method public abstract setDocumentationReferenceArray([Ljava/lang/String;)V
.end method

.method public abstract sizeOfDocumentationReferenceArray()I
.end method

.method public abstract xgetDocumentationReferenceArray(I)Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetDocumentationReferenceArray()[Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetDocumentationReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlAnyURI;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetDocumentationReferenceArray(ILorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetDocumentationReferenceArray([Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
