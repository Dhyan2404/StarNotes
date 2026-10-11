.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/traversal/NodeIterator;


# instance fields
.field private dtm_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

.field private valid:Z


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->valid:Z

    :try_start_0
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->dtm_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public detach()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->valid:Z

    return-void
.end method

.method public getDTMIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->dtm_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    return-object p0
.end method

.method public getExpandEntityReferences()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->dtm_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getRoot()I

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->dtm_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getWhatToShow()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->dtm_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getWhatToShow()I

    move-result p0

    return p0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->valid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->dtm_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->dtm_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->valid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->dtm_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->previousNode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->dtm_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method
