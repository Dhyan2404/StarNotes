.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;


# instance fields
.field protected _includeSelf:Z

.field protected _isRestartable:Z

.field protected _last:I

.field protected _markedNode:I

.field protected _position:I

.field protected _startNode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_last:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_position:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_startNode:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_includeSelf:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_isRestartable:Z

    return-void
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_isRestartable:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->reset()Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;

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

.method public getLast()I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_position:I

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;->setMark()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->reset()Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;

    :cond_0
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_last:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_last:I

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;->next()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;->gotoMark()V

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_position:I

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_last:I

    return p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_position:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public includeSelf()Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_includeSelf:Z

    return-object p0
.end method

.method public isReverse()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public reset()Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_isRestartable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_isRestartable:Z

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_includeSelf:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_startNode:I

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_startNode:I

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->setStartNode(I)Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_isRestartable:Z

    return-object p0
.end method

.method public final resetPosition()Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_position:I

    return-object p0
.end method

.method public final returnNode(I)I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_position:I

    return p1
.end method

.method public setRestartable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeIteratorBase;->_isRestartable:Z

    return-void
.end method

.method public abstract setStartNode(I)Lcom/sun/org/apache/xalan/internal/xsltc/NodeIterator;
.end method
