.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/Document;
.implements Lorg/w3c/dom/Text;
.implements Lorg/w3c/dom/Element;
.implements Lorg/w3c/dom/Attr;
.implements Lorg/w3c/dom/ProcessingInstruction;
.implements Lorg/w3c/dom/Comment;
.implements Lorg/w3c/dom/DocumentFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;
    }
.end annotation


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field static final implementation:Lorg/w3c/dom/DOMImplementation;


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field public dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field protected fDocumentURI:Ljava/lang/String;

.field node:I

.field private xmlEncoding:Ljava/lang/String;

.field private xmlStandalone:Z

.field private xmlVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    return-void
.end method

.method private final traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-nez p6, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-nez p5, :cond_3

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 14
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-nez p4, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final appendData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final deleteData(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 3
    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->equals(Lorg/w3c/dom/Node;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Lorg/w3c/dom/Node;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    .line 2
    iget v1, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public getActualEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->actualEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public final getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMChildIterNodeList;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMChildIterNodeList;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V

    return-object v0
.end method

.method public final getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    return-object p0
.end method

.method public final getDTMNodeNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    return p0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDocumentElement()Lorg/w3c/dom/Element;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result v1

    const/4 v2, -0x1

    move v3, v2

    :goto_0
    if-eq v1, v2, :cond_3

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v4, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLastChild(I)I

    move-result v1

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_0
    if-eq v3, v2, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLastChild(I)I

    move-result v1

    goto :goto_1

    :cond_1
    move v3, v1

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v4, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextSibling(I)I

    move-result v1

    goto :goto_0

    :cond_3
    if-eq v3, v2, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_4
    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->fDocumentURI:Ljava/lang/String;

    return-object p0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getElementById(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public final getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "*"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    move v4, v2

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v0, v5, p1, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x9

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v4, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v4}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(I)V

    :goto_1
    if-ge v2, p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public final getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 13

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    move v12, v8

    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v12, v0, :cond_1

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(I)V

    :goto_1
    if-ge v8, p0, :cond_2

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Node;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getFirstChild()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    return-object p0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLastChild(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNextSibling()Lorg/w3c/dom/Node;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextSibling(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public final getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeType()S
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result p0

    return p0
.end method

.method public final getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getOwnerDocument(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Document;

    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public final getOwnerElement()Lorg/w3c/dom/Element;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    move-object v2, p0

    check-cast v2, Lorg/w3c/dom/Element;

    :goto_0
    return-object v2
.end method

.method public final getOwnerNode()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getParentNode()Lorg/w3c/dom/Node;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getPrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getPreviousSibling(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getStandalone()Z
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->xmlEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getXmlStandalone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->xmlStandalone:Z

    return p0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->xmlVersion:Ljava/lang/String;

    return-object p0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasAttributes()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstAttribute(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasChildNodes()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final insertData(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isElementContentWhitespace()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v3

    :cond_b
    return v0
.end method

.method public isId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    if-ne v2, p1, :cond_3

    return-object v0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-interface {p0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "xmlns"

    if-nez p1, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    return-object v5

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final normalize()V
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public normalizeDocument()V
    .locals 0

    return-void
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-object p1
.end method

.method public final replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final replaceData(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final sameNodeAs(Lorg/w3c/dom/Node;)Z
    .locals 3

    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget-object v2, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    iget p1, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->node:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setActualEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->actualEncoding:Ljava/lang/String;

    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final setData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->fDocumentURI:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setIdAttribute(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0

    return-void
.end method

.method public final setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public setStandalone(Z)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/w3c/dom/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->xmlEncoding:Ljava/lang/String;

    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->xmlStandalone:Z

    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->xmlVersion:Ljava/lang/String;

    return-void
.end method

.method public final splitText(I)Lorg/w3c/dom/Text;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public final substringData(II)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getData()Ljava/lang/String;

    move-result-object p0

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
