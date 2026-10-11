.class final Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LookAheadIterator"
.end annotation


# instance fields
.field public isStartSet:Z

.field public iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

.field public markedNode:I

.field public node:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->isStartSet:Z

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-void
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    iput v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    iput p0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->markedNode:I

    return-object v0
.end method

.method public gotoMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->markedNode:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->gotoMark()V

    return-void
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->markedNode:I

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setMark()V

    return-void
.end method

.method public step()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->iterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator$LookAheadIterator;->node:I

    return v0
.end method
