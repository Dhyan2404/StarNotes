.class public Lnet/sf/saxon/dom/TextOverAttrInfo;
.super Lnet/sf/saxon/dom/TextOverNodeInfo;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/dom/AttrOverNodeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/dom/AttrOverNodeInfo;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/dom/TextOverNodeInfo;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/dom/TextOverAttrInfo;->e:Lnet/sf/saxon/dom/AttrOverNodeInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->getUnderlyingNodeInfo()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method


# virtual methods
.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/dom/TextOverAttrInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/dom/TextOverAttrInfo;

    iget-object v1, p1, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/dom/TextOverAttrInfo;->e:Lnet/sf/saxon/dom/AttrOverNodeInfo;

    iget-object p1, p1, Lnet/sf/saxon/dom/TextOverAttrInfo;->e:Lnet/sf/saxon/dom/AttrOverNodeInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result p0

    return p0

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/dom/AttrOverNodeInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/dom/AttrOverNodeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->getUnderlyingNodeInfo()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/dom/TextOverAttrInfo;->e:Lnet/sf/saxon/dom/AttrOverNodeInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result p0

    return p0
.end method

.method public getNodeType()S
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/TextOverAttrInfo;->e:Lnet/sf/saxon/dom/AttrOverNodeInfo;

    return-object p0
.end method

.method public isElementContentWhitespace()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
