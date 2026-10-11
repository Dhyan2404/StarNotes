.class public Lcom/sun/org/apache/xpath/internal/NodeSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/traversal/NodeIterator;
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/xpath/internal/axes/ContextNodeList;


# instance fields
.field private m_blocksize:I

.field protected transient m_cacheNodes:Z

.field protected m_firstFree:I

.field private transient m_last:I

.field m_map:[Lorg/w3c/dom/Node;

.field private m_mapSize:I

.field protected transient m_mutable:Z

.field protected transient m_next:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    .line 4
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_cacheNodes:Z

    .line 5
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_last:I

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    const/16 v1, 0x20

    .line 7
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    .line 8
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    .line 12
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_cacheNodes:Z

    .line 13
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_last:I

    .line 14
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    .line 15
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    .line 16
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/NodeSet;)V
    .locals 1

    const/16 v0, 0x20

    .line 19
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(I)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    const/16 v0, 0x20

    .line 23
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(I)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 1

    const/16 v0, 0x20

    .line 17
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(I)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNodes(Lorg/w3c/dom/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;)V
    .locals 1

    const/16 v0, 0x20

    .line 21
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(I)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method private addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)Z
    .locals 8

    .line 10
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {p4, p3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    const/4 v7, -0x1

    if-lt p2, p1, :cond_2

    .line 12
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 p2, -0x2

    goto :goto_1

    .line 13
    :cond_0
    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/DOM2Helper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 p1, p2, 0x1

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    add-int/lit8 p1, p3, -0x1

    if-lez p1, :cond_2

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p2

    move v4, p1

    move-object v5, p4

    move-object v6, p5

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->size()I

    move-result p3

    add-int/lit8 v3, p3, -0x1

    move-object v1, p0

    move v2, p2

    move v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    if-ne p2, v7, :cond_3

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    :cond_3
    return p1

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addElement(Lorg/w3c/dom/Node;)V
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    new-array v1, v0, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    new-array v2, v2, [Lorg/w3c/dom/Node;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNode(Lorg/w3c/dom/Node;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodeInDocOrder(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;ZLcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result p0

    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodeInDocOrder(Lorg/w3c/dom/Node;ZLcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 3

    .line 1
    iget-boolean p3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz p3, :cond_8

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->size()I

    move-result p2

    sub-int/2addr p2, p3

    :goto_0
    const/4 v0, -0x2

    if-ltz p2, :cond_2

    .line 3
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-ne v1, p1, :cond_0

    move p2, v0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/utils/DOM2Helper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq p2, v0, :cond_3

    add-int/2addr p2, p3

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    goto :goto_4

    :cond_3
    const/4 p2, -0x1

    goto :goto_4

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_6

    .line 7
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move p3, v0

    :goto_3
    if-nez p3, :cond_7

    .line 8
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_7
    :goto_4
    return p2

    .line 9
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodes(Lcom/sun/org/apache/xpath/internal/NodeSet;)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodes(Lorg/w3c/dom/NodeList;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 10
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodesInDocOrder(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v2, p2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xpath/internal/XPathContext;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNodesInDocOrder(Lorg/w3c/dom/traversal/NodeIterator;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_1

    .line 7
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xpath/internal/XPathContext;)I

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public appendNodes(Lcom/sun/org/apache/xpath/internal/NodeSet;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int v4, v3, v0

    iget v5, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    if-lt v4, v5, :cond_1

    iget v4, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    add-int/2addr v4, v0

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    new-array v4, v5, [Lorg/w3c/dom/Node;

    add-int/2addr v3, v0

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-ne v1, v2, :cond_0

    array-length v1, v1

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, v0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public cloneWithReset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->reset()V

    return-object p0
.end method

.method public contains(Lorg/w3c/dom/Node;)Z
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->runTo(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public detach()V
    .locals 0

    return-void
.end method

.method public elementAt(I)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_cacheNodes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_0
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NODESET_CANNOT_INDEX"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentPos()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    return p0
.end method

.method public getExpandEntityReferences()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLast()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_last:I

    return p0
.end method

.method public getLength()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->runTo(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->size()I

    move-result p0

    return p0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShouldCacheNodes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_cacheNodes:Z

    return p0
.end method

.method public getWhatToShow()I
    .locals 0

    const/16 p0, -0x11

    return p0
.end method

.method public indexOf(Lorg/w3c/dom/Node;)I
    .locals 3

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->runTo(I)V

    .line 7
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    if-ge v1, v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public indexOf(Lorg/w3c/dom/Node;I)I
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->runTo(I)V

    .line 2
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    if-ge p2, v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, v1, p2

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public insertElementAt(Lorg/w3c/dom/Node;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    new-array v1, v0, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    new-array v2, v3, [Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v0, -0x1

    if-gt p2, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, v0, p2

    iget p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insertNode(Lorg/w3c/dom/Node;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isFresh()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->runTo(I)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final peepOrNull()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final peepTail()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final peepTailSub1()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 p0, p0, -0x2

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final pop()Lorg/w3c/dom/Node;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, p0, v0

    const/4 v2, 0x0

    aput-object v2, p0, v0

    return-object v1
.end method

.method public final popAndTop()Lorg/w3c/dom/Node;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    aput-object v1, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    aget-object v1, p0, v0

    :goto_0
    return-object v1
.end method

.method public final popPair()V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aput-object v1, p0, v0

    return-void
.end method

.method public final popQuick()V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    aput-object v1, p0, v0

    return-void
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_cacheNodes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    add-int/lit8 v2, v0, -0x1

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NODESET_CANNOT_ITERATE"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final push(Lorg/w3c/dom/Node;)V
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    if-lt v1, v2, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v3, :cond_0

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    new-array v3, v2, [Lorg/w3c/dom/Node;

    iput-object v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iput v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    new-array v2, v2, [Lorg/w3c/dom/Node;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, v2, v0

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    return-void
.end method

.method public final pushPair(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    new-array v1, v0, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v1, 0x2

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    new-array v2, v3, [Lorg/w3c/dom/Node;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    aput-object p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    return-void
.end method

.method public removeAllElements()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    return-void
.end method

.method public removeElement(Lorg/w3c/dom/Node;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v3

    invoke-static {v2, v4, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object v1, p0, p1

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeElementAt(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    if-ge p1, v1, :cond_3

    if-ltz p1, :cond_2

    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeNode(Lorg/w3c/dom/Node;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->removeElement(Lorg/w3c/dom/Node;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    return-void
.end method

.method public runTo(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_cacheNodes:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    if-ge v0, v1, :cond_0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_CANNOT_INDEX"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrentPos(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_cacheNodes:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_next:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_CANNOT_INDEX"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setElementAt(Lorg/w3c/dom/Node;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_blocksize:I

    new-array v1, v0, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mapSize:I

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, p0, p2

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLast(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_last:I

    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->isFresh()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_cacheNodes:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_mutable:Z

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

.method public final setTail(Lorg/w3c/dom/Node;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aput-object p1, v0, p0

    return-void
.end method

.method public final setTailSub1(Lorg/w3c/dom/Node;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    add-int/lit8 p0, p0, -0x2

    aput-object p1, v0, p0

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/NodeSet;->m_firstFree:I

    return p0
.end method
