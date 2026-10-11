.class public Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;
.implements Ljava/io/Serializable;


# static fields
.field protected static final CHANGED:S = 0x2s

.field protected static final HASDEFAULTS:S = 0x4s

.field protected static final READONLY:S = 0x1s

.field static final serialVersionUID:J = -0x61b069b6b67df684L


# instance fields
.field protected flags:S

.field protected nodes:Ljava/util/Vector;

.field protected ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    return-void
.end method


# virtual methods
.method public addItem(Lorg/w3c/dom/Node;)I
    .locals 4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    rsub-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Ljava/util/Vector;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_0
    return v0
.end method

.method public final changed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    and-int/lit8 p1, p1, -0x3

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    return-void
.end method

.method public final changed()Z
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cloneContent(Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V
    .locals 4

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2, v3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cloneMap(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->cloneContent(Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    return-object v0
.end method

.method public cloneMap(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 2

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/Vector;

    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Ljava/util/Vector;-><init>(II)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Vector;->setSize(I)V

    .line 5
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public findNamePoint(Ljava/lang/String;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, p2, v0

    .line 3
    div-int/lit8 v1, v1, 0x2

    .line 4
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    check-cast v2, Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-gez v2, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    if-le p2, v1, :cond_3

    move v1, p2

    :cond_3
    rsub-int/lit8 p0, v1, -0x1

    return p0
.end method

.method public findNamePoint(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 8
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    .line 9
    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_4

    if-nez v3, :cond_5

    .line 11
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    return v0

    .line 12
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Node;

    :goto_0
    return-object p0
.end method

.method public getNamedItemIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Node;

    :goto_0
    return-object p0
.end method

.method public getReadOnly()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result p0

    return p0
.end method

.method public final hasDefaults(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    and-int/lit8 p1, p1, -0x5

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    return-void
.end method

.method public final hasDefaults()Z
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isReadOnly(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    and-int/lit8 p1, p1, -0x2

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    return-void
.end method

.method public final isReadOnly()Z
    .locals 1

    .line 1
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->flags:S

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public precedes(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ne v2, p2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public removeAll()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    return-void
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    return-object v0

    :cond_0
    const-string p0, "NOT_FOUND_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    return-object p2

    :cond_0
    const-string p0, "NOT_FOUND_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v1

    const-string v3, "http://www.w3.org/dom/DOMTR"

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WRONG_DOCUMENT_ERR"

    invoke-static {v3, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v3, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    rsub-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/Vector;

    const/4 v3, 0x5

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Ljava/util/Vector;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_1
    return-object v2
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v1

    const-string v3, "http://www.w3.org/dom/DOMTR"

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WRONG_DOCUMENT_ERR"

    invoke-static {v3, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v3, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_4
    rsub-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/Vector;

    const/4 v3, 0x5

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Ljava/util/Vector;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_1
    return-object v2
.end method

.method public setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->isReadOnly(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setReadOnly(ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
