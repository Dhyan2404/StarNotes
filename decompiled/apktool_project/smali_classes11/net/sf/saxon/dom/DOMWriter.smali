.class public Lnet/sf/saxon/dom/DOMWriter;
.super Lnet/sf/saxon/event/Builder;
.source "SourceFile"


# instance fields
.field public f:Lnet/sf/saxon/event/PipelineConfiguration;

.field public g:Lorg/w3c/dom/Node;

.field public h:Lorg/w3c/dom/Document;

.field public i:Lorg/w3c/dom/Node;

.field public j:I

.field public k:Z

.field public l:Ljava/lang/String;

.field public final m:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NamespaceMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/event/Builder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/dom/DOMWriter;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/dom/DOMWriter;->k:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->m:Ljava/util/Stack;

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lorg/w3c/dom/Node;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    check-cast p1, Lorg/w3c/dom/Element;

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xmlns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lnet/sf/saxon/om/NamespaceMap;->bind(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    goto :goto_2

    :cond_0
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_1

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lnet/sf/saxon/om/NamespaceMap;->bind(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v0, :cond_3

    goto :goto_3

    :cond_3
    check-cast p1, Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_4
    :goto_3
    return-object p0

    :cond_5
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget p2, p0, Lnet/sf/saxon/dom/DOMWriter;->j:I

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/dom/DOMWriter;->i:Lorg/w3c/dom/Node;

    if-nez p2, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p2, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/dom/DOMWriter;->i:Lorg/w3c/dom/Node;

    if-eqz p2, :cond_1

    iget p3, p0, Lnet/sf/saxon/dom/DOMWriter;->j:I

    if-nez p3, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/dom/DOMWriter;->i:Lorg/w3c/dom/Node;

    if-eqz p2, :cond_0

    iget p3, p0, Lnet/sf/saxon/dom/DOMWriter;->j:I

    if-nez p3, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-boolean v0, p0, Lnet/sf/saxon/dom/DOMWriter;->k:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->normalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/dom/DOMWriter;->k:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    iget v0, p0, Lnet/sf/saxon/dom/DOMWriter;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/dom/DOMWriter;->j:I

    return-void
.end method

.method public getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    new-instance v0, Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v1, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    iget-object v2, p0, Lnet/sf/saxon/dom/DOMWriter;->l:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/event/Builder;->config:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/dom/DocumentWrapper;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDOMDocumentNode()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMWriter;->f:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMWriter;->l:Ljava/lang/String;

    return-object p0
.end method

.method public open()V
    .locals 0

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/dom/DOMWriter;->i:Lorg/w3c/dom/Node;

    if-eqz p2, :cond_0

    iget p3, p0, Lnet/sf/saxon/dom/DOMWriter;->j:I

    if-nez p3, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setNextSibling(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMWriter;->i:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    check-cast p1, Lorg/w3c/dom/Document;

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    if-nez v0, :cond_2

    new-instance v0, Lnet/sf/saxon/dom/DocumentOverNodeInfo;

    invoke-direct {v0}, Lnet/sf/saxon/dom/DocumentOverNodeInfo;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->m:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/dom/DOMWriter;->a(Lorg/w3c/dom/Node;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMWriter;->f:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->config:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMWriter;->l:Ljava/lang/String;

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p2, ""

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->h:Lorg/w3c/dom/Document;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    invoke-interface {v0, p1, p5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    iget-object p5, p0, Lnet/sf/saxon/dom/DOMWriter;->i:Lorg/w3c/dom/Node;

    if-eqz p5, :cond_1

    iget v0, p0, Lnet/sf/saxon/dom/DOMWriter;->j:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1, p5}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    invoke-interface {p5, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/dom/DOMWriter;->g:Lorg/w3c/dom/Node;

    iget-object p5, p0, Lnet/sf/saxon/dom/DOMWriter;->m:Ljava/util/Stack;

    invoke-virtual {p5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lnet/sf/saxon/om/NamespaceMap;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    if-eq p4, p5, :cond_4

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p4, p5, v1}, Lnet/sf/saxon/om/NamespaceMap;->getDifferences(Lnet/sf/saxon/om/NamespaceMap;Z)[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p5

    array-length v3, p5

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, p5, v1

    invoke-virtual {v4}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "http://www.w3.org/2000/xmlns/"

    if-eqz v6, :cond_2

    :try_start_2
    const-string v5, "xmlns"

    invoke-interface {p1, v7, v5, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xmlns:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v5, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p5, p0, Lnet/sf/saxon/dom/DOMWriter;->m:Ljava/util/Stack;

    invoke-virtual {p5, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 p5, 0x1

    if-eqz p4, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {p4}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v2

    goto :goto_4

    :cond_6
    move-object v4, v3

    :goto_4
    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, v4, v5, p4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p4, Lnet/sf/saxon/om/StandardNames;->XML_ID_NAME:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const/16 p4, 0x800

    invoke-static {p6, p4}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p4

    if-nez p4, :cond_7

    invoke-interface {v1, v0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p4

    const-string v4, "id"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    :cond_7
    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v3, v2

    :cond_8
    invoke-interface {p1, v3, p4, p5}, Lorg/w3c/dom/Element;->setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_9
    iget p1, p0, Lnet/sf/saxon/dom/DOMWriter;->j:I

    add-int/2addr p1, p5

    iput p1, p0, Lnet/sf/saxon/dom/DOMWriter;->j:I

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
