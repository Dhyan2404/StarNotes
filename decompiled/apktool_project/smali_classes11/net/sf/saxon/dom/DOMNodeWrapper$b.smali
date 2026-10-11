.class public final Lnet/sf/saxon/dom/DOMNodeWrapper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/dom/DOMNodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/dom/DOMNodeWrapper;

.field public final f:Lnet/sf/saxon/dom/DOMNodeWrapper;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public j:Lorg/w3c/dom/NodeList;

.field public final k:I

.field public l:I

.field public m:I

.field public final synthetic n:Lnet/sf/saxon/dom/DOMNodeWrapper;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/dom/DOMNodeWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;ZZZ)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->n:Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p2, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object p1, p1, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->e:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iput-boolean p3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->g:Z

    iput-boolean p4, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->h:Z

    iput-boolean p5, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->i:Z

    const/4 p5, 0x1

    iput p5, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->m:I

    if-eqz p3, :cond_0

    iput-object p2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->f:Lnet/sf/saxon/dom/DOMNodeWrapper;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getParent()Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->f:Lnet/sf/saxon/dom/DOMNodeWrapper;

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->f:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->j:Lorg/w3c/dom/NodeList;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->k:I

    if-eqz p3, :cond_2

    iput p5, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->m:I

    if-eqz p4, :cond_1

    const/4 p2, -0x1

    iput p2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lnet/sf/saxon/dom/DOMNodeWrapper;->getSiblingPosition()I

    move-result p3

    iput p3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    iget p2, p2, Lnet/sf/saxon/dom/DOMNodeWrapper;->span:I

    iput p2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->m:I

    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final f()I
    .locals 5

    iget v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    iget v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->k:I

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->j:Lorg/w3c/dom/NodeList;

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public hasNext()Z
    .locals 4

    iget-boolean v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    iget v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->m:I

    add-int/2addr v0, v3

    iget p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->k:I

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public final j()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    if-lt v1, v0, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->j:Lorg/w3c/dom/NodeList;

    sub-int/2addr v1, v0

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 6

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->e:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->h:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 4
    iget v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    iget v5, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->m:I

    add-int/2addr v1, v5

    iput v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    .line 5
    iget v5, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->k:I

    if-lt v1, v5, :cond_1

    .line 6
    monitor-exit v0

    return-object v3

    .line 7
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->f()I

    move-result v1

    iput v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->m:I

    .line 8
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->j:Lorg/w3c/dom/NodeList;

    iget v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v4, :cond_2

    if-eq v3, v2, :cond_0

    .line 10
    iget-boolean v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->i:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->n:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object v2, v2, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->f:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget v4, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    invoke-static {v1, v2, v3, v4}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object v1

    .line 12
    iget p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->m:I

    iput p0, v1, Lnet/sf/saxon/dom/DOMNodeWrapper;->span:I

    .line 13
    monitor-exit v0

    return-object v1

    .line 14
    :cond_3
    iget v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    sub-int/2addr v1, v4

    iput v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    if-gez v1, :cond_4

    .line 15
    monitor-exit v0

    return-object v3

    .line 16
    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->j()I

    move-result v1

    iput v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->m:I

    .line 17
    iget v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v3, v1

    iput v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    .line 18
    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->j:Lorg/w3c/dom/NodeList;

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 19
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v4, :cond_5

    if-eq v3, v2, :cond_0

    .line 20
    iget-boolean v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->i:Z

    if-eqz v2, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    iget-object v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->n:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object v2, v2, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->f:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget v4, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->l:I

    invoke-static {v1, v2, v3, v4}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object v1

    .line 22
    iget p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$b;->m:I

    iput p0, v1, Lnet/sf/saxon/dom/DOMNodeWrapper;->span:I

    .line 23
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
