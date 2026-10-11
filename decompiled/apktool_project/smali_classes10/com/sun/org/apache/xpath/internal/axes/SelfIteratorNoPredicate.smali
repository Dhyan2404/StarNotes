.class public Lcom/sun/org/apache/xpath/internal/axes/SelfIteratorNoPredicate;
.super Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x3aa8ec27a3992a39L


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V

    return-void
.end method


# virtual methods
.method public asNode(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result p0

    return p0
.end method

.method public getLastPos(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public nextNode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    return v0

    :cond_2
    iput-boolean v2, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    return v1
.end method
