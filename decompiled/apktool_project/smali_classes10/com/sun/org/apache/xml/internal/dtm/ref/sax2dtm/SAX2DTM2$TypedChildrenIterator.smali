.class public final Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedChildrenIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public getNodeByPosition(I)I
    .locals 5

    const/4 v0, -0x1

    if-gtz p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_nodeType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    :goto_0
    if-eq v1, v0, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    if-eq v1, v0, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p1, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public next()I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->_nodeType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :goto_0
    if-eq v0, v1, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v0, v1, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_2
    if-ne v0, v1, :cond_4

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v1

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_2
    return-object p0
.end method
