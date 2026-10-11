.class public Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;
.super Lcom/sun/org/apache/xpath/internal/objects/XObject;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/xpath/internal/axes/PathComponent;


# static fields
.field static final serialVersionUID:J = 0x35a7b8becbfe0b34L


# instance fields
.field protected m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

.field protected m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

.field protected m_last:I

.field protected m_next:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;ILcom/sun/org/apache/xpath/internal/XPathContext;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setIter(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setShouldCacheNodes(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    .line 16
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    .line 17
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    if-eqz p1, :cond_0

    .line 10
    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    const-string v1, "Must have a NodeVector as the object for NodeSequence!"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    .line 11
    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setIter(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    .line 13
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getLength()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    :cond_0
    return-void
.end method


# virtual methods
.method public SetVector(Lcom/sun/org/apache/xml/internal/utils/NodeVector;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    return-void
.end method

.method public addNodeInDocOrder(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v0

    const-string v1, "addNodeInDocOrder must be done on a mutable sequence!"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getVector()Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x2

    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->elementAt(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->isNodeAfter(II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->insertElementAt(II)V

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    return v1
.end method

.method public allowDetachToRelease(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setShouldCacheNodes(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->allowDetachToRelease(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->allowDetachToRelease(Z)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    iput-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    :cond_0
    return-object v0
.end method

.method public cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    return-object p0
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V

    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PathComponent;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/PathComponent;

    invoke-interface {p0}, Lcom/sun/org/apache/xpath/internal/axes/PathComponent;->getAnalysisBits()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAxis()I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getAxis()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "Can not getAxis from a non-iterated node sequence!"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return v1
.end method

.method public final getContainedIter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    return-object p0
.end method

.method public getCurrentNode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getVector()Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    move-result-object p0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->elementAt(I)I

    move-result p0

    return p0

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getCurrentNode()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getCurrentPos()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    return p0
.end method

.method public getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "Can not get a DTM Unless a DTMManager has been set!"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    return-object p0
.end method

.method public getExpandEntityReferences()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getExpandEntityReferences()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getLength()I
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    instance-of v2, v0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getLength()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->runTo(I)V

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    return p0

    :cond_2
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getLength()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    :cond_3
    return v0
.end method

.method public getRoot()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getRoot()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getVector()Lcom/sun/org/apache/xml/internal/utils/NodeVector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    return-object p0
.end method

.method public getWhatToShow()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, -0x11

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getWhatToShow()I

    move-result p0

    :goto_0
    return p0
.end method

.method public hasCache()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDocOrdered()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->isDocOrdered()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFresh()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

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

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result p0

    return p0
.end method

.method public item(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setCurrentPos(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    move-result v0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    return v0
.end method

.method public nextNode()I
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getVector()Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->elementAt(I)I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    return v0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v0

    if-eq v1, v0, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->isDocOrdered()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getVector()Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->addElement(I)V

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->addNodeInDocOrder(I)I

    move-result v1

    if-ltz v1, :cond_7

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    :cond_7
    :goto_0
    return v0
.end method

.method public previousNode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->item(I)I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->previousNode()I

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getCurrentPos()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    return-void
.end method

.method public runTo(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne v0, p1, :cond_1

    iget p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    goto :goto_3

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    if-ne v1, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getVector()Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getVector()Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    move-result-object v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    if-ge p1, v1, :cond_4

    :goto_1
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    if-lt v1, p1, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->previousNode()I

    move-result v1

    if-eq v0, v1, :cond_5

    goto :goto_1

    :cond_4
    :goto_2
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    if-ge v1, p1, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    move-result v1

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public setCurrentPos(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->runTo(I)V

    return-void
.end method

.method public setItem(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getVector()Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->setElementAt(II)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setItem(II)V

    :goto_0
    return-void
.end method

.method public final setIter(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->isDocOrdered()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setShouldCacheNodes(Z)V

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->runTo(I)V

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_next:I

    goto :goto_0

    :cond_1
    const-string p1, "Can not setRoot on a non-iterated NodeSequence!"

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->SetVector(Lcom/sun/org/apache/xml/internal/utils/NodeVector;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->SetVector(Lcom/sun/org/apache/xml/internal/utils/NodeVector;)V

    :cond_1
    :goto_0
    return-void
.end method
