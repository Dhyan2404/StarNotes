.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# instance fields
.field private _index:I

.field private _isEnded:Z

.field private _nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

.field private _numCachedNodes:I

.field private _source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_numCachedNodes:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_index:I

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_isEnded:Z

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-void
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;)V

    return-object v0
.end method

.method public getNode(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_numCachedNodes:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->at(I)I

    move-result p0

    return p0

    :cond_0
    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_isEnded:Z

    const/4 v0, -0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->add(I)V

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_numCachedNodes:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_numCachedNodes:I

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_isEnded:Z

    :goto_0
    return p1

    :cond_2
    return v0
.end method

.method public getNodeByPosition(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->getNode(I)I

    move-result p0

    return p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_index:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public gotoMark()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->gotoMark()V

    return-void
.end method

.method public next()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_index:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->getNode(I)I

    move-result p0

    return p0
.end method

.method public reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_index:I

    return-object p0
.end method

.method public setMark()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setMark()V

    return-void
.end method

.method public setRestartable(Z)V
    .locals 0

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    :cond_0
    return-object p0
.end method
