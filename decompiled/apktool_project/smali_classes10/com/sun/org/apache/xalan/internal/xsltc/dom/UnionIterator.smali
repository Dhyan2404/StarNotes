.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;
    }
.end annotation


# static fields
.field private static final InitSize:I = 0x8


# instance fields
.field private _cachedHeapSize:I

.field private _cachedReturnedLast:I

.field private final _dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

.field private _free:I

.field private _heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

.field private _heapSize:I

.field private _returnedLast:I

.field private _size:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_size:I

    new-array v1, v1, [Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_free:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_cachedReturnedLast:I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    return-void
.end method

.method private heapify(I)V
    .locals 5

    :goto_0
    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v4, v3, v1

    iget v4, v4, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    aget-object v3, v3, p1

    iget v3, v3, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    invoke-interface {v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->lessThan(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, p1

    :goto_1
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v4, v3, v0

    iget v4, v4, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    aget-object v3, v3, v1

    iget v3, v3, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    invoke-interface {v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->lessThan(II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    if-eq v0, p1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v2, v1, v0

    aget-object v3, v1, p1

    aput-object v3, v1, v0

    aput-object v2, v1, p1

    move p1, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_free:I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_size:I

    if-ne v0, v1, :cond_0

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_size:I

    new-array v1, v1, [Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_free:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_free:I

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    invoke-direct {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    aput-object v2, v0, v1

    return-object p0
.end method

.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    array-length v1, v1

    new-array v1, v1, [Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;

    move v3, v0

    :goto_0
    iget v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_free:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->cloneIterator()Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->setRestartable(Z)V

    iput-object v1, v2, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ITERATOR_CLONE_ERR"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public gotoMark()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_free:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->gotoMark()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_cachedHeapSize:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    div-int/lit8 v0, v0, 0x2

    :goto_1
    if-ltz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->heapify(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_cachedReturnedLast:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_returnedLast:I

    return-void
.end method

.method public next()I
    .locals 6

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    const/4 v1, -0x1

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget v5, v4, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    if-ne v5, v1, :cond_1

    const/4 v5, 0x1

    if-le v0, v5, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    aget-object v1, v2, v0

    aput-object v1, v2, v3

    aput-object v4, v2, v0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_returnedLast:I

    if-ne v5, v0, :cond_2

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->step()I

    :goto_1
    invoke-direct {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->heapify(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->step()I

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->heapify(I)V

    iput v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_returnedLast:I

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_free:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->step()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    div-int/lit8 v1, v1, 0x2

    :goto_1
    if-ltz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->heapify(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_returnedLast:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public setMark()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_free:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->setMark()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_returnedLast:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_cachedReturnedLast:I

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_cachedHeapSize:I

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_free:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v1, v1, v0

    iget-boolean v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->isStartSet:Z

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->step()I

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heap:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->isStartSet:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_heapSize:I

    div-int/lit8 v1, v1, 0x2

    :goto_1
    if-ltz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->heapify(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->_returnedLast:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_3
    return-object p0
.end method
