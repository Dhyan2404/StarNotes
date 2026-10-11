.class public Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/ParentNode;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Document;


# static fields
.field private static final kidOK:[I

.field static final serialVersionUID:J


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field protected allowGrammarAccess:Z

.field protected changes:I

.field protected docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

.field protected docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

.field private documentNumber:I

.field transient domNormalizer:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;

.field protected encoding:Ljava/lang/String;

.field protected errorChecking:Z

.field transient fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

.field protected fDocumentURI:Ljava/lang/String;

.field transient fFreeNLCache:Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;

.field transient fXPathEvaluator:Ljava/lang/Object;

.field protected identifiers:Ljava/util/Hashtable;

.field private nodeCounter:I

.field private nodeTable:Ljava/util/Hashtable;

.field protected standalone:Z

.field protected userData:Ljava/util/Hashtable;

.field protected version:Ljava/lang/String;

.field private xml11Version:Z

.field protected xmlVersionChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0x9

    const/16 v2, 0x582

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x1ba

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;-><init>(Z)V

    if-eqz p1, :cond_0

    .line 16
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    iput-object p0, p2, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    .line 18
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :catch_0
    const-string p0, "WRONG_DOCUMENT_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    .line 19
    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->domNormalizer:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->changes:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    .line 8
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    .line 9
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->documentNumber:I

    .line 10
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->nodeCounter:I

    .line 11
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    .line 12
    iput-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    .line 13
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    return-void
.end method

.method private importNode(Lorg/w3c/dom/Node;ZZLjava/util/Hashtable;)Lorg/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    const-string v4, "NOT_SUPPORTED_ERR"

    const-string v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "2.0"

    const-string v7, "XML"

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v2, :pswitch_data_0

    .line 5
    :pswitch_0
    invoke-static {v5, v4, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    .line 7
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Notation;

    .line 8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lorg/w3c/dom/Notation;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;

    .line 9
    invoke-interface {v1}, Lorg/w3c/dom/Notation;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    .line 10
    invoke-interface {v1}, Lorg/w3c/dom/Notation;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 11
    :pswitch_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v2

    goto/16 :goto_a

    :pswitch_3
    if-eqz p3, :cond_2

    .line 12
    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/DocumentType;

    .line 13
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    .line 14
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 15
    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    if-eqz v3, :cond_1

    move v5, v8

    .line 16
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 17
    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {p0, v6, v9, v9, p4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/Hashtable;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 19
    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    if-eqz v1, :cond_f

    .line 20
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v8, v4, :cond_f

    .line 21
    invoke-interface {v1, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, v9, v9, p4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/Hashtable;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 22
    :cond_2
    invoke-static {v5, v4, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    .line 24
    :pswitch_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v2

    goto/16 :goto_a

    .line 25
    :pswitch_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v2

    goto/16 :goto_a

    .line 26
    :pswitch_6
    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Entity;

    .line 27
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    .line 28
    invoke-interface {v1}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    .line 29
    invoke-interface {v1}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    .line 30
    invoke-interface {v1}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2, v8}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly(Z)V

    goto/16 :goto_a

    .line 32
    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v2

    :goto_3
    move p2, v8

    goto/16 :goto_a

    .line 33
    :pswitch_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v2

    goto/16 :goto_a

    .line 34
    :pswitch_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    goto/16 :goto_a

    .line 35
    :pswitch_a
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p2

    invoke-interface {p2, v7, v6}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 36
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 37
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p2

    goto :goto_4

    .line 38
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p2

    goto :goto_4

    .line 39
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p2

    :goto_4
    move-object v2, p2

    .line 40
    instance-of p2, p1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    if-eqz p2, :cond_5

    .line 41
    move-object p2, p1

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    .line 42
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    move-object v1, v2

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    .line 44
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 45
    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p2

    if-nez p2, :cond_6

    .line 46
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move p2, v9

    goto/16 :goto_a

    .line 47
    :pswitch_b
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    invoke-interface {v1, v7, v6}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 48
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_5

    .line 49
    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    goto :goto_6

    .line 50
    :cond_8
    :goto_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 51
    :goto_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 52
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    :goto_7
    if-ge v8, v4, :cond_d

    .line 53
    invoke-interface {v3, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    .line 54
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz p3, :cond_c

    .line 55
    :cond_9
    invoke-direct {p0, v5, v9, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/Hashtable;)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    if-eqz v1, :cond_b

    .line 56
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_8

    .line 57
    :cond_a
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    goto :goto_9

    .line 58
    :cond_b
    :goto_8
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :cond_c
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    if-eqz p4, :cond_f

    .line 59
    invoke-virtual {p4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 60
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v3, :cond_e

    .line 61
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    .line 62
    :cond_e
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_a
    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 63
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;SLjava/util/Hashtable;)V

    :cond_10
    if-eqz p2, :cond_11

    .line 64
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_b
    if-eqz p1, :cond_11

    .line 65
    invoke-direct {p0, p1, v9, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/Hashtable;)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {v2, p2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 66
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_b

    .line 67
    :cond_11
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_12

    .line 68
    move-object p0, v2

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p0, v9, v9}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setReadOnly(ZZ)V

    :cond_12
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_2

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_1
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public static final isXMLName(Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abort()V
    .locals 0

    return-void
.end method

.method public addEventListener(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 0

    return-void
.end method

.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    if-eq v2, v3, :cond_3

    instance-of v4, v2, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;

    if-eqz v4, :cond_1

    instance-of v4, v3, Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->undeferChildren(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    instance-of v2, v2, Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;

    if-eqz v2, :cond_2

    instance-of v2, v3, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_10

    const/4 v5, 0x2

    if-eq v2, v5, :cond_d

    if-eq v2, v3, :cond_7

    const/4 v4, 0x6

    const-string v5, "http://www.w3.org/dom/DOMTR"

    if-eq v2, v4, :cond_6

    const/16 v4, 0x9

    if-eq v2, v4, :cond_5

    const/16 v6, 0xa

    if-eq v2, v6, :cond_5

    const/16 v4, 0xc

    if-eq v2, v4, :cond_6

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    if-eqz v2, :cond_13

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto/16 :goto_3

    :cond_5
    const-string p0, "NOT_SUPPORTED_ERR"

    invoke-static {v5, p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_6
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v5, p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    :goto_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_9
    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    if-eqz v2, :cond_a

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_a
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_3

    :cond_c
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_13

    invoke-interface {v5, v4}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_2

    :cond_d
    move-object v2, v1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Element;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :cond_e
    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    if-eqz v4, :cond_f

    invoke-virtual {p0, v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_f
    move-object v2, v4

    goto :goto_3

    :cond_10
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-interface {v4, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_11
    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    if-eqz v2, :cond_12

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_12
    move-object v4, v1

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->reconcileDefaultAttributes()V

    :cond_13
    :goto_3
    if-eqz v2, :cond_14

    invoke-virtual {p0, p1, v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;SLjava/util/Hashtable;)V

    :cond_14
    return-object v1

    :catch_0
    return-object v0
.end method

.method callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    if-eqz v0, :cond_2

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;SLjava/util/Hashtable;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;SLjava/util/Hashtable;)V
    .locals 7

    if-eqz p4, :cond_2

    .line 6
    invoke-virtual {p4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    .line 8
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-virtual {p4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;

    .line 11
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->fHandler:Lorg/w3c/dom/UserDataHandler;

    if-eqz v1, :cond_1

    .line 12
    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lorg/w3c/dom/UserDataHandler;->handle(SLjava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public changed()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->changes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->changes:I

    return-void
.end method

.method public changes()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->changes:I

    return p0
.end method

.method public final checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz p0, :cond_5

    const/16 p0, 0xe

    const/4 v0, 0x0

    const-string v1, "NAMESPACE_ERR"

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-eqz p2, :cond_4

    const-string v3, "xml"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/w3c/dom/DOMException;

    invoke-direct {p2, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const-string v3, "xmlns"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/w3c/dom/DOMException;

    invoke-direct {p2, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_4
    invoke-static {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/w3c/dom/DOMException;

    invoke-direct {p2, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_5
    :goto_1
    return-void
.end method

.method public final checkNamespaceWF(Ljava/lang/String;II)V
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-eq p2, p0, :cond_1

    if-ne p3, p2, :cond_1

    return-void

    :cond_1
    const-string p0, "NAMESPACE_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0xe

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public final checkQName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_3

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_4
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string p0, "INVALID_CHARACTER_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public final clearIdentifiers()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    return-object p0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->cloneNode(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Z)V

    return-object v0
.end method

.method public cloneNode(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Z)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    if-eqz p2, :cond_3

    .line 6
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->firstChild:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :goto_1
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 13
    invoke-direct {p1, v0, v1, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/Hashtable;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 14
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    goto :goto_1

    .line 15
    :cond_3
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    iput-boolean p2, p1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    .line 16
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    iput-boolean p0, p1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    return-void
.end method

.method public copyEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "INVALID_CHARACTER_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/CDATASectionImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CDATASectionImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/CommentImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CommentImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DocumentFragmentImpl;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentFragmentImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "INVALID_CHARACTER_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElementDefinition(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "INVALID_CHARACTER_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "INVALID_CHARACTER_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "INVALID_CHARACTER_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createNotation(Ljava/lang/String;)Lorg/w3c/dom/Notation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "INVALID_CHARACTER_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "INVALID_CHARACTER_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/ProcessingInstructionImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ProcessingInstructionImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public deletedText(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;II)V
    .locals 0

    return-void
.end method

.method public dispatchEvent(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public freeNodeListCache(Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fFreeNLCache:Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;->next:Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fFreeNLCache:Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;

    return-void
.end method

.method public getAsync()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/URI;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    return-object p0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    return-object p0
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    return-object p0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    return-object p0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    return-object p0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getIdentifier(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeepNodeListImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeepNodeListImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrorChecking()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    return p0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    const-string v3, "+XPath"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v2, :cond_2

    const-string v2, "3.0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    const-string p2, "com.sun.org.apache.xpath.internal.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p2, v2, v1}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lorg/w3c/dom/Document;

    aput-object v2, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p2

    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_5

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    :cond_5
    return-object p1

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifier(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    if-ne v0, p0, :cond_2

    return-object p1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getIdentifiers()Ljava/util/Enumeration;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    return-object p0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->actualEncoding:Ljava/lang/String;

    return-object p0
.end method

.method getMutationEvents()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNodeListCache(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;)Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fFreeNLCache:Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;

    if-nez v0, :cond_0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;)V

    return-object p0

    :cond_0
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;->next:Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fFreeNLCache:Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;->fChild:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;->fChildIndex:I

    iput v1, v0, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;->fLength:I

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;->fOwner:Lcom/sun/org/apache/xerces/internal/dom/ParentNode;

    if-eqz v1, :cond_1

    iput-object p0, v1, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->fNodeListCache:Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;

    :cond_1
    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;->fOwner:Lcom/sun/org/apache/xerces/internal/dom/ParentNode;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "#document"

    return-object p0
.end method

.method public getNodeNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->documentNumber:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;

    .line 3
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->assignDocumentNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->documentNumber:I

    .line 4
    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->documentNumber:I

    return p0
.end method

.method public getNodeNumber(Lorg/w3c/dom/Node;)I
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Hashtable;

    .line 7
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->nodeCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->nodeCounter:I

    .line 8
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 10
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->nodeCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->nodeCounter:I

    .line 11
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getNodeType()S
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStandalone()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result p0

    return p0
.end method

.method public getStrictErrorChecking()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    return p0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Ljava/lang/Object;
    .locals 1

    const-string v0, "XERCES1DOMUSERDATA"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getUserData(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getUserData(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    if-nez p0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public getUserDataRecord(Lorg/w3c/dom/Node;)Ljava/util/Hashtable;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public getXmlStandalone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->standalone:Z

    return p0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "1.0"

    :cond_0
    return-object p0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/Hashtable;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    if-nez v1, :cond_1

    :cond_0
    if-ne v0, v2, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "HIERARCHY_REQUEST_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    iput-object p0, v1, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-ne v0, v3, :cond_4

    move-object p2, p1

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    :cond_5
    :goto_1
    return-object p1
.end method

.method public insertedNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method public insertedText(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;II)V
    .locals 0

    return-void
.end method

.method public insertingNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method public isKidOK(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 3

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v2, 0xa

    if-ne p0, v2, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    sget-object p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->kidOK:[I

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    aget p0, p0, p1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    shl-int p1, v1, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method isNormalizeDocRequired()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isXML11Version()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    return p0
.end method

.method isXMLVersionChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    return p0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadXML(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public modifiedAttrValue(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public modifiedCharacterData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public modifyingCharacterData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method public normalizeDocument()V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isNormalizeDocRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->domNormalizer:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->domNormalizer:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;->reset()V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->domNormalizer:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fConfiguration:Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->normalizeDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMConfigurationImpl;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    return-void
.end method

.method public putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public removeEventListener(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 0

    return-void
.end method

.method public removeIdentifier(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removeUserDataTable(Lorg/w3c/dom/Node;)Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    return-object p0
.end method

.method public removedAttrNode(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removedNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method public removingNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WRONG_DOCUMENT_ERR"

    invoke-static {v1, p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_a

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :cond_2
    instance-of v4, p1, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;

    invoke-virtual {v4, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;->rename(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :cond_3
    invoke-virtual {p0, v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    goto :goto_2

    :cond_4
    if-nez p2, :cond_6

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->rename(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :cond_5
    invoke-virtual {p0, v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    goto :goto_2

    :cond_6
    new-instance v3, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;

    invoke-direct {v3, p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->copyEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removeUserDataTable(Lorg/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object p2

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_7

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v3, p3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p3

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    if-eqz v1, :cond_8

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :cond_8
    move-object v0, v3

    :goto_2
    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->renamedAttrNode(Lorg/w3c/dom/Attr;Lorg/w3c/dom/Attr;)V

    return-object v0

    :cond_9
    const-string p0, "NOT_SUPPORTED_ERR"

    invoke-static {v1, p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    instance-of v4, v0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;

    if-eqz v4, :cond_b

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;

    invoke-virtual {v1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->rename(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    goto/16 :goto_5

    :cond_b
    if-nez p2, :cond_f

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz p2, :cond_e

    const/16 p2, 0x3a

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v4, -0x1

    if-ne p2, v4, :cond_d

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p3, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    const-string p0, "INVALID_CHARACTER_ERR"

    invoke-static {v1, p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_d
    const-string p0, "NAMESPACE_ERR"

    invoke-static {v1, p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0xe

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_e
    :goto_3
    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->rename(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    goto :goto_5

    :cond_f
    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;

    invoke-direct {v1, p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->copyEventListeners(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removeUserDataTable(Lorg/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object p2

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz p3, :cond_10

    invoke-interface {p3, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_10
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_11

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_4

    :cond_11
    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->moveSpecifiedAttributes(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;)V

    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    if-eqz p3, :cond_12

    invoke-interface {p3, v1, v3}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_12
    move-object v0, v1

    :goto_5
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->renamedElement(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method renamedAttrNode(Lorg/w3c/dom/Attr;Lorg/w3c/dom/Attr;)V
    .locals 0

    return-void
.end method

.method renamedElement(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 0

    return-void
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    iput-object p0, v0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "HIERARCHY_REQUEST_ERR"

    const/4 p2, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_4

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    goto :goto_1

    :cond_4
    if-ne v0, v1, :cond_5

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    :cond_5
    :goto_1
    return-object p2
.end method

.method public replacedCharacterData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public replacedNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method public replacedText(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method public replacingData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method public replacingNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method public saveXML(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WRONG_DOCUMENT_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/ls/DOMImplementationLS;

    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;

    move-result-object v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, p1

    :goto_1
    invoke-interface {v0, p0}, Lorg/w3c/dom/ls/LSSerializer;->writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAsync(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "NOT_SUPPORTED_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setAttrNode(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;)V
    .locals 0

    return-void
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setErrorChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->actualEncoding:Ljava/lang/String;

    return-void
.end method

.method setMutationEvents(Z)V
    .locals 0

    return-void
.end method

.method public setStandalone(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setUserData(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    .line 8
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    :goto_0
    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;

    invoke-direct {p1, p0, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V

    invoke-virtual {v1, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 14
    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;

    .line 15
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object p0

    :cond_4
    return-object v0
.end method

.method public setUserData(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "XERCES1DOMUSERDATA"

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setUserData(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    return-void
.end method

.method setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->userData:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->standalone:Z

    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 4

    const-string v0, "1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "1.1"

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "NOT_SUPPORTED_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized(Z)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->xml11Version:Z

    :goto_1
    return-void
.end method

.method public undeferChildren(Lorg/w3c/dom/Node;)V
    .locals 5

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->undeferChildren(Lorg/w3c/dom/Node;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_6
    return-void
.end method
