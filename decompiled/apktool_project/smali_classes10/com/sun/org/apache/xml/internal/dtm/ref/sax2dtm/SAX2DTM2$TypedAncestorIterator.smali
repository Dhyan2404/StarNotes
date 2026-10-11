.class public final Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedAncestorIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;)V

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public getLast()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    return p0
.end method

.method public getNodeByPosition(I)I
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 7

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_realStartNode:I

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    return-object p0

    :cond_1
    iget v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_nodeType:I

    iget-boolean v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    if-nez v4, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    :cond_2
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/16 p1, 0xe

    if-lt v3, p1, :cond_5

    :goto_0
    if-eq v0, v2, :cond_a

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result p1

    if-ne p1, v3, :cond_4

    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v5, v4

    if-lt p1, v5, :cond_3

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    array-length v5, v4

    invoke-static {v4, v1, p1, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v5

    aput v5, p1, v4

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    goto :goto_0

    :cond_5
    :goto_1
    if-eq v0, v2, :cond_a

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v4

    if-ge v4, p1, :cond_6

    if-eq v4, v3, :cond_7

    :cond_6
    if-lt v4, p1, :cond_9

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v5, v5, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNodeType()I

    move-result v4

    if-ne v4, v3, :cond_9

    :cond_7
    iget v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v6, v5

    if-lt v4, v6, :cond_8

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    array-length v6, v5

    invoke-static {v5, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    :cond_8
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v6

    aput v6, v4, v5

    :cond_9
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v0

    goto :goto_1

    :cond_a
    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    aget v2, v0, p1

    :cond_b
    iput v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_c
    return-object p0
.end method
