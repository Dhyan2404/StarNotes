.class public final Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedPrecedingSiblingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->_nodeType:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_startNodeID:I

    const/4 v3, -0x1

    const/16 v4, 0xe

    if-lt v1, v4, :cond_0

    :goto_0
    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v4

    if-eq v4, v1, :cond_3

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v5

    if-ge v5, v4, :cond_1

    if-ne v5, v1, :cond_2

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    iget-object v6, v6, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v5

    if-ne v5, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_2
    if-eq v0, v3, :cond_5

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_startNodeID:I

    if-ne v0, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_5
    :goto_3
    iput v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v3
.end method
