.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;
    }
.end annotation


# instance fields
.field dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field element:I

.field m_count:S


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->m_count:S

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->element:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 4

    iget-short v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->m_count:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-eq v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v3, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iput-short v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->m_count:S

    :cond_1
    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->m_count:S

    return p0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;->dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;S)V

    throw p1
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;S)V

    throw p1
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;S)V

    throw p1
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;S)V

    throw p1
.end method
