.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# instance fields
.field private _currentIndex:I

.field private final _currentNode:I

.field private _docOrder:Z

.field private final _filter:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;

.field private _nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

.field private _source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

.field private _translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;ILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->isReverse()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ZLcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;ILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ZLcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;ILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    .line 3
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    .line 5
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_filter:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;

    .line 6
    iput-object p5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    .line 7
    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_docOrder:Z

    .line 8
    iput p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_currentNode:I

    return-void
.end method

.method private computePositionOfLast()I
    .locals 12

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->cardinality()I

    move-result v0

    iget v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_currentNode:I

    iget-object v9, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_currentIndex:I

    move v10, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_docOrder:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    :cond_0
    sub-int v1, v0, v2

    :goto_1
    move v3, v1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->at(I)I

    move-result v2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_filter:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;

    move v4, v0

    move v5, v8

    move-object v6, v9

    move-object v7, p0

    invoke-interface/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;->test(IIIILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v10, v10, 0x1

    :cond_1
    move v2, v11

    goto :goto_0

    :cond_2
    return v10
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    iput-object p0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

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

.method public forceNaturalOrder()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_docOrder:Z

    return-object p0
.end method

.method public getLast()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->computePositionOfLast()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_last:I

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_last:I

    return p0
.end method

.method public gotoMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_currentIndex:I

    return-void
.end method

.method public isReverse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_docOrder:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public next()I
    .locals 12

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->cardinality()I

    move-result v0

    iget v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_currentNode:I

    iget-object v9, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_currentIndex:I

    :goto_0
    if-ge v1, v0, :cond_2

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_docOrder:Z

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_0
    sub-int v2, v0, v1

    :goto_1
    move v3, v2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->at(I)I

    move-result v11

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_filter:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;

    move v2, v11

    move v4, v0

    move v5, v8

    move-object v6, v9

    move-object v7, p0

    invoke-interface/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListFilter;->test(IIIILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v10, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_currentIndex:I

    invoke-virtual {p0, v11}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_1
    move v1, v10

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_currentIndex:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_currentIndex:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    return-void
.end method

.method public setRestartable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setRestartable(Z)V

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->clear()V

    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->add(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CurrentNodeListIterator;->_currentIndex:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_1
    return-object p0
.end method
