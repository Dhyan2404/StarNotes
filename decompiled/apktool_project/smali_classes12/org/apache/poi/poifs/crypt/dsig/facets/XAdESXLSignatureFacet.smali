.class public Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final certificateFactory:Ljava/security/cert/CertificateFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->certificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X509 JCA error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic a(Lorg/etsi/uri/x01903/v13/CertIDListType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->lambda$completeCertificateRefs$0(Lorg/etsi/uri/x01903/v13/CertIDListType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method private addCertificateValues(Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 1

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewCertificateValues()Lorg/etsi/uri/x01903/v13/CertificateValuesType;

    move-result-object p1

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p0, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/CertificateValuesType;->addNewEncapsulatedX509Certificate()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/XmlBase64Binary;->setByteArrayValue([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "certificate encoding error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private addRevocationCRL(Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V
    .locals 7

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasCRLs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;->addNewCRLRefs()Lorg/etsi/uri/x01903/v13/CRLRefsType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;->setCRLRefs(Lorg/etsi/uri/x01903/v13/CRLRefsType;)V

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getCRLs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/CRLRefsType;->addNewCRLRef()Lorg/etsi/uri/x01903/v13/CRLRefType;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->certificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v3, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {v3, p3}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Lorg/etsi/uri/x01903/v13/CRLRefType;->addNewCRLIdentifier()Lorg/etsi/uri/x01903/v13/CRLIdentifierType;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ", "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/etsi/uri/x01903/v13/CRLIdentifierType;->setIssuer(Ljava/lang/String;)V

    const-string v4, "Z"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-interface {v3, v4}, Lorg/etsi/uri/x01903/v13/CRLIdentifierType;->setIssueTime(Ljava/util/Calendar;)V

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->getCrlNumber(Ljava/security/cert/X509CRL;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/etsi/uri/x01903/v13/CRLIdentifierType;->setNumber(Ljava/math/BigInteger;)V

    invoke-interface {v1}, Lorg/etsi/uri/x01903/v13/CRLRefType;->addNewDigestAlgAndValue()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CRL parse error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-void
.end method

.method private addRevocationOCSP(Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V
    .locals 3

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasOCSPs()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;->addNewOCSPRefs()Lorg/etsi/uri/x01903/v13/OCSPRefsType;

    move-result-object p0

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getOCSPs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    :try_start_0
    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/OCSPRefsType;->addNewOCSPRef()Lorg/etsi/uri/x01903/v13/OCSPRefType;

    move-result-object v0

    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/OCSPRefType;->addNewDigestAlgAndValue()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/OCSPRefType;->addNewOCSPIdentifier()Lorg/etsi/uri/x01903/v13/OCSPIdentifierType;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    invoke-direct {v1, p3}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getResponseObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    const-string v1, "Z"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p3}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getProducedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-interface {v0, v1}, Lorg/etsi/uri/x01903/v13/OCSPIdentifierType;->setProducedAt(Ljava/util/Calendar;)V

    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/OCSPIdentifierType;->addNewResponderID()Lorg/etsi/uri/x01903/v13/ResponderIDType;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponderId()Lorg/bouncycastle/cert/ocsp/RespID;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/cert/ocsp/RespID;->toASN1Primitive()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/DERTaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p3

    invoke-interface {v0, p3}, Lorg/etsi/uri/x01903/v13/ResponderIDType;->setByKey([B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/DERTaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Lorg/etsi/uri/x01903/v13/ResponderIDType;->setByName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OCSP decoding error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-void
.end method

.method private completeCertificateRefs(Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;
    .locals 3

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewCompleteCertificateRefs()Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;

    move-result-object p0

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;->addNewCertRefs()Lorg/etsi/uri/x01903/v13/CertIDListType;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/yco;

    invoke-direct {v1, p1, p2}, Lcom/sunia/HTREnginev2/yco;-><init>(Lorg/etsi/uri/x01903/v13/CertIDListType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method private createRevocationValues(Lorg/etsi/uri/x01903/v13/RevocationValuesType;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V
    .locals 3

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasCRLs()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/RevocationValuesType;->addNewCRLValues()Lorg/etsi/uri/x01903/v13/CRLValuesType;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getCRLs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/CRLValuesType;->addNewEncapsulatedCRLValue()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/xmlbeans/XmlBase64Binary;->setByteArrayValue([B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasOCSPs()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/RevocationValuesType;->addNewOCSPValues()Lorg/etsi/uri/x01903/v13/OCSPValuesType;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getOCSPs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/OCSPValuesType;->addNewEncapsulatedOCSPValue()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/XmlBase64Binary;->setByteArrayValue([B)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createValidationData(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lorg/etsi/uri/x01903/v14/TimeStampValidationDataDocument;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    sget-object v0, Lorg/etsi/uri/x01903/v14/TimeStampValidationDataDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/etsi/uri/x01903/v14/TimeStampValidationDataDocument;

    invoke-interface {v0}, Lorg/etsi/uri/x01903/v14/TimeStampValidationDataDocument;->addNewTimeStampValidationData()Lorg/etsi/uri/x01903/v14/ValidationDataType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getX509chain()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-interface {v1}, Lorg/etsi/uri/x01903/v14/ValidationDataType;->addNewCertificateValues()Lorg/etsi/uri/x01903/v13/CertificateValuesType;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/CertificateValuesType;->addNewEncapsulatedX509Certificate()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/xmlbeans/XmlBase64Binary;->setByteArrayValue([B)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/etsi/uri/x01903/v14/ValidationDataType;->addNewRevocationValues()Lorg/etsi/uri/x01903/v13/RevocationValuesType;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createRevocationValues(Lorg/etsi/uri/x01903/v13/RevocationValuesType;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    return-object v0
.end method

.method private varargs createXAdESTimeStamp(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;[Lorg/w3c/dom/Node;)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesCanonicalizationMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->getC14nValue(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspService()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    move-result-object v0

    invoke-interface {v0, p1, p3, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;->timeStamp(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;[BLorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p2, Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/GenericTimeStampType;->addNewCanonicalizationMethod()Lorg/w3/x2000/x09/xmldsig/CanonicalizationMethodType;

    move-result-object p3

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesCanonicalizationMethod()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lorg/w3/x2000/x09/xmldsig/CanonicalizationMethodType;->setAlgorithm(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/GenericTimeStampType;->addNewEncapsulatedTimeStamp()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlBase64Binary;->setByteArrayValue([B)V

    return-object p2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error while creating a time-stamp: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getC14nValue(Ljava/util/List;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-static {p1}, Lorg/apache/xml/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lorg/apache/xml/security/c14n/Canonicalizer;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/xml/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c14n error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method private getCrlNumber(Ljava/security/cert/X509CRL;)Ljava/math/BigInteger;
    .locals 2

    sget-object p0, Lorg/bouncycastle/asn1/x509/Extension;->cRLNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I/O error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getQualProps(Lorg/w3c/dom/NodeList;)Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :try_start_0
    invoke-interface {p1, p0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    sget-object p1, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;->getQualifyingProperties()Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/MarshalException;

    invoke-direct {p1, p0}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljavax/xml/crypto/MarshalException;

    const-string p1, "no XAdES-BES extension present"

    invoke-direct {p0, p1}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$completeCertificateRefs$0(Lorg/etsi/uri/x01903/v13/CertIDListType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/security/cert/X509Certificate;)V
    .locals 1

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/CertIDListType;->addNewCert()Lorg/etsi/uri/x01903/v13/CertIDType;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setCertID(Lorg/etsi/uri/x01903/v13/CertIDType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;ZLjava/security/cert/X509Certificate;)V

    return-void
.end method


# virtual methods
.method public postSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "XAdES-X-L post sign phase"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v1

    const-string v2, "http://uri.etsi.org/01903/v1.3.2#"

    const-string v3, "QualifyingProperties"

    invoke-interface {p2, v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->getQualProps(Lorg/w3c/dom/NodeList;)Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;

    move-result-object v3

    invoke-interface {v3}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->getUnsignedProperties()Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/zco;

    invoke-direct {v5, v3}, Lcom/sunia/HTREnginev2/zco;-><init>(Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;

    invoke-interface {v4}, Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;->getUnsignedSignatureProperties()Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/sunia/HTREnginev2/ado;

    invoke-direct {v6, v4}, Lcom/sunia/HTREnginev2/ado;-><init>(Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;

    const-string v5, "http://www.w3.org/2000/09/xmldsig#"

    const-string v6, "SignatureValue"

    invoke-interface {p2, v5, v6}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getRevocationDataService()Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-direct {p0, v4, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->addCertificateValues(Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v9

    const-string v10, "creating XAdES-T time-stamp"

    invoke-interface {v9, v10}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    invoke-direct {v9}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;-><init>()V

    new-array v10, v7, [Lorg/w3c/dom/Node;

    aput-object v5, v10, v6

    invoke-direct {p0, p1, v9, v10}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createXAdESTimeStamp(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;[Lorg/w3c/dom/Node;)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    move-result-object v10

    invoke-interface {v4}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewSignatureTimeStamp()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    move-result-object v11

    invoke-interface {v11, v10}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasRevocationDataEntries()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-direct {p0, v9}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createValidationData(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lorg/etsi/uri/x01903/v14/TimeStampValidationDataDocument;

    move-result-object v9

    invoke-static {v4, v9}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eqz v8, :cond_2

    invoke-direct {p0, v4, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->completeCertificateRefs(Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)Lorg/etsi/uri/x01903/v13/CompleteCertificateRefsType;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v11

    invoke-interface {v8, v11}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;->getRevocationData(Ljava/util/List;)Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    move-result-object v8

    invoke-interface {v4}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewCompleteRevocationRefs()Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;

    move-result-object v11

    invoke-direct {p0, v11, v1, v8}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->addRevocationCRL(Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    invoke-direct {p0, v11, v1, v8}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->addRevocationOCSP(Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    invoke-interface {v4}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewRevocationValues()Lorg/etsi/uri/x01903/v13/RevocationValuesType;

    move-result-object v1

    invoke-direct {p0, v1, v8}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createRevocationValues(Lorg/etsi/uri/x01903/v13/RevocationValuesType;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "creating XAdES-X time-stamp"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/w3c/dom/Node;

    aput-object v5, v1, v6

    invoke-interface {v10}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v5

    aput-object v5, v1, v7

    const/4 v5, 0x2

    invoke-interface {v9}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v8

    aput-object v8, v1, v5

    const/4 v5, 0x3

    invoke-interface {v11}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v8

    aput-object v8, v1, v5

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createXAdESTimeStamp(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;[Lorg/w3c/dom/Node;)Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    move-result-object p0

    invoke-interface {v4}, Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;->addNewSigAndRefsTimeStamp()Lorg/etsi/uri/x01903/v13/XAdESTimeStampType;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_2
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p2, p0, v7}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string p1, "TimeStampValidationData"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    move p2, v6

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge p2, v0, :cond_3

    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v1, "xmlns"

    const-string v3, "http://uri.etsi.org/01903/v1.4.1#"

    const-string v4, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0, v4, v1, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/MarshalException;

    const-string p2, "unable to create XAdES signatrue"

    invoke-direct {p1, p2, p0}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SignatureValue is not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
