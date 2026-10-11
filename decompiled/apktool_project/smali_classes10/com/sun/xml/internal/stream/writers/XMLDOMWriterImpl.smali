.class public Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLStreamWriter;


# instance fields
.field private currentNode:Lorg/w3c/dom/Node;

.field private depth:I

.field private mXmlVersion:Ljava/lang/reflect/Method;

.field private namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

.field private needContextPop:[Z

.field private node:Lorg/w3c/dom/Node;

.field private ownerDoc:Lorg/w3c/dom/Document;

.field private resizeValue:I

.field private stringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/dom/DOMResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    const/16 v0, 0x14

    iput v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->resizeValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    check-cast p1, Lorg/w3c/dom/Document;

    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    :goto_0
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->getDLThreeMethods()V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    iget p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->resizeValue:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    new-instance p1, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {p1}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    return-void
.end method

.method private getDLThreeMethods()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setXmlVersion"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    :goto_0
    return-void
.end method

.method private getNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    return-object p0

    :cond_0
    return-object v0
.end method

.method private getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    return-void
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v0, p1, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aput-boolean v0, p1, p0

    :cond_0
    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0, p1, p2}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean p2, p1, p0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    aput-boolean p2, p1, p0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Prefix cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    .line 3
    invoke-interface {p1, p2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current DOM Node type  is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "and does not allow attributes to be set "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, ""

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    .line 12
    invoke-interface {p1, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    return-void

    .line 14
    :cond_2
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Namespace URI "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is not bound to any prefix"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_3
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Local name cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_4
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "NamespaceURI cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current DOM Node type  is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "and does not allow attributes to be set "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    .line 22
    invoke-interface {p1, p4}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    return-void

    .line 24
    :cond_1
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "prefix cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_2
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Local name cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_3
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "NamespaceURI cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current DOM Node type  is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "and does not allow attributes to be set "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object p1

    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->getNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :cond_0
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "CDATA cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public writeCharacters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p1

    invoke-direct {p0}, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->getNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string v1, "xmlns"

    invoke-interface {p0, v0, v1, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current DOM Node type  is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "and does not allow attributes to be set "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    :goto_0
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 7
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, ""

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz p2, :cond_2

    .line 13
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 14
    :cond_2
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 15
    :cond_3
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Namespace URI "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is not bound to any prefix"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_4
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Local name cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_5
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "NamespaceURI cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_5

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1, p3, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz p2, :cond_1

    .line 23
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 25
    :cond_2
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Prefix cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_3
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Local name cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_4
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "NamespaceURI cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public writeEndDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    aget-boolean v4, v3, v2

    if-eqz v4, :cond_0

    aput-boolean v0, v3, v2

    iget-object v2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    :cond_0
    iget v2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    return-void
.end method

.method public writeEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    :goto_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    :cond_1
    iget v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    return-void
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "xmlns"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Element;

    const-string p1, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p0, p1, v1, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "prefix cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "NamespaceURI cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Target cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Target cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeStartDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "1.0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 8
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 12
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 6
    :goto_0
    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {p1}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 9
    :cond_2
    iget p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 11
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, ""

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz p2, :cond_2

    .line 17
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 18
    :cond_2
    iget-object p2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 19
    :goto_2
    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    goto :goto_3

    .line 20
    :cond_3
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Namespace URI "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is not bound to any prefix"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_4
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Local name cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_5
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "NamespaceURI cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget p2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_7

    .line 24
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {p1}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 25
    :cond_7
    iget p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    const-string v0, ""

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 29
    :goto_0
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1, p3, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz p2, :cond_1

    .line 31
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 33
    :goto_1
    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 34
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget p2, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_2

    .line 35
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {p1}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 36
    :cond_2
    iget p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/xml/internal/stream/writers/XMLDOMWriterImpl;->depth:I

    goto :goto_2

    .line 37
    :cond_3
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Prefix cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_4
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Local name cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_5
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "NamespaceURI cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-void
.end method
