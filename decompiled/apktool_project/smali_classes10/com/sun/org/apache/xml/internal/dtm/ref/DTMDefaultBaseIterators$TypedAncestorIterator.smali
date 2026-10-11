.class public final Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedAncestorIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 5

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_nodeType:I

    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    const/4 v3, -0x1

    if-nez v2, :cond_1

    if-eq p1, v3, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    :cond_1
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/16 p1, 0xe

    if-lt v1, p1, :cond_3

    :goto_0
    if-eq v0, v3, :cond_7

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->addElement(I)V

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    goto :goto_0

    :cond_3
    :goto_1
    if-eq v0, v3, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v2

    if-lt v2, p1, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    iget-object v4, v4, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-eq v4, v1, :cond_5

    :cond_4
    if-ge v2, p1, :cond_6

    if-ne v2, v1, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->addElement(I)V

    :cond_6
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz p1, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->elementAt(I)I

    move-result v3

    :cond_8
    iput v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_9
    return-object p0
.end method
