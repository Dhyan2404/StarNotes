.class public Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;
.super Lcom/sun/org/apache/xpath/internal/XPathVisitor;
.source "SourceFile"


# instance fields
.field private m_isAbs:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;->m_isAbs:Z

    return-void
.end method


# virtual methods
.method public checkAbsolute(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;->m_isAbs:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;->m_isAbs:Z

    return p0
.end method

.method public visitFunction(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/functions/Function;)Z
    .locals 0

    instance-of p1, p2, Lcom/sun/org/apache/xpath/internal/functions/FuncCurrent;

    if-nez p1, :cond_0

    instance-of p1, p2, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;->m_isAbs:Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public visitVariableRef(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/operations/Variable;)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/AbsPathChecker;->m_isAbs:Z

    const/4 p0, 0x1

    return p0
.end method
