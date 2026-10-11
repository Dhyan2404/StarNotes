.class public Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;
    }
.end annotation


# instance fields
.field m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

.field m_keys:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-void
.end method


# virtual methods
.method public compare(Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;ILcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;

    iget-boolean v1, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_treatAsNumbers:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    if-nez p3, :cond_0

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v1, p2, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_0

    :cond_0
    if-ne p3, v4, :cond_1

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v1, p2, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_selectPat:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iget v6, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-virtual {v1, v5, v6, v7}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v1

    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_selectPat:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iget v7, p2, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget-object v8, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v6

    invoke-virtual {v5}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v8

    move-wide v5, v6

    move-wide v7, v8

    :goto_0
    cmpl-double v1, v5, v7

    if-nez v1, :cond_2

    add-int/lit8 v1, p3, 0x1

    iget-object v9, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->compare(Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;ILcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result v0

    goto/16 :goto_6

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide/16 v9, 0x0

    if-eqz v1, :cond_4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_3

    move-wide v5, v9

    goto :goto_1

    :cond_3
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_4
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_5
    sub-double/2addr v5, v7

    :goto_1
    cmpg-double v1, v5, v9

    if-gez v1, :cond_8

    iget-boolean v0, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_descending:Z

    if-eqz v0, :cond_7

    :cond_6
    move v2, v4

    goto/16 :goto_5

    :cond_7
    :goto_2
    move v2, v3

    goto/16 :goto_5

    :cond_8
    cmpl-double v1, v5, v9

    if-lez v1, :cond_e

    iget-boolean v0, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_descending:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_9
    if-nez p3, :cond_a

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v1, Ljava/text/CollationKey;

    iget-object v5, p2, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v5, Ljava/text/CollationKey;

    goto :goto_3

    :cond_a
    if-ne p3, v4, :cond_b

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v1, Ljava/text/CollationKey;

    iget-object v5, p2, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v5, Ljava/text/CollationKey;

    goto :goto_3

    :cond_b
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_selectPat:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iget v6, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-virtual {v1, v5, v6, v7}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v1

    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_selectPat:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iget v7, p2, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget-object v8, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v5

    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    invoke-virtual {v5}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v5

    :goto_3
    invoke-virtual {v1, v5}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v6

    iget-boolean v7, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_caseOrderUpper:Z

    if-eqz v7, :cond_d

    invoke-virtual {v1}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-nez v6, :cond_c

    goto :goto_4

    :cond_c
    neg-int v2, v6

    goto :goto_4

    :cond_d
    move v2, v6

    :goto_4
    iget-boolean v0, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_descending:Z

    if-eqz v0, :cond_e

    neg-int v0, v2

    goto :goto_6

    :cond_e
    :goto_5
    move v0, v2

    :goto_6
    if-nez v0, :cond_f

    add-int/2addr p3, v4

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p3, v1, :cond_f

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->compare(Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;ILcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result v0

    :cond_f
    if-nez v0, :cond_11

    iget p0, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_node:I

    invoke-virtual {p4, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    iget p1, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget p2, p2, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_node:I

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->isNodeAfter(II)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_7

    :cond_10
    move v3, v4

    :goto_7
    move v0, v3

    :cond_11
    return v0
.end method

.method public mergesort(Ljava/util/Vector;Ljava/util/Vector;IILcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sub-int v0, p4, p3

    if-lez v0, :cond_7

    add-int v0, p4, p3

    div-int/lit8 v0, v0, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, v0

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILcom/sun/org/apache/xpath/internal/XPathContext;)V

    add-int/lit8 v7, v0, 0x1

    move v4, v7

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILcom/sun/org/apache/xpath/internal/XPathContext;)V

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-gt v7, p4, :cond_3

    add-int v1, p4, v0

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v7

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v0, p3

    move v1, p4

    :goto_4
    if-gt p3, p4, :cond_7

    if-ne v0, v1, :cond_4

    const/4 v2, -0x1

    goto :goto_5

    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, p5}, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->compare(Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;ILcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result v2

    :goto_5
    if-gez v2, :cond_5

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2, p3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    if-lez v2, :cond_6

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2, p3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, -0x1

    :cond_6
    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public sort(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;Ljava/util/Vector;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getLength()I

    move-result p2

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    if-ge v0, p2, :cond_0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->item(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;I)V

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, p2, -0x1

    move-object v0, p0

    move-object v1, v6

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILcom/sun/org/apache/xpath/internal/XPathContext;)V

    move p0, v7

    :goto_1
    if-ge p0, p2, :cond_1

    invoke-virtual {v6, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;

    iget p3, p3, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_node:I

    invoke-interface {p1, p3, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setItem(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setCurrentPos(I)V

    return-void
.end method
