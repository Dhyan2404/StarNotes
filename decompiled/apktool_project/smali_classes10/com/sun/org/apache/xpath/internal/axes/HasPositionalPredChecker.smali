.class public Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;
.super Lcom/sun/org/apache/xpath/internal/XPathVisitor;
.source "SourceFile"


# instance fields
.field private m_hasPositionalPred:Z

.field private m_predDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;->m_predDepth:I

    return-void
.end method

.method public static check(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Z
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    iget-boolean p0, v0, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    return p0
.end method


# virtual methods
.method public visitFunction(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/functions/Function;)Z
    .locals 1

    instance-of p1, p2, Lcom/sun/org/apache/xpath/internal/functions/FuncPosition;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    instance-of p1, p2, Lcom/sun/org/apache/xpath/internal/functions/FuncLast;

    if-eqz p1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    :cond_1
    return v0
.end method

.method public visitPredicate(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;->m_predDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;->m_predDepth:I

    if-ne v0, v1, :cond_2

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/operations/Variable;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/operations/Div;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/operations/Plus;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/operations/Minus;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/operations/Mod;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/operations/Quo;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/operations/Mult;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/operations/Number;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sun/org/apache/xpath/internal/functions/Function;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    :cond_2
    :goto_1
    iget p1, p0, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;->m_predDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/HasPositionalPredChecker;->m_predDepth:I

    const/4 p0, 0x0

    return p0
.end method
