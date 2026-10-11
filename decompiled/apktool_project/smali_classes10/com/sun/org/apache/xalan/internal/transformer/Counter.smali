.class public Lcom/sun/org/apache/xalan/internal/transformer/Counter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MAXCOUNTNODES:I = 0x1f4


# instance fields
.field m_countNodes:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

.field m_countNodesStartCount:I

.field m_countResult:I

.field m_fromNode:I

.field m_numberElem:Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;Lcom/sun/org/apache/xpath/internal/NodeSetDTM;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodesStartCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_fromNode:I

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodes:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_numberElem:Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;

    return-void
.end method


# virtual methods
.method public getLast()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodes:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodes:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->elementAt(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getPreviouslyCounted(Lcom/sun/org/apache/xpath/internal/XPathContext;I)I
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodes:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->size()I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countResult:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodes:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->elementAt(I)I

    move-result v1

    if-ne p2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodesStartCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countResult:I

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->isNodeAfter(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countResult:I

    return p0
.end method
