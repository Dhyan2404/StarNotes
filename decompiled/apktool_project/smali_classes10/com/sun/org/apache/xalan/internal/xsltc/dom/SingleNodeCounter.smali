.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;
.super Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter$DefaultSingleNodeCounter;
    }
.end annotation


# static fields
.field private static final EmptyArray:[I


# instance fields
.field _countSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;->EmptyArray:[I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;->_countSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-void
.end method

.method public static getDefaultNodeCounter(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter$DefaultSingleNodeCounter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter$DefaultSingleNodeCounter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

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

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_node:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->matchesCount(I)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->_document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getParent(I)I

    move-result v0

    if-le v0, v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->matchesCount(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->matchesFrom(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    :cond_7
    :goto_0
    if-eq v0, v2, :cond_a

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;->_countSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    const/4 v1, 0x0

    :cond_8
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->matchesCount(I)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;->_countSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    if-ne v0, v2, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->formatNumbers(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;->EmptyArray:[I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeCounter;->formatNumbers([I)Ljava/lang/String;

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

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingleNodeCounter;->_countSiblings:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p0
.end method
