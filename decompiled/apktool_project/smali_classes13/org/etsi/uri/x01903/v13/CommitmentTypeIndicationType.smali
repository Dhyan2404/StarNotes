.class public interface abstract Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;",
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

    const-string v2, "commitmenttypeindicationtypef179type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAllSignedDataObjects()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract addNewCommitmentTypeId()Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
.end method

.method public abstract addNewCommitmentTypeQualifiers()Lorg/etsi/uri/x01903/v13/CommitmentTypeQualifiersListType;
.end method

.method public abstract addNewObjectReference()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract addObjectReference(Ljava/lang/String;)V
.end method

.method public abstract getAllSignedDataObjects()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getCommitmentTypeId()Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
.end method

.method public abstract getCommitmentTypeQualifiers()Lorg/etsi/uri/x01903/v13/CommitmentTypeQualifiersListType;
.end method

.method public abstract getObjectReferenceArray(I)Ljava/lang/String;
.end method

.method public abstract getObjectReferenceArray()[Ljava/lang/String;
.end method

.method public abstract getObjectReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewObjectReference(I)Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract insertObjectReference(ILjava/lang/String;)V
.end method

.method public abstract isSetAllSignedDataObjects()Z
.end method

.method public abstract isSetCommitmentTypeQualifiers()Z
.end method

.method public abstract removeObjectReference(I)V
.end method

.method public abstract setAllSignedDataObjects(Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setCommitmentTypeId(Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;)V
.end method

.method public abstract setCommitmentTypeQualifiers(Lorg/etsi/uri/x01903/v13/CommitmentTypeQualifiersListType;)V
.end method

.method public abstract setObjectReferenceArray(ILjava/lang/String;)V
.end method

.method public abstract setObjectReferenceArray([Ljava/lang/String;)V
.end method

.method public abstract sizeOfObjectReferenceArray()I
.end method

.method public abstract unsetAllSignedDataObjects()V
.end method

.method public abstract unsetCommitmentTypeQualifiers()V
.end method

.method public abstract xgetObjectReferenceArray(I)Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetObjectReferenceArray()[Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetObjectReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlAnyURI;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetObjectReferenceArray(ILorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetObjectReferenceArray([Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
