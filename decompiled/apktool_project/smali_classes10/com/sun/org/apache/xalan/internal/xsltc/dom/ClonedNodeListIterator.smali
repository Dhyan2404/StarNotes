.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# instance fields
.field private _index:I

.field private _source:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_index:I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_source:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;

    return-void
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_source:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getNodeByPosition(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_source:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->getNode(I)I

    move-result p0

    return p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_index:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public gotoMark()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_source:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->gotoMark()V

    return-void
.end method

.method public next()I
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_source:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_index:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->getNode(I)I

    move-result p0

    return p0
.end method

.method public reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_index:I

    return-object p0
.end method

.method public setMark()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ClonedNodeListIterator;->_source:Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/CachedNodeListIterator;->setMark()V

    return-void
.end method

.method public setRestartable(Z)V
    .locals 0

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    return-object p0
.end method
