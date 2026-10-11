.class public Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;
.super Lcom/sun/org/apache/xpath/internal/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x5c9232e74e04ed5cL


# instance fields
.field private m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/Expression;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;)[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    return-object p0
.end method


# virtual methods
.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 3

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitUnionPattern(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;)Z

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz p1, :cond_0

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    aget-object v1, v1, v0

    new-instance v2, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;

    invoke-direct {v2, p0, v0}, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;-><init>(Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;I)V

    invoke-virtual {v1, v2, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->isSameClass(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz v0, :cond_4

    array-length v0, v0

    iget-object v2, p1, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz v2, :cond_3

    array-length v2, v2

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    iget-object p0, p1, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eq v3, v4, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    :goto_1
    move-object v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    sget-object v1, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->SCORE_NONE:Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    :cond_3
    return-object v1
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getPatterns()[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    return-object p0
.end method

.method public setPatterns([Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->m_patterns:[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
