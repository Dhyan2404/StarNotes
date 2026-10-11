.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# static fields
.field private static final INIT_DATA_SIZE:I = 0x10


# instance fields
.field private _current:I

.field private _data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

.field private _factory:Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;

.field private _free:I

.field private _source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_factory:Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;

    return-void
.end method

.method private addRecord(Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;)V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    aput-object p1, v0, v1

    return-void
.end method

.method private partition(II)I
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    add-int v1, p1, p2

    ushr-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    add-int/lit8 p2, p2, -0x1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->compareTo(Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    add-int/lit8 p1, p1, 0x1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->compareTo(Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    if-ge p1, p2, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    aget-object v2, v1, p1

    aget-object v3, v1, p2

    aput-object v3, v1, p1

    aput-object v2, v1, p2

    goto :goto_0

    :cond_2
    return p2
.end method

.method private quicksort(II)V
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->partition(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->quicksort(II)V

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_factory:Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_factory:Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    iput v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_current:I

    iput p0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_current:I

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->setRestartable(Z)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

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
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    return p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_current:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public gotoMark()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->gotoMark()V

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_current:I

    return-void
.end method

.method public next()I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_current:I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_current:I

    aget-object p0, v1, v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->getNode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public setMark()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setMark()V

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_current:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    const/16 p1, 0x10

    new-array p1, p1, [Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_data:[Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_factory:Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->makeNodeSortRecord(II)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->addRecord(Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_free:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->quicksort(II)V

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortingIterator;->_current:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method
