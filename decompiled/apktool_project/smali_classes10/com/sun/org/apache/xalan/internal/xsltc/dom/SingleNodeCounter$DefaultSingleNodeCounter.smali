.class Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter$DefaultSingleNodeCounter;
.super Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultSingleNodeCounter"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    return-void
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

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;->_countSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_node:I

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;->_countSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->formatNumbers(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
    .locals 2

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_node:I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getExpandedTypeID(I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_nodeType:I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    const/16 v1, 0xc

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getExpandedTypeID(I)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;->_countSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p0
.end method
