.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AncestorIterator"
.end annotation


# instance fields
.field m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

.field m_ancestorsPos:I

.field m_markedPos:I

.field m_realStartNode:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    return-void
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput p0, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMException;

    const-string v0, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStartNode()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    return p0
.end method

.method public gotoMark()V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_markedPos:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->elementAt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return-void
.end method

.method public final isReverse()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public next()I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->elementAt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->elementAt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_markedPos:I

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    const/4 v2, -0x1

    if-nez v1, :cond_1

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    :cond_1
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    :goto_0
    if-eq v0, v2, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->addElement(I)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->elementAt(I)I

    move-result v2

    :cond_3
    iput v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_4
    return-object p0
.end method
