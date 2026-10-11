.class public interface abstract Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;",
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

    const-string v2, "signeddataobjectpropertiestype19a6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAllDataObjectsTimeStamp()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract addNewCommitmentTypeIndication()Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;
.end method

.method public abstract addNewDataObjectFormat()Lorg/etsi/uri/x01903/v13/DataObjectFormatType;
.end method

.method public abstract addNewIndividualDataObjectsTimeStamp()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getAllDataObjectsTimeStampArray(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getAllDataObjectsTimeStampArray()[Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getAllDataObjectsTimeStampList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCommitmentTypeIndicationArray(I)Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;
.end method

.method public abstract getCommitmentTypeIndicationArray()[Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;
.end method

.method public abstract getCommitmentTypeIndicationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataObjectFormatArray(I)Lorg/etsi/uri/x01903/v13/DataObjectFormatType;
.end method

.method public abstract getDataObjectFormatArray()[Lorg/etsi/uri/x01903/v13/DataObjectFormatType;
.end method

.method public abstract getDataObjectFormatList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/DataObjectFormatType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIndividualDataObjectsTimeStampArray(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getIndividualDataObjectsTimeStampArray()[Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getIndividualDataObjectsTimeStampList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAllDataObjectsTimeStamp(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract insertNewCommitmentTypeIndication(I)Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;
.end method

.method public abstract insertNewDataObjectFormat(I)Lorg/etsi/uri/x01903/v13/DataObjectFormatType;
.end method

.method public abstract insertNewIndividualDataObjectsTimeStamp(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract removeAllDataObjectsTimeStamp(I)V
.end method

.method public abstract removeCommitmentTypeIndication(I)V
.end method

.method public abstract removeDataObjectFormat(I)V
.end method

.method public abstract removeIndividualDataObjectsTimeStamp(I)V
.end method

.method public abstract setAllDataObjectsTimeStampArray(ILorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract setAllDataObjectsTimeStampArray([Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract setCommitmentTypeIndicationArray(ILorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;)V
.end method

.method public abstract setCommitmentTypeIndicationArray([Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;)V
.end method

.method public abstract setDataObjectFormatArray(ILorg/etsi/uri/x01903/v13/DataObjectFormatType;)V
.end method

.method public abstract setDataObjectFormatArray([Lorg/etsi/uri/x01903/v13/DataObjectFormatType;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setIndividualDataObjectsTimeStampArray(ILorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract setIndividualDataObjectsTimeStampArray([Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract sizeOfAllDataObjectsTimeStampArray()I
.end method

.method public abstract sizeOfCommitmentTypeIndicationArray()I
.end method

.method public abstract sizeOfDataObjectFormatArray()I
.end method

.method public abstract sizeOfIndividualDataObjectsTimeStampArray()I
.end method

.method public abstract unsetId()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method
