.class public Lcom/sun/org/apache/xml/internal/utils/DOMHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final m_NSInfoNullNoAncestorXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

.field protected static final m_NSInfoNullWithXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

.field protected static final m_NSInfoNullWithoutXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

.field protected static final m_NSInfoUnProcNoAncestorXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

.field protected static final m_NSInfoUnProcWithXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

.field protected static final m_NSInfoUnProcWithoutXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;


# instance fields
.field protected m_DOMFactory:Lorg/w3c/dom/Document;

.field m_NSInfos:Ljava/util/Hashtable;

.field protected m_candidateNoAncestorXMLNS:Ljava/util/Vector;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    invoke-direct {v0, v1, v1}, Lcom/sun/org/apache/xml/internal/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v1, v3}, Lcom/sun/org/apache/xml/internal/utils/NSInfo;-><init>(ZZI)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    invoke-direct {v0, v2, v2}, Lcom/sun/org/apache/xml/internal/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    invoke-direct {v0, v2, v1, v3}, Lcom/sun/org/apache/xml/internal/utils/NSInfo;-><init>(ZZI)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-void
.end method

.method public static createDocument()Lorg/w3c/dom/Document;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createDocument(Z)Lorg/w3c/dom/Document;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 3
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    :try_start_1
    const-string p0, "http://javax.xml.XMLConstants/feature/secure-processing"

    .line 4
    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 7
    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_CREATEDOCUMENT_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->get()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    .line 3
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/StringBufferPool;->free(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    .line 5
    throw p0
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 2

    .line 6
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 10
    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    .line 11
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Core"

    const-string v3, "2.0"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_CHILD_HAS_NO_OWNER_DOCUMENT_ELEMENT"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_b

    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eq v1, v2, :cond_a

    invoke-static {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v3, 0x2

    move v4, v3

    :goto_0
    if-eqz v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    if-ge v4, v3, :cond_4

    sub-int v2, v3, v4

    move v5, v1

    :goto_2
    if-ge v5, v2, :cond_5

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-le v4, v3, :cond_5

    sub-int v2, v4, v3

    move v5, v1

    :goto_3
    if-ge v5, v2, :cond_5

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    move-object v5, v2

    :goto_4
    if-eqz p0, :cond_b

    if-eq p0, p1, :cond_7

    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    move-object v8, v5

    move-object v5, p1

    move-object p1, v8

    goto :goto_4

    :cond_7
    :goto_5
    if-nez v2, :cond_9

    if-ge v4, v3, :cond_8

    goto :goto_7

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    invoke-static {p0, v2, v5}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    goto :goto_7

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    invoke-static {v1, p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    :cond_b
    :goto_7
    return v0
.end method

.method private static isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    if-ne v3, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v0, :cond_1

    if-eq v3, v1, :cond_1

    :goto_0
    move v2, v4

    goto/16 :goto_7

    :cond_1
    if-ne v3, v0, :cond_8

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    move v1, v2

    move v3, v1

    move v5, v3

    :goto_1
    if-ge v1, v0, :cond_f

    invoke-interface {p0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eq p1, v6, :cond_5

    invoke-static {p1, v6}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    if-eq p2, v6, :cond_3

    invoke-static {p2, v6}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    goto :goto_7

    :cond_6
    move v5, v4

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    move v0, v2

    move v1, v0

    :goto_4
    if-eqz p0, :cond_f

    if-eq p1, p0, :cond_c

    invoke-static {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    if-eq p2, p0, :cond_a

    invoke-static {p2, p0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_a
    if-eqz v1, :cond_b

    goto :goto_0

    :cond_b
    move v0, v4

    goto :goto_6

    :cond_c
    :goto_5
    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    move v1, v4

    :cond_e
    :goto_6
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_4

    :cond_f
    :goto_7
    return v2
.end method

.method public static isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 1

    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->equals(Lorg/w3c/dom/Node;)Z

    move-result p0

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getDOMFactory()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedAttributeName(Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExpandedElementName(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLevel(Lorg/w3c/dom/Node;)S
    .locals 0

    const/4 p0, 0x1

    :goto_0
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    goto :goto_0

    :cond_0
    return p0
.end method

.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    const-string p0, "xml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    goto :goto_1

    :cond_0
    const-string p0, "xmlns"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "http://www.w3.org/2000/xmlns/"

    goto :goto_1

    :cond_1
    const-string v0, ""

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xmlns:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    :cond_3
    if-ne p1, v0, :cond_4

    move-object p1, p2

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p2

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v5, v2, :cond_2

    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    check-cast v6, Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    :goto_0
    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v7, v6, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_hasProcessedNS:Z

    goto :goto_2

    :cond_2
    move-object v6, v3

    :goto_1
    move v7, v4

    :goto_2
    if-eqz v7, :cond_3

    iget-object v0, v6, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_namespace:Ljava/lang/String;

    goto/16 :goto_12

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const-string v9, ""

    if-ne v5, v2, :cond_5

    if-lez v8, :cond_4

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    return-object v3

    :cond_5
    if-ltz v8, :cond_6

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_6
    move-object v7, v9

    :goto_3
    const-string v8, "xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    move v11, v4

    goto/16 :goto_10

    :cond_7
    move-object v8, v1

    move-object v10, v3

    move v11, v4

    move v12, v11

    :goto_4
    if-eqz v8, :cond_17

    if-nez v10, :cond_17

    if-eqz v6, :cond_8

    iget v13, v6, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    if-ne v13, v5, :cond_8

    goto/16 :goto_d

    :cond_8
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-eqz v6, :cond_a

    iget-boolean v14, v6, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_hasXMLNSAttrs:Z

    if-eqz v14, :cond_9

    goto :goto_5

    :cond_9
    move v3, v5

    move-object/from16 v17, v9

    goto/16 :goto_a

    :cond_a
    :goto_5
    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    move v3, v4

    move/from16 v16, v3

    :goto_6
    invoke-interface {v15}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-ge v3, v14, :cond_10

    invoke-interface {v15, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v9

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v4, 0x78

    if-ne v9, v4, :cond_f

    const-string v4, "xmlns:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v9, "xmlns"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    if-eqz v4, :cond_f

    :cond_b
    if-ne v1, v8, :cond_c

    const/4 v12, 0x1

    :cond_c
    if-eqz v4, :cond_d

    const/4 v4, 0x6

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_d
    move-object/from16 v4, v17

    :goto_7
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    const/4 v3, 0x2

    const/4 v11, 0x1

    const/4 v14, 0x1

    goto :goto_8

    :cond_e
    const/4 v11, 0x1

    const/16 v16, 0x1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v9, v17

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto :goto_6

    :cond_10
    move-object/from16 v17, v9

    move v3, v5

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    move-object/from16 v17, v9

    move v3, v5

    const/4 v14, 0x0

    :goto_8
    if-eq v3, v13, :cond_13

    if-nez v6, :cond_13

    if-eq v1, v8, :cond_13

    if-eqz v14, :cond_12

    sget-object v3, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    goto :goto_9

    :cond_12
    sget-object v3, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    :goto_9
    iget-object v4, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    invoke-virtual {v4, v8, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    :cond_13
    const/4 v3, 0x2

    :goto_a
    if-ne v3, v13, :cond_14

    invoke-static {v8}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_b

    :cond_14
    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v3, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_b
    move-object v8, v3

    if-eqz v8, :cond_16

    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    invoke-virtual {v3, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_15

    const/4 v6, 0x0

    goto :goto_c

    :cond_15
    check-cast v3, Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    move-object v6, v3

    :cond_16
    :goto_c
    move-object/from16 v9, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto/16 :goto_4

    :cond_17
    :goto_d
    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1b

    if-nez v11, :cond_1a

    if-nez v8, :cond_1a

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1a

    iget-object v5, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    if-ne v5, v6, :cond_18

    iget-object v5, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_18
    sget-object v6, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    if-ne v5, v6, :cond_19

    iget-object v5, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    :goto_f
    add-int/lit8 v4, v4, 0x2

    goto :goto_e

    :cond_1a
    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    :cond_1b
    move-object v3, v10

    move v4, v12

    const/4 v5, 0x2

    :goto_10
    if-eq v5, v2, :cond_1f

    if-nez v3, :cond_1e

    if-eqz v11, :cond_1d

    if-eqz v4, :cond_1c

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    sget-object v2, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1c
    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    sget-object v2, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1d
    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    sget-object v2, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1e
    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/NSInfo;

    invoke-direct {v2, v3, v4}, Lcom/sun/org/apache/xml/internal/utils/NSInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    :goto_11
    move-object v0, v3

    :goto_12
    return-object v0
.end method

.method public getRoot(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getRootNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-eq v0, p0, :cond_1

    const/16 v0, 0xb

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public getUniqueID(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "N"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 0

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p0

    const-string p2, ""

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Entity;

    if-nez p0, :cond_1

    return-object p2

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object p2

    :cond_2
    return-object p2
.end method

.method public isIgnorableWhitespace(Lorg/w3c/dom/Text;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNamespaceNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne v1, p0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "xmlns:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "xmlns"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setDOMFactory(Lorg/w3c/dom/Document;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-void
.end method

.method public shouldStripSourceNode(Lorg/w3c/dom/Node;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
