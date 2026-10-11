.class public interface abstract Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;",
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

    const-string v2, "unsignedsignaturepropertiestypecf32type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewArchiveTimeStamp()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract addNewAttrAuthoritiesCertValues()Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.end method

.method public abstract addNewAttributeCertificateRefs()Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
.end method

.method public abstract addNewAttributeRevocationRefs()Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
.end method

.method public abstract addNewAttributeRevocationValues()Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.end method

.method public abstract addNewCertificateValues()Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.end method

.method public abstract addNewCompleteCertificateRefs()Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
.end method

.method public abstract addNewCompleteRevocationRefs()Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
.end method

.method public abstract addNewCounterSignature()Lorg/etsi/uri/x01903/v13/CounterSignatureType;
.end method

.method public abstract addNewRefsOnlyTimeStamp()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract addNewRevocationValues()Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.end method

.method public abstract addNewSigAndRefsTimeStamp()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract addNewSignatureTimeStamp()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getArchiveTimeStampArray(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getArchiveTimeStampArray()[Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getArchiveTimeStampList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttrAuthoritiesCertValuesArray(I)Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.end method

.method public abstract getAttrAuthoritiesCertValuesArray()[Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.end method

.method public abstract getAttrAuthoritiesCertValuesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/CertificateValuesType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttributeCertificateRefsArray(I)Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
.end method

.method public abstract getAttributeCertificateRefsArray()[Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
.end method

.method public abstract getAttributeCertificateRefsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttributeRevocationRefsArray(I)Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
.end method

.method public abstract getAttributeRevocationRefsArray()[Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
.end method

.method public abstract getAttributeRevocationRefsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttributeRevocationValuesArray(I)Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.end method

.method public abstract getAttributeRevocationValuesArray()[Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.end method

.method public abstract getAttributeRevocationValuesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/RevocationValuesType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCertificateValuesArray(I)Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.end method

.method public abstract getCertificateValuesArray()[Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.end method

.method public abstract getCertificateValuesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/CertificateValuesType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCompleteCertificateRefsArray(I)Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
.end method

.method public abstract getCompleteCertificateRefsArray()[Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
.end method

.method public abstract getCompleteCertificateRefsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCompleteRevocationRefsArray(I)Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
.end method

.method public abstract getCompleteRevocationRefsArray()[Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
.end method

.method public abstract getCompleteRevocationRefsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCounterSignatureArray(I)Lorg/etsi/uri/x01903/v13/CounterSignatureType;
.end method

.method public abstract getCounterSignatureArray()[Lorg/etsi/uri/x01903/v13/CounterSignatureType;
.end method

.method public abstract getCounterSignatureList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/CounterSignatureType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getRefsOnlyTimeStampArray(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getRefsOnlyTimeStampArray()[Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getRefsOnlyTimeStampList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRevocationValuesArray(I)Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.end method

.method public abstract getRevocationValuesArray()[Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.end method

.method public abstract getRevocationValuesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/RevocationValuesType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSigAndRefsTimeStampArray(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getSigAndRefsTimeStampArray()[Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getSigAndRefsTimeStampList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSignatureTimeStampArray(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getSignatureTimeStampArray()[Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract getSignatureTimeStampList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewArchiveTimeStamp(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract insertNewAttrAuthoritiesCertValues(I)Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.end method

.method public abstract insertNewAttributeCertificateRefs(I)Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
.end method

.method public abstract insertNewAttributeRevocationRefs(I)Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
.end method

.method public abstract insertNewAttributeRevocationValues(I)Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.end method

.method public abstract insertNewCertificateValues(I)Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.end method

.method public abstract insertNewCompleteCertificateRefs(I)Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
.end method

.method public abstract insertNewCompleteRevocationRefs(I)Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
.end method

.method public abstract insertNewCounterSignature(I)Lorg/etsi/uri/x01903/v13/CounterSignatureType;
.end method

.method public abstract insertNewRefsOnlyTimeStamp(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract insertNewRevocationValues(I)Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.end method

.method public abstract insertNewSigAndRefsTimeStamp(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract insertNewSignatureTimeStamp(I)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract removeArchiveTimeStamp(I)V
.end method

.method public abstract removeAttrAuthoritiesCertValues(I)V
.end method

.method public abstract removeAttributeCertificateRefs(I)V
.end method

.method public abstract removeAttributeRevocationRefs(I)V
.end method

.method public abstract removeAttributeRevocationValues(I)V
.end method

.method public abstract removeCertificateValues(I)V
.end method

.method public abstract removeCompleteCertificateRefs(I)V
.end method

.method public abstract removeCompleteRevocationRefs(I)V
.end method

.method public abstract removeCounterSignature(I)V
.end method

.method public abstract removeRefsOnlyTimeStamp(I)V
.end method

.method public abstract removeRevocationValues(I)V
.end method

.method public abstract removeSigAndRefsTimeStamp(I)V
.end method

.method public abstract removeSignatureTimeStamp(I)V
.end method

.method public abstract setArchiveTimeStampArray(ILorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract setArchiveTimeStampArray([Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract setAttrAuthoritiesCertValuesArray(ILorg/etsi/uri/x01903/v13/CertificateValuesType;)V
.end method

.method public abstract setAttrAuthoritiesCertValuesArray([Lorg/etsi/uri/x01903/v13/CertificateValuesType;)V
.end method

.method public abstract setAttributeCertificateRefsArray(ILorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;)V
.end method

.method public abstract setAttributeCertificateRefsArray([Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;)V
.end method

.method public abstract setAttributeRevocationRefsArray(ILorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;)V
.end method

.method public abstract setAttributeRevocationRefsArray([Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;)V
.end method

.method public abstract setAttributeRevocationValuesArray(ILorg/etsi/uri/x01903/v13/RevocationValuesType;)V
.end method

.method public abstract setAttributeRevocationValuesArray([Lorg/etsi/uri/x01903/v13/RevocationValuesType;)V
.end method

.method public abstract setCertificateValuesArray(ILorg/etsi/uri/x01903/v13/CertificateValuesType;)V
.end method

.method public abstract setCertificateValuesArray([Lorg/etsi/uri/x01903/v13/CertificateValuesType;)V
.end method

.method public abstract setCompleteCertificateRefsArray(ILorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;)V
.end method

.method public abstract setCompleteCertificateRefsArray([Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;)V
.end method

.method public abstract setCompleteRevocationRefsArray(ILorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;)V
.end method

.method public abstract setCompleteRevocationRefsArray([Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;)V
.end method

.method public abstract setCounterSignatureArray(ILorg/etsi/uri/x01903/v13/CounterSignatureType;)V
.end method

.method public abstract setCounterSignatureArray([Lorg/etsi/uri/x01903/v13/CounterSignatureType;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setRefsOnlyTimeStampArray(ILorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract setRefsOnlyTimeStampArray([Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract setRevocationValuesArray(ILorg/etsi/uri/x01903/v13/RevocationValuesType;)V
.end method

.method public abstract setRevocationValuesArray([Lorg/etsi/uri/x01903/v13/RevocationValuesType;)V
.end method

.method public abstract setSigAndRefsTimeStampArray(ILorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract setSigAndRefsTimeStampArray([Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract setSignatureTimeStampArray(ILorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract setSignatureTimeStampArray([Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;)V
.end method

.method public abstract sizeOfArchiveTimeStampArray()I
.end method

.method public abstract sizeOfAttrAuthoritiesCertValuesArray()I
.end method

.method public abstract sizeOfAttributeCertificateRefsArray()I
.end method

.method public abstract sizeOfAttributeRevocationRefsArray()I
.end method

.method public abstract sizeOfAttributeRevocationValuesArray()I
.end method

.method public abstract sizeOfCertificateValuesArray()I
.end method

.method public abstract sizeOfCompleteCertificateRefsArray()I
.end method

.method public abstract sizeOfCompleteRevocationRefsArray()I
.end method

.method public abstract sizeOfCounterSignatureArray()I
.end method

.method public abstract sizeOfRefsOnlyTimeStampArray()I
.end method

.method public abstract sizeOfRevocationValuesArray()I
.end method

.method public abstract sizeOfSigAndRefsTimeStampArray()I
.end method

.method public abstract sizeOfSignatureTimeStampArray()I
.end method

.method public abstract unsetId()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method
