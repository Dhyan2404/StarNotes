.class public final Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final m_Serializer:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

.field private final m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected final m_dh:Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;

.field private final m_locator:Lorg/xml/sax/helpers/LocatorImpl;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->nextIsRaw:Z

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 6
    instance-of v1, p1, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    if-eqz v1, :cond_0

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_Serializer:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_Serializer:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    .line 9
    :goto_0
    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    const-string p1, "dummy.xsl"

    const-string v1, "user.dir"

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {v0, p2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    :goto_1
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz p2, :cond_2

    .line 13
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {p2, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 14
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    :catch_1
    new-instance p1, Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_dh:Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;

    return-void
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_Serializer:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ExtendedContentHandler;->characters(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public endNode(Lorg/w3c/dom/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    check-cast p1, Lorg/w3c/dom/EntityReference;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_9

    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_dh:Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_2
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_dh:Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_Serializer:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    if-nez v0, :cond_9

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_7

    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string v5, "xmlns"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "xmlns:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    if-lez v4, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_1
    if-gez v4, :cond_5

    move-object v1, v2

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    move-object v2, p1

    :goto_4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public startNode(Lorg/w3c/dom/Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    instance-of v0, p1, Lorg/xml/sax/Locator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/xml/sax/Locator;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    const-string v3, ""

    if-eq v0, v2, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto/16 :goto_7

    :cond_1
    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface {p1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_13

    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto/16 :goto_7

    :cond_2
    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xslt-next-is-raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->nextIsRaw:Z

    goto/16 :goto_7

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    check-cast p1, Lorg/w3c/dom/EntityReference;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_13

    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_7
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    if-eqz v1, :cond_13

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_7

    :cond_8
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->nextIsRaw:Z

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->nextIsRaw:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v1, "javax.xml.transform.disable-output-escaping"

    invoke-interface {v0, v1, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string p1, "javax.xml.transform.enable-output-escaping"

    invoke-interface {p0, p1, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    goto/16 :goto_7

    :cond_a
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move-object v4, v3

    :cond_b
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v5, v4, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_11

    invoke-interface {v0, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const-string v8, "xmlns"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "xmlns:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_3

    :cond_d
    if-lez v7, :cond_10

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v7, v6, v5}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    :goto_3
    if-gez v7, :cond_f

    move-object v6, v3

    goto :goto_4

    :cond_f
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v6, v5}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_11
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_dh:Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_6

    :cond_12
    move-object v3, v1

    :goto_6
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_dh:Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/utils/AttList;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_dh:Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;

    invoke-direct {v4, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/utils/AttList;-><init>(Lorg/w3c/dom/NamedNodeMap;Lcom/sun/org/apache/xml/internal/serializer/utils/DOM2Helper;)V

    invoke-interface {v1, v3, v2, p1, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_13
    :goto_7
    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_4

    .line 4
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 10
    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :goto_0
    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 13
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    move-object p1, v0

    goto :goto_0

    .line 19
    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method
