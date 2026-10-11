.class public final Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedFollowingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_nodeType:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    const/16 v2, 0xe

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-lt v0, v2, :cond_4

    :goto_0
    move v2, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v6

    if-eq v6, v5, :cond_1

    if-eq v4, v6, :cond_0

    if-eq v3, v6, :cond_0

    :cond_1
    if-eq v6, v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    if-eq v1, v5, :cond_9

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v6

    if-ne v6, v0, :cond_3

    goto :goto_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    :goto_2
    move v2, v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v6

    if-eq v6, v5, :cond_6

    if-eq v4, v6, :cond_5

    if-eq v3, v6, :cond_5

    :cond_6
    if-eq v6, v5, :cond_7

    goto :goto_3

    :cond_7
    move v2, v5

    :goto_3
    if-eq v1, v5, :cond_9

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v6

    if-eq v6, v0, :cond_9

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v6

    if-ne v6, v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-ne v1, v5, :cond_a

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result v5

    :goto_5
    return v5
.end method
