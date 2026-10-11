.class public Lorg/apache/xerces/dom/DeepNodeListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field protected changes:I

.field protected enableNS:Z

.field protected nodes:Ljava/util/ArrayList;

.field protected nsName:Ljava/lang/String;

.field protected rootNode:Lorg/apache/xerces/dom/NodeImpl;

.field protected tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->changes:I

    iput-boolean v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    iput-object p1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    iput-object p2, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p3}, Lorg/apache/xerces/dom/DeepNodeListImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/DeepNodeListImpl;->item(I)Lorg/w3c/dom/Node;

    iget-object p0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->changes()I

    move-result v0

    iget v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->changes:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->changes()I

    move-result v0

    iput v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->changes:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/dom/NodeImpl;

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/DeepNodeListImpl;->nextMatchingElementAfter(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public nextMatchingElementAfter(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4

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

    if-eqz v0, :cond_e

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

    iget-boolean v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    const-string v1, "*"

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    return-object p1

    :cond_6
    iget-object v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    return-object p1

    :cond_a
    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object p1

    :cond_b
    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    :cond_c
    iget-object v1, p0, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    return-object p1

    :cond_e
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    goto/16 :goto_0
.end method
