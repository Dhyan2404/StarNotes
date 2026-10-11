.class public Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;
.super Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern$FunctionOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x4b4fd7db58bb32d8L


# instance fields
.field m_functionExpr:Lcom/sun/org/apache/xpath/internal/Expression;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/Expression;II)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;->m_functionExpr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method


# virtual methods
.method public final calcScore()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->m_score:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->calcTargetString()V

    :cond_0
    return-void
.end method

.method public callSubtreeVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;->m_functionExpr:Lcom/sun/org/apache/xpath/internal/Expression;

    new-instance v1, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern$FunctionOwner;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern$FunctionOwner;-><init>(Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;)V

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    invoke-super {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->callSubtreeVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    return-void
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    .line 14
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;->m_functionExpr:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->asIterator(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    .line 15
    sget-object p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eqz p0, :cond_3

    .line 16
    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    if-ne v1, v0, :cond_1

    .line 17
    sget-object p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    .line 18
    :goto_0
    sget-object v1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-ne p1, v1, :cond_0

    .line 19
    :cond_2
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    :cond_3
    return-object p1
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;->m_functionExpr:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->asIterator(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    .line 2
    sget-object p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eqz p0, :cond_2

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    if-ne v0, p2, :cond_1

    .line 4
    sget-object p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    .line 5
    :goto_0
    sget-object v0, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-ne p1, v0, :cond_0

    .line 6
    :cond_2
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    return-object p1
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;->m_functionExpr:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->asIterator(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    .line 8
    sget-object p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eqz p0, :cond_3

    .line 9
    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result p3

    const/4 p4, -0x1

    if-eq p4, p3, :cond_2

    if-ne p3, p2, :cond_1

    .line 10
    sget-object p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    .line 11
    :goto_0
    sget-object p3, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_OTHER:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-ne p1, p3, :cond_0

    .line 12
    :cond_2
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    :cond_3
    return-object p1
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;->m_functionExpr:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method
