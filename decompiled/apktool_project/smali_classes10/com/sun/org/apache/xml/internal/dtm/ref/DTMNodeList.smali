.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeListBase;
.source "SourceFile"


# instance fields
.field private m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeListBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeListBase;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getCurrentPos()I

    move-result v0

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setShouldCacheNodes(Z)V

    .line 7
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->runTo(I)V

    .line 8
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setCurrentPos(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDTMIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getLength()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->item(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method
