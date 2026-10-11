.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# instance fields
.field private _current:I

.field private _lastNext:I

.field private _markedLastNext:I

.field private _nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

.field private _nodesSize:I

.field private _source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_current:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodesSize:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_lastNext:I

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_markedLastNext:I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    instance-of p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_0
    return-void
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    iput-object p0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

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
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_current:I

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_markedLastNext:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_lastNext:I

    return-void
.end method

.method public next()I
    .locals 3

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_current:I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_current:I

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->at(I)I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_lastNext:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_lastNext:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_current:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_lastNext:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_current:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_lastNext:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_markedLastNext:I

    return-void
.end method

.method public setRestartable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setRestartable(Z)V

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->clear()V

    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->add(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->sort()V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->cardinality()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_nodesSize:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_current:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DupFilterIterator;->_lastNext:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_2
    return-object p0
.end method
