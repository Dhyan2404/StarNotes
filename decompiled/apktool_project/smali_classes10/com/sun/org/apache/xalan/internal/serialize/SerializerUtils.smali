.class public Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttribute(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->isDefinedNSDecl(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;ILcom/sun/org/apache/xml/internal/dtm/DTM;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v3, v1

    :try_start_0
    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDATA"

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static addAttributes(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstAttribute(I)I

    move-result p1

    :goto_0
    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->addAttribute(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextAttribute(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ensureNamespaceDeclDeclared(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getNamespaceMappings()Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method public static isDefinedNSDecl(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;ILcom/sun/org/apache/xml/internal/dtm/DTM;)Z
    .locals 2

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/16 v1, 0xd

    if-ne v1, v0, :cond_0

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static outputResultTreeFragment(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->rtf()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-interface {p0, v0, v0}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->dispatchToEvents(ILorg/xml/sax/ContentHandler;)V

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextSibling(I)I

    move-result p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static processNSDecls(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;IILcom/sun/org/apache/xml/internal/dtm/DTM;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    :try_start_0
    invoke-interface {p3, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result p2

    :goto_0
    const/4 v2, -0x1

    if-eq v2, p2, :cond_2

    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0, v2, v4, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    invoke-interface {p3, p1, p2, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/16 v1, 0xd

    if-ne p2, v1, :cond_2

    invoke-interface {p3, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-interface {p0, p2, p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_2
    return-void
.end method
