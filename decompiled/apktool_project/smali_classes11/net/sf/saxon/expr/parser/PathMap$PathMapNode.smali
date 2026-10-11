.class public Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/PathMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathMapNode"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public allPathsAreWithinStreamableSnapshot()Z
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->hasUnknownDependencies()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isReturnable()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isAtomized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getAxis()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isReturnable()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->getArcs()[Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->allPathsAreWithinStreamableSnapshot()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_3
    const/16 v4, 0xc

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_5

    const/16 v2, 0x9

    if-ne v3, v2, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isAtomized()Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->allPathsAreWithinStreamableSnapshot()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v1
.end method

.method public createArc(ILnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    .line 2
    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getAxis()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;-><init>()V

    .line 5
    new-instance v1, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    invoke-direct {v1, p1, p2, v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;-><init>(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createArc(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    .line 8
    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getAxis()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v2

    if-ne v2, p3, :cond_0

    .line 9
    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object p0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isReturnable()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isReturnable()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->setReturnable(Z)V

    .line 10
    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isAtomized()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->setAtomized()V

    :cond_3
    return-void

    .line 12
    :cond_4
    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;-><init>(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    .line 13
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getArcs()[Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    return-object p0
.end method

.method public hasReachableReturnables()Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isReturnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->hasReachableReturnables()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hasUnknownDependencies()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->d:Z

    return p0
.end method

.method public isAtomized()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->c:Z

    return p0
.end method

.method public isReturnable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->b:Z

    return p0
.end method

.method public setAtomized()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->c:Z

    return-void
.end method

.method public setHasUnknownDependencies()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->d:Z

    return-void
.end method

.method public setReturnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->b:Z

    return-void
.end method
