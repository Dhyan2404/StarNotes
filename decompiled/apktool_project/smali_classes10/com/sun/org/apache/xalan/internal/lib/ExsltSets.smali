.class public Lcom/sun/org/apache/xalan/internal/lib/ExsltSets;
.super Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;-><init>()V

    return-void
.end method

.method public static difference(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .locals 4

    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/NodeList;)V

    new-instance p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/NodeList;)V

    new-instance p1, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->setShouldCacheNodes(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->contains(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static distinct(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .locals 6

    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->setShouldCacheNodes(Z)V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;->toString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static hasSameNode(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/NodeList;)Z
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/NodeList;)V

    new-instance p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/NodeList;)V

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->contains(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static intersection(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .locals 4

    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/NodeList;)V

    new-instance p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/NodeList;)V

    new-instance p1, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->setShouldCacheNodes(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->contains(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static leading(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .locals 4

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/NodeList;)V

    new-instance v1, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->contains(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static trailing(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .locals 4

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/NodeList;)V

    new-instance v1, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->contains(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method
