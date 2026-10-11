.class public Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FollowingIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    iput v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_1
    const/4 v3, 0x2

    if-eq v3, v2, :cond_0

    const/16 v3, 0xd

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_5

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v1, v0, :cond_1

    const/16 v1, 0xd

    if-ne v1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v0

    if-eq v2, v0, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    if-ne v2, v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result p1

    :cond_3
    if-ne v2, v0, :cond_4

    if-ne v2, p1, :cond_2

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_5
    return-object p0
.end method
