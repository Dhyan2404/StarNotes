.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultipleNodeCounter;
.super Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultipleNodeCounter$DefaultMultipleNodeCounter;
    }
.end annotation


# instance fields
.field private _precSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultipleNodeCounter;->_precSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-void
.end method

.method public static getDefaultNodeCounter(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultipleNodeCounter$DefaultMultipleNodeCounter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultipleNodeCounter$DefaultMultipleNodeCounter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    return-object v0
.end method


# virtual methods
.method public getCounter()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_value:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "NaN"

    return-object p0

    :cond_1
    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_value:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "-Infinity"

    return-object p0

    :cond_2
    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Infinity"

    return-object p0

    :cond_3
    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_value:D

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->formatNumbers(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;-><init>()V

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_node:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->add(I)V

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getParent(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->matchesFrom(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->add(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->cardinality()I

    move-result v1

    new-array v3, v1, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/high16 v6, -0x80000000

    if-ge v5, v1, :cond_6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    sub-int/2addr v1, v5

    :goto_2
    if-ltz v1, :cond_c

    aget v7, v3, v4

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->at(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->matchesCount(I)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultipleNodeCounter;->_precSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v8, v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultipleNodeCounter;->_precSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v7

    if-eq v7, v2, :cond_9

    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->matchesCount(I)Z

    move-result v7

    if-eqz v7, :cond_7

    aget v7, v3, v4

    if-ne v7, v6, :cond_8

    move v7, v5

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    :goto_4
    aput v7, v3, v4

    goto :goto_3

    :cond_9
    aget v7, v3, v4

    if-ne v7, v6, :cond_a

    move v7, v5

    goto :goto_5

    :cond_a
    add-int/lit8 v7, v7, 0x1

    :goto_5
    aput v7, v3, v4

    :cond_b
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->formatNumbers([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
    .locals 1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_node:I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getExpandedTypeID(I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nodeType:I

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultipleNodeCounter;->_precSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p0
.end method
