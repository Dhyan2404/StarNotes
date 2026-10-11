.class public Lcom/sun/org/apache/xpath/internal/axes/AttributeIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x74d2b24dcbea3b36L


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    return-void
.end method


# virtual methods
.method public getAxis()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getNextNode()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method
