.class public Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;
.super Ljava/util/Hashtable;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x1df6aab6353531a3L


# instance fields
.field transient m_countersMade:I

.field private transient m_newFound:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->m_countersMade:I

    return-void
.end method


# virtual methods
.method public appendBtoFList(Lcom/sun/org/apache/xpath/internal/NodeSetDTM;Lcom/sun/org/apache/xpath/internal/NodeSetDTM;)V
    .locals 1

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->item(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addElement(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public countNode(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->getCounters(Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p2, p1, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getTargetNode(Lcom/sun/org/apache/xpath/internal/XPathContext;I)I

    move-result p3

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v3, p3, :cond_7

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/transformer/Counter;

    invoke-virtual {v5, p1, p3}, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->getPreviouslyCounted(Lcom/sun/org/apache/xpath/internal/XPathContext;I)I

    move-result v5

    if-lez v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->m_newFound:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    if-nez v4, :cond_2

    new-instance v4, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->m_newFound:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    :cond_2
    move v4, v2

    :goto_1
    if-eq v3, p3, :cond_6

    if-eqz v4, :cond_5

    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xalan/internal/transformer/Counter;

    iget-object v7, v6, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodes:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v8, v6, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodes:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v8, v9}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->elementAt(I)I

    move-result v8

    if-ne v8, p3, :cond_4

    iget p1, v6, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodesStartCount:I

    add-int/2addr p1, v7

    add-int/2addr v4, p1

    if-lez v7, :cond_3

    iget-object p1, v6, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodes:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->m_newFound:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->appendBtoFList(Lcom/sun/org/apache/xpath/internal/NodeSetDTM;Lcom/sun/org/apache/xpath/internal/NodeSetDTM;)V

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->m_newFound:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->removeAllElements()V

    return v4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->m_newFound:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {v5, p3}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addElement(I)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;->getPreviousNode(Lcom/sun/org/apache/xpath/internal/XPathContext;I)I

    move-result p3

    goto :goto_1

    :cond_6
    new-instance p3, Lcom/sun/org/apache/xalan/internal/transformer/Counter;

    new-instance v1, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    invoke-direct {p3, p2, v1}, Lcom/sun/org/apache/xalan/internal/transformer/Counter;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;Lcom/sun/org/apache/xpath/internal/NodeSetDTM;)V

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->m_countersMade:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->m_countersMade:I

    iget-object p1, p3, Lcom/sun/org/apache/xalan/internal/transformer/Counter;->m_countNodes:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->m_newFound:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->appendBtoFList(Lcom/sun/org/apache/xpath/internal/NodeSetDTM;Lcom/sun/org/apache/xpath/internal/NodeSetDTM;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->m_newFound:Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->removeAllElements()V

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v4

    :cond_7
    return v2
.end method

.method public getCounters(Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;)Ljava/util/Vector;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/CountersTable;->putElemNumber(Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;)Ljava/util/Vector;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public putElemNumber(Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;)Ljava/util/Vector;
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
