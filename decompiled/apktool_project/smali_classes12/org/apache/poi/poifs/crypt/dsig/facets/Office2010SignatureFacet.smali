.class public Lorg/apache/poi/poifs/crypt/dsig/facets/Office2010SignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    const-string p0, "http://uri.etsi.org/01903/v1.3.2#"

    const-string p1, "QualifyingProperties"

    invoke-interface {p2, p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :try_start_0
    sget-object p1, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->getUnsignedProperties()Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->addNewUnsignedProperties()Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;->getUnsignedSignatureProperties()Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;->addNewUnsignedSignatureProperties()Lorg/etsi/uri/x01903/v13/UnsignedSignaturePropertiesType;

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/MarshalException;

    invoke-direct {p1, p0}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljavax/xml/crypto/MarshalException;

    const-string p1, "no XAdES-BES extension present"

    invoke-direct {p0, p1}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
