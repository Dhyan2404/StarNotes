.class public Lcom/sunia/HTREnginev2/oqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# instance fields
.field public final e:Lnet/sf/saxon/om/NodeInfo;

.field public f:[Lnet/sf/saxon/om/NamespaceBinding;

.field public g:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oqe;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getXMLVersion()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/oqe;->g:Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/oqe;->e(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/oqe;->f:[Lnet/sf/saxon/om/NamespaceBinding;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/oqe;->c()[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/oqe;->f:[Lnet/sf/saxon/om/NamespaceBinding;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/oqe;->f:[Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0
.end method

.method public final c()[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/oqe;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/oqe;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/oqe;->g:Z

    xor-int/2addr p0, v3

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/om/NamespaceMap;->getDifferences(Lnet/sf/saxon/om/NamespaceMap;Z)[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceMap;->getNamespaceBindings()[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final d()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/oqe;->b()[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getLength()I
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/oqe;->e:Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/oqe;->d()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/oqe;->b()[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p1

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    aget-object v0, p1, v1

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/tree/NamespaceNode;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oqe;->e:Lnet/sf/saxon/om/NodeInfo;

    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/tree/NamespaceNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NamespaceBinding;I)V

    invoke-static {v0}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/dom/NodeOverNodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    const-string v0, "xmlns:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/oqe;->b()[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object v0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_6

    aget-object v3, v0, v1

    if-nez v3, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance p1, Lnet/sf/saxon/tree/NamespaceNode;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oqe;->e:Lnet/sf/saxon/om/NodeInfo;

    aget-object v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lnet/sf/saxon/tree/NamespaceNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NamespaceBinding;I)V

    invoke-static {p1}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/dom/NodeOverNodeInfo;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v2

    :cond_7
    iget-object p0, p0, Lcom/sunia/HTREnginev2/oqe;->e:Lnet/sf/saxon/om/NodeInfo;

    new-instance v0, Lcom/sunia/HTREnginev2/nqe;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/nqe;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeSelector;->of(Ljava/util/function/Predicate;)Lnet/sf/saxon/pattern/NodeSelector;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p0, v0, p1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {p0}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/dom/NodeOverNodeInfo;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xmlns:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/oqe;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "xmlns"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/oqe;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/oqe;->e:Lnet/sf/saxon/om/NodeInfo;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/dom/NodeOverNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/oqe;->b()[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object v1

    array-length v2, v1

    if-ge p1, v2, :cond_1

    aget-object v0, v1, p1

    new-instance v1, Lnet/sf/saxon/tree/NamespaceNode;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oqe;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-direct {v1, p0, v0, p1}, Lnet/sf/saxon/tree/NamespaceNode;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NamespaceBinding;I)V

    invoke-static {v1}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/dom/NodeOverNodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    array-length v1, v1

    sub-int/2addr p1, v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oqe;->e:Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    if-ne v1, p1, :cond_2

    invoke-static {v2}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/dom/NodeOverNodeInfo;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    const/4 p0, 0x0

    return-object p0
.end method
