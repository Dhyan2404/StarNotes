.class public Lorg/apache/html/dom/NameNodeListImpl;
.super Lorg/apache/xerces/dom/DeepNodeListImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/dom/DeepNodeListImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public nextMatchingElementAfter(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eq p1, v1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object p1, v1

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_1
    move-object p1, v0

    :goto_2
    iget-object v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/dom/ElementImpl;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    return-object p1

    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0
.end method
