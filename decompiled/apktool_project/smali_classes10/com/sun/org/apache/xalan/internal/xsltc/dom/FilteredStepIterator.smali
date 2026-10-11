.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/FilteredStepIterator;
.super Lcom/sun/org/apache/xalan/internal/xsltc/dom/StepIterator;
.source "SourceFile"


# instance fields
.field private _filter:Lcom/sun/org/apache/xalan/internal/xsltc/dom/Filter;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xalan/internal/xsltc/dom/Filter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/StepIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/FilteredStepIterator;->_filter:Lcom/sun/org/apache/xalan/internal/xsltc/dom/Filter;

    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/StepIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/FilteredStepIterator;->_filter:Lcom/sun/org/apache/xalan/internal/xsltc/dom/Filter;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/Filter;->test(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method
