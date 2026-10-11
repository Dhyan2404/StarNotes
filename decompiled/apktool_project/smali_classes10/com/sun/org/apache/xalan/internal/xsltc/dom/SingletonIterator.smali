.class public Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# instance fields
.field private final _isConstant:Z

.field private _node:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    .line 4
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_node:I

    .line 5
    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_isConstant:Z

    return-void
.end method


# virtual methods
.method public gotoMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_node:I

    return-void
.end method

.method public next()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_node:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_node:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_isConstant:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_node:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    return-object p0
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_node:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_isConstant:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_node:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_node:I

    if-gtz v0, :cond_1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;->_node:I

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_2
    return-object p0
.end method
