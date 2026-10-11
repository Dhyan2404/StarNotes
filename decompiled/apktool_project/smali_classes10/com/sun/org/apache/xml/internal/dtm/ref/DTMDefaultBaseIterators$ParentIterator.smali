.class public final Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ParentIterator"
.end annotation


# instance fields
.field private _nodeType:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    const/16 v2, 0xe

    const/4 v3, -0x1

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    if-eq v1, v3, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public setNodeType(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->_nodeType:I

    return-object p0
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getParent(I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_1
    return-object p0
.end method
