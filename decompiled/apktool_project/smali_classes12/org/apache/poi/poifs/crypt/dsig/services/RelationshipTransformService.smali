.class public Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;
.super Ljavax/xml/crypto/dsig/TransformService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$POIXmlDsigProvider;,
        Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field public static final TRANSFORM_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/package/2006/RelationshipTransform"


# instance fields
.field private final sourceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/xml/crypto/dsig/TransformService;-><init>()V

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "constructor"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized registerDsigProvider()V
    .locals 3

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;

    monitor-enter v0

    :try_start_0
    const-string v1, "POIXmlDsigProvider"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$POIXmlDsigProvider;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$POIXmlDsigProvider;-><init>(Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$1;)V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "getParameterSpec"

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Ljavax/xml/crypto/XMLStructure;Ljavax/xml/crypto/XMLCryptoContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 6
    sget-object p2, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "init(parent,context)"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parent java type: {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    check-cast p1, Ljavax/xml/crypto/dom/DOMStructure;

    .line 9
    invoke-virtual {p1}, Ljavax/xml/crypto/dom/DOMStructure;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 10
    :try_start_0
    sget-object v0, Lorg/w3/x2000/x09/xmldsig/TransformDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3/x2000/x09/xmldsig/TransformDocument;

    .line 11
    invoke-interface {p1}, Lorg/w3/x2000/x09/xmldsig/TransformDocument;->getTransform()Lorg/w3/x2000/x09/xmldsig/TransformType;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/RelationshipReferenceDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlObject;->selectChildren(Ljavax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    .line 12
    array-length v0, p1

    if-nez v0, :cond_0

    .line 13
    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    const-string v0, "no RelationshipReference/@SourceId parameters present"

    invoke-interface {p2, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 14
    :cond_0
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 15
    check-cast v1, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTRelationshipReference;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTRelationshipReference;->getSourceId()Ljava/lang/String;

    move-result-object v1

    .line 16
    sget-object v2, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "sourceId: {}"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public init(Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "init(params)"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;

    .line 4
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->sourceIds:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>()V

    throw p0
.end method

.method public isFeatureSupported(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "isFeatureSupported(feature)"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public marshalParams(Ljavax/xml/crypto/XMLStructure;Ljavax/xml/crypto/XMLCryptoContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/MarshalException;
        }
    .end annotation

    sget-object p2, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    const-string v0, "marshallParams(parent,context)"

    invoke-interface {p2, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    check-cast p1, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-virtual {p1}, Ljavax/xml/crypto/dom/DOMStructure;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "mdssi:RelationshipReference"

    const-string v2, "http://schemas.openxmlformats.org/package/2006/digital-signature"

    invoke-interface {p2, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v3, "http://www.w3.org/2000/xmlns/"

    const-string v4, "xmlns:mdssi"

    invoke-interface {v1, v3, v4, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SourceId"

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transform(Ljavax/xml/crypto/Data;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/Data;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/TransformException;
        }
    .end annotation

    .line 1
    sget-object p2, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "transform(data,context)"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data java type: {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    check-cast p1, Ljavax/xml/crypto/OctetStreamData;

    .line 4
    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/xml/crypto/OctetStreamData;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "URI: {}"

    invoke-interface {p2, v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Ljavax/xml/crypto/OctetStreamData;->getOctetStream()Ljava/io/InputStream;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/ooxml/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 9
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 10
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 11
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Relationship"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    const-string v4, "Id"

    .line 14
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->sourceIds:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "TargetMode"

    .line 16
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 17
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "Internal"

    .line 18
    invoke-interface {v3, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    invoke-virtual {v0, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_2
    invoke-interface {p1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    .line 22
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 23
    :cond_4
    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result p2

    invoke-static {p2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "# Relationship elements: {}"

    invoke-interface {p0, v0, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-instance p0, Lorg/apache/jcp/xml/dsig/internal/dom/ApacheNodeSetData;

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureInput;

    invoke-direct {p2, p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {p0, p2}, Lorg/apache/jcp/xml/dsig/internal/dom/ApacheNodeSetData;-><init>(Lorg/apache/xml/security/signature/XMLSignatureInput;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljavax/xml/crypto/dsig/TransformException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/crypto/dsig/TransformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transform(Ljavax/xml/crypto/Data;Ljavax/xml/crypto/XMLCryptoContext;Ljava/io/OutputStream;)Ljavax/xml/crypto/Data;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/TransformException;
        }
    .end annotation

    .line 26
    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "transform(data,context,os)"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
