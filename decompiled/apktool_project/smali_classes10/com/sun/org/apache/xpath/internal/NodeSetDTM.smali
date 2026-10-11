.class public Lcom/sun/org/apache/xpath/internal/NodeSetDTM;
.super Lcom/sun/org/apache/xml/internal/utils/NodeVector;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = 0x6aabdcf4e04f714eL


# instance fields
.field protected transient m_cacheNodes:Z

.field private transient m_last:I

.field m_manager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

.field protected transient m_mutable:Z

.field protected transient m_next:I

.field protected m_root:I


# direct methods
.method public constructor <init>(IILcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>(I)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    .line 11
    iput-boolean p2, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    const/4 p2, -0x1

    .line 12
    iput p2, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_root:I

    .line 13
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_last:I

    .line 14
    iput-object p3, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_manager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    return-void
.end method

.method public constructor <init>(ILcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    .line 57
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 58
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_root:I

    .line 59
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_last:I

    .line 60
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_manager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 61
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNode(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    .line 27
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_root:I

    .line 29
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_last:I

    .line 30
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_manager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 31
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getRoot()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_root:I

    .line 32
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    .line 4
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_root:I

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_last:I

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_manager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/NodeSetDTM;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    .line 18
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_root:I

    .line 20
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_last:I

    .line 21
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_manager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 22
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->getRoot()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_root:I

    .line 23
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    .line 46
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 47
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_root:I

    .line 48
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_last:I

    .line 49
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_manager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 50
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 51
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 52
    invoke-virtual {p2, v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    .line 53
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNode(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    .line 36
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    const/4 v1, -0x1

    .line 37
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_root:I

    .line 38
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_last:I

    .line 39
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_manager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 40
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 42
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNodeInDocOrder(ILcom/sun/org/apache/xpath/internal/XPathContext;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addElement(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->addElement(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNode(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addElement(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodeInDocOrder(ILcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNodeInDocOrder(IZLcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result p0

    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodeInDocOrder(IZLcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_0
    const/4 v1, -0x2

    if-ltz p2, :cond_2

    .line 3
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->elementAt(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    move p2, v1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v3

    .line 5
    invoke-interface {v3, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->isNodeAfter(II)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq p2, v1, :cond_3

    add-int/2addr p2, v0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->insertElementAt(II)V

    goto :goto_4

    :cond_3
    const/4 p2, -0x1

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->size()I

    move-result p2

    const/4 p3, 0x0

    move v1, p3

    :goto_2
    if-ge v1, p2, :cond_6

    if-ne v1, p1, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, p3

    :goto_3
    if-nez v0, :cond_7

    .line 8
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addElement(I)V

    :cond_7
    :goto_4
    return p2

    .line 9
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addElement(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodesInDocOrder(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNodeInDocOrder(ILcom/sun/org/apache/xpath/internal/XPathContext;)I

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public allowDetachToRelease(Z)V
    .locals 0

    return-void
.end method

.method public appendNodes(Lcom/sun/org/apache/xml/internal/utils/NodeVector;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->appendNodes(Lcom/sun/org/apache/xml/internal/utils/NodeVector;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    return-object p0
.end method

.method public cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->reset()V

    return-object p0
.end method

.method public contains(I)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->runTo(I)V

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->contains(I)Z

    move-result p0

    return p0
.end method

.method public detach()V
    .locals 0

    return-void
.end method

.method public elementAt(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->runTo(I)V

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public getAxis()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentNode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->elementAt(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    return v1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This NodeSetDTM can not do indexing or counting functions!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentPos()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    return p0
.end method

.method public getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_manager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_manager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    return-object p0
.end method

.method public getExpandEntityReferences()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFilter()Lcom/sun/org/apache/xml/internal/dtm/DTMFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLast()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_last:I

    return p0
.end method

.method public getLength()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->runTo(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->size()I

    move-result p0

    return p0
.end method

.method public getRoot()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_root:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->item(I)I

    move-result p0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public getShouldCacheNodes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    return p0
.end method

.method public getWhatToShow()I
    .locals 0

    const/16 p0, -0x11

    return p0
.end method

.method public indexOf(I)I
    .locals 1

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->runTo(I)V

    .line 4
    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->indexOf(I)I

    move-result p0

    return p0
.end method

.method public indexOf(II)I
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->runTo(I)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public insertElementAt(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->insertElementAt(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insertNode(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->insertElementAt(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDocOrdered()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFresh()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMutable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    return p0
.end method

.method public item(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->runTo(I)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public nextNode()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->elementAt(I)I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    return v0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public previousNode()I
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    add-int/lit8 v1, v0, -0x1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->elementAt(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NODESETDTM_CANNOT_ITERATE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAllElements()V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->removeAllElements()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeElement(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->removeElement(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeElementAt(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->removeElementAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeNode(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->removeElement(I)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    return-void
.end method

.method public runTo(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    if-ge v0, v1, :cond_0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_CANNOT_INDEX"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrentPos(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_next:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_CANNOT_INDEX"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setElementAt(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->setElementAt(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnvironment(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setItem(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->setElementAt(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLast(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_last:I

    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->isFresh()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_cacheNodes:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->m_mutable:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_CANNOT_CALL_SETSHOULDCACHENODE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result p0

    return p0
.end method
