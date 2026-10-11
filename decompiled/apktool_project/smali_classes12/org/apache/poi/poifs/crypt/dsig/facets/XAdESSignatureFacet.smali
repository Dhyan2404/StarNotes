.class public Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final XADES_TYPE:Ljava/lang/String; = "http://uri.etsi.org/01903#SignedProperties"


# instance fields
.field private final dataObjectFormatMimeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->lambda$addMimeTypes$0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static importNode(Lorg/w3c/dom/Document;Lorg/apache/xmlbeans/XmlObject;)Lorg/w3c/dom/Element;
    .locals 6

    const-string v0, "Id"

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->hasNextToken()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getTextValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    const-string v3, "http://www.w3.org/2000/xmlns/"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v4, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getTextValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getTextValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :pswitch_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_0

    :pswitch_5
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlCursor;->moveXml(Lorg/apache/xmlbeans/XmlCursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_0

    :try_start_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_7
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
.end method

.method private static synthetic lambda$addMimeTypes$0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/etsi/uri/x01903/v13/DataObjectFormatType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/etsi/uri/x01903/v13/DataObjectFormatType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/etsi/uri/x01903/v13/DataObjectFormatType;->setObjectReference(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lorg/etsi/uri/x01903/v13/DataObjectFormatType;->setMimeType(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setCertID(Lorg/etsi/uri/x01903/v13/CertIDType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;ZLjava/security/cert/X509Certificate;)V
    .locals 3

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/CertIDType;->addNewIssuerSerial()Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;

    move-result-object v0

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, ","

    const-string v2, ", "

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-interface {v0, p2}, Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;->setX509IssuerName(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;->setX509SerialNumber(Ljava/math/BigInteger;)V

    :try_start_0
    invoke-virtual {p3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/CertIDType;->addNewCertDigest()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "certificate encoding error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;->addNewDigestMethod()Lorg/w3/x2000/x09/xmldsig/DigestMethodType;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3/x2000/x09/xmldsig/DigestMethodType;->setAlgorithm(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;->setDigestValue([B)V

    return-void
.end method


# virtual methods
.method public addCertificate(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->addNewSigningCertificate()Lorg/etsi/uri/x01903/v13/CertIDListType;

    move-result-object p2

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/CertIDListType;->addNewCert()Lorg/etsi/uri/x01903/v13/CertIDType;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isXadesIssuerNameNoReverseOrder()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-static {p2, p0, v0, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setCertID(Lorg/etsi/uri/x01903/v13/CertIDType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;ZLjava/security/cert/X509Certificate;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no signing certificate chain available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addCommitmentType(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedPropertiesType;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getCommitmentType()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignedPropertiesType;->isSetSignedDataObjectProperties()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignedPropertiesType;->getSignedDataObjectProperties()Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignedPropertiesType;->addNewSignedDataObjectProperties()Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;->addNewCommitmentTypeIndication()Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;

    move-result-object p2

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;->addNewCommitmentTypeId()Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;

    move-result-object v0

    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;->addNewIdentifier()Lorg/etsi/uri/x01903/v13/IdentifierType;

    move-result-object v1

    const-string v2, "http://uri.etsi.org/01903/v1.2.2#ProofOfOrigin"

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getCommitmentType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;->setDescription(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;->addNewAllSignedDataObjects()Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/CommitmentTypeIndicationType;->addNewCommitmentTypeQualifiers()Lorg/etsi/uri/x01903/v13/CommitmentTypeQualifiersListType;

    move-result-object p0

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/CommitmentTypeQualifiersListType;->addNewCommitmentTypeQualifier()Lorg/etsi/uri/x01903/v13/AnyType;

    move-result-object p0

    sget-object p2, Lorg/apache/xmlbeans/XmlString;->Factory:Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;->newValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_3
    return-void
.end method

.method public addMimeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMimeTypes(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedPropertiesType;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignedPropertiesType;->addNewSignedDataObjectProperties()Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;

    move-result-object p1

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/SignedDataObjectPropertiesType;->getDataObjectFormatList()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    new-instance p2, Lcom/sunia/HTREnginev2/xco;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/xco;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public addPolicy(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignaturePolicyService()Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isXadesSignaturePolicyImplied()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->addNewSignaturePolicyIdentifier()Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;

    move-result-object p0

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;->addNewSignaturePolicyImplied()Lorg/apache/xmlbeans/XmlObject;

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->addNewSignaturePolicyIdentifier()Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;

    move-result-object p2

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;->addNewSignaturePolicyId()Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;

    move-result-object p2

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;->addNewSigPolicyId()Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;->getSignaturePolicyDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;->setDescription(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;->addNewIdentifier()Lorg/etsi/uri/x01903/v13/IdentifierType;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;->getSignaturePolicyIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;->getSignaturePolicyDocument()[B

    move-result-object v0

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;->addNewSigPolicyHash()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    invoke-interface {p1}, Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;->getSignaturePolicyDownloadUrl()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;->addNewSigPolicyQualifiers()Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;

    move-result-object p1

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;->addNewSigPolicyQualifier()Lorg/etsi/uri/x01903/v13/AnyType;

    move-result-object p1

    sget-object p2, Lorg/apache/xmlbeans/XmlString;->Factory:Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlString;

    invoke-interface {p2, p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public addSigningTime(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    const-string p1, "Z"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getExecutionTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xe

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->clear(I)V

    invoke-interface {p2, p1}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->setSigningTime(Ljava/util/Calendar;)V

    return-void
.end method

.method public addXadesObject(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;)Ljavax/xml/crypto/dsig/XMLObject;
    .locals 0

    invoke-static {p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->importNode(Lorg/w3c/dom/Document;Lorg/apache/xmlbeans/XmlObject;)Lorg/w3c/dom/Element;

    move-result-object p0

    new-instance p2, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {p2, p0}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2, p2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object p0

    return-object p0
.end method

.method public addXadesReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Ljavax/xml/crypto/dsig/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    const-string v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesSignatureId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "http://uri.etsi.org/01903#SignedProperties"

    invoke-static {p1, p0, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    return-object p0
.end method

.method public addXadesRole(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesRole()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->addNewSignerRole()Lorg/etsi/uri/x01903/v13/SignerRoleType;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->setSignerRole(Lorg/etsi/uri/x01903/v13/SignerRoleType;)V

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/SignerRoleType;->addNewClaimedRoles()Lorg/etsi/uri/x01903/v13/ClaimedRolesListType;

    move-result-object p1

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/ClaimedRolesListType;->addNewClaimedRole()Lorg/etsi/uri/x01903/v13/AnyType;

    move-result-object p1

    sget-object p2, Lorg/apache/xmlbeans/XmlString;->Factory:Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlString;

    invoke-interface {p2, p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public createSignedProperties(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;)Lorg/etsi/uri/x01903/v13/SignedPropertiesType;
    .locals 1

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->addNewSignedProperties()Lorg/etsi/uri/x01903/v13/SignedPropertiesType;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesSignatureId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/etsi/uri/x01903/v13/SignedPropertiesType;->setId(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/etsi/uri/x01903/v13/SignedPropertiesType;->addNewSignedSignatureProperties()Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->addSigningTime(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->addCertificate(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->addXadesRole(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->addPolicy(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->addMimeTypes(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedPropertiesType;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->addCommitmentType(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/SignedPropertiesType;)V

    return-object p2
.end method

.method public preSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "preSign"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v0

    sget-object v1, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;

    invoke-interface {v1}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesDocument;->addNewQualifyingProperties()Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->setTarget(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->createSignedProperties(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;)Lorg/etsi/uri/x01903/v13/SignedPropertiesType;

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->addXadesObject(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->addXadesReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
