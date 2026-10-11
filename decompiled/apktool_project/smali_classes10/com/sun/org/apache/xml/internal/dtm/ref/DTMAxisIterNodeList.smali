.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeListBase;
.source "SourceFile"


# instance fields
.field private m_cachedNodes:Lcom/sun/org/apache/xml/internal/utils/IntVector;

.field private m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field private m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

.field private m_last:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeListBase;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_last:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeListBase;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_last:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_last:I

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/IntVector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    .line 8
    :goto_0
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-void
.end method


# virtual methods
.method public getDTMAxisIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p0
.end method

.method public getLength()I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->addElement(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_last:I

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_last:I

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->elementAt(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_last:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v1

    if-eq v1, v2, :cond_1

    if-gt v0, p1, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->addElement(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_last:I

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
