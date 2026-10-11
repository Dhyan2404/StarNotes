.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMChildIterNodeList;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeListBase;
.source "SourceFile"


# instance fields
.field private m_firstChild:I

.field private m_parentDTM:Lcom/sun/org/apache/xml/internal/dtm/DTM;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeListBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeListBase;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    .line 4
    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextSibling(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    :goto_0
    const/4 v1, -0x1

    add-int/2addr p1, v1

    if-ltz p1, :cond_0

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextSibling(I)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
