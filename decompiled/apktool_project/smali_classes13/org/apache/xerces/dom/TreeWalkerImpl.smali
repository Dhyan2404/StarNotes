.class public Lorg/apache/xerces/dom/TreeWalkerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/traversal/TreeWalker;


# instance fields
.field public a:Z

.field public b:I

.field public c:Lorg/w3c/dom/traversal/NodeFilter;

.field public d:Lorg/w3c/dom/Node;

.field public e:Lorg/w3c/dom/Node;

.field public f:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->b:I

    iput-object p1, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->e:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->j(Lorg/w3c/dom/Node;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->f:Z

    iput p2, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->b:I

    iput-object p3, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->c:Lorg/w3c/dom/traversal/NodeFilter;

    iput-boolean p4, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Node;)S
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->c:Lorg/w3c/dom/traversal/NodeFilter;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->b:I

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    sub-int/2addr p1, v2

    shl-int p1, v2, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->b:I

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    sub-int/2addr v3, v2

    shl-int/2addr v2, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->c:Lorg/w3c/dom/traversal/NodeFilter;

    invoke-interface {p0, p1}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->a:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->a(Lorg/w3c/dom/Node;)S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    return-object v1

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1, p1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->e(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p0, v1, p1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->e(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public c(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->a:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->a(Lorg/w3c/dom/Node;)S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    return-object v1

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->c(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1, p1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->h(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p0, v1, p1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->h(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public d(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->e:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->e(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public e(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/TreeWalkerImpl;->i(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/TreeWalkerImpl;->i(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->a(Lorg/w3c/dom/Node;)S

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/TreeWalkerImpl;->e(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->a(Lorg/w3c/dom/Node;)S

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object v1

    :cond_4
    if-ne p1, v2, :cond_6

    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v1, p2}, Lorg/apache/xerces/dom/TreeWalkerImpl;->e(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1

    :cond_6
    invoke-virtual {p0, v1, p2}, Lorg/apache/xerces/dom/TreeWalkerImpl;->e(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public f(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->e:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->i(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->a(Lorg/w3c/dom/Node;)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->f(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public firstChild()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public g(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->e:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->h(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getExpandEntityReferences()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->a:Z

    return p0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->c:Lorg/w3c/dom/traversal/NodeFilter;

    return-object p0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->e:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getWhatToShow()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->b:I

    return p0
.end method

.method public h(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/TreeWalkerImpl;->i(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/TreeWalkerImpl;->i(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->a(Lorg/w3c/dom/Node;)S

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/TreeWalkerImpl;->h(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->a(Lorg/w3c/dom/Node;)S

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object v1

    :cond_4
    if-ne p1, v2, :cond_6

    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->c(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v1, p2}, Lorg/apache/xerces/dom/TreeWalkerImpl;->h(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1

    :cond_6
    invoke-virtual {p0, v1, p2}, Lorg/apache/xerces/dom/TreeWalkerImpl;->h(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public final i(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->f:Z

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result p0

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Lorg/w3c/dom/Node;)Z
    .locals 2

    instance-of p0, p1, Lorg/apache/xerces/dom/NodeImpl;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    const-string p1, "Core"

    const-string v1, "3.0"

    invoke-interface {p0, p1, v1}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public lastChild()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->c(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->d(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->f(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->d(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-object v2, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    return-object v2
.end method

.method public nextSibling()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->d(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public parentNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->f(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->g(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->f(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->c(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    iput-object v2, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    return-object v2

    :cond_3
    iput-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    return-object v0

    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/TreeWalkerImpl;->c(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_0
.end method

.method public previousSibling()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/TreeWalkerImpl;->g(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public setCurrentNode(Lorg/w3c/dom/Node;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->d:Lorg/w3c/dom/Node;

    return-void

    :cond_0
    const-string p0, "NOT_SUPPORTED_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setWhatShow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/dom/TreeWalkerImpl;->b:I

    return-void
.end method
