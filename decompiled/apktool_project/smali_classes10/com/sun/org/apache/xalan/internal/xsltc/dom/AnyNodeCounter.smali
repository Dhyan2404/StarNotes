.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/dom/AnyNodeCounter;
.super Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/AnyNodeCounter$DefaultAnyNodeCounter;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    return-void
.end method

.method public static getDefaultNodeCounter(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AnyNodeCounter$DefaultAnyNodeCounter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AnyNodeCounter$DefaultAnyNodeCounter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    return-object v0
.end method


# virtual methods
.method public getCounter()Ljava/lang/String;
    .locals 5

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
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_node:I

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocument()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->matchesFrom(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->matchesCount(I)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->formatNumbers(I)Ljava/lang/String;

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

    return-object p0
.end method
