.class public Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# instance fields
.field public e:[Lorg/w3c/dom/Attr;


# direct methods
.method public constructor <init>([Lorg/w3c/dom/Attr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->e:[Lorg/w3c/dom/Attr;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->e:[Lorg/w3c/dom/Attr;

    array-length p0, p0

    return p0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->e:[Lorg/w3c/dom/Attr;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->e:[Lorg/w3c/dom/Attr;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->e:[Lorg/w3c/dom/Attr;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->e:[Lorg/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->e:[Lorg/w3c/dom/Attr;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->getLength()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->e:[Lorg/w3c/dom/Attr;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string p2, "Method not supported"

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method
