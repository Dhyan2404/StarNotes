.class public interface abstract Lorg/etsi/uri/x01903/v13/GenericTimeStampType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/GenericTimeStampType;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "generictimestamptypecdadtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/GenericTimeStampType;->Factory:Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/GenericTimeStampType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCanonicalizationMethod()Lorg/w3/x2000/x09/xmldsig/CanonicalizationMethodType;
.end method

.method public abstract addNewEncapsulatedTimeStamp()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
.end method

.method public abstract addNewInclude()Lorg/etsi/uri/x01903/v13/IncludeType;
.end method

.method public abstract addNewReferenceInfo()Lorg/etsi/uri/x01903/v13/ReferenceInfoType;
.end method

.method public abstract addNewXMLTimeStamp()Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getCanonicalizationMethod()Lorg/w3/x2000/x09/xmldsig/CanonicalizationMethodType;
.end method

.method public abstract getEncapsulatedTimeStampArray(I)Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
.end method

.method public abstract getEncapsulatedTimeStampArray()[Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
.end method

.method public abstract getEncapsulatedTimeStampList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIncludeArray(I)Lorg/etsi/uri/x01903/v13/IncludeType;
.end method

.method public abstract getIncludeArray()[Lorg/etsi/uri/x01903/v13/IncludeType;
.end method

.method public abstract getIncludeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/IncludeType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReferenceInfoArray(I)Lorg/etsi/uri/x01903/v13/ReferenceInfoType;
.end method

.method public abstract getReferenceInfoArray()[Lorg/etsi/uri/x01903/v13/ReferenceInfoType;
.end method

.method public abstract getReferenceInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/ReferenceInfoType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getXMLTimeStampArray(I)Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getXMLTimeStampArray()[Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getXMLTimeStampList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/AnyType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewEncapsulatedTimeStamp(I)Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
.end method

.method public abstract insertNewInclude(I)Lorg/etsi/uri/x01903/v13/IncludeType;
.end method

.method public abstract insertNewReferenceInfo(I)Lorg/etsi/uri/x01903/v13/ReferenceInfoType;
.end method

.method public abstract insertNewXMLTimeStamp(I)Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract isSetCanonicalizationMethod()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract removeEncapsulatedTimeStamp(I)V
.end method

.method public abstract removeInclude(I)V
.end method

.method public abstract removeReferenceInfo(I)V
.end method

.method public abstract removeXMLTimeStamp(I)V
.end method

.method public abstract setCanonicalizationMethod(Lorg/w3/x2000/x09/xmldsig/CanonicalizationMethodType;)V
.end method

.method public abstract setEncapsulatedTimeStampArray(ILorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;)V
.end method

.method public abstract setEncapsulatedTimeStampArray([Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setIncludeArray(ILorg/etsi/uri/x01903/v13/IncludeType;)V
.end method

.method public abstract setIncludeArray([Lorg/etsi/uri/x01903/v13/IncludeType;)V
.end method

.method public abstract setReferenceInfoArray(ILorg/etsi/uri/x01903/v13/ReferenceInfoType;)V
.end method

.method public abstract setReferenceInfoArray([Lorg/etsi/uri/x01903/v13/ReferenceInfoType;)V
.end method

.method public abstract setXMLTimeStampArray(ILorg/etsi/uri/x01903/v13/AnyType;)V
.end method

.method public abstract setXMLTimeStampArray([Lorg/etsi/uri/x01903/v13/AnyType;)V
.end method

.method public abstract sizeOfEncapsulatedTimeStampArray()I
.end method

.method public abstract sizeOfIncludeArray()I
.end method

.method public abstract sizeOfReferenceInfoArray()I
.end method

.method public abstract sizeOfXMLTimeStampArray()I
.end method

.method public abstract unsetCanonicalizationMethod()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method
