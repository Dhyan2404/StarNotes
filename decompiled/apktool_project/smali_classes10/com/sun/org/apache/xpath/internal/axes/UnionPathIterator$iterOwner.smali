.class Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "iterOwner"
.end annotation


# instance fields
.field m_index:I

.field final synthetic this$0:Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;->this$0:Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;->m_index:I

    return-void
.end method


# virtual methods
.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;->this$0:Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;

    iget-object v0, v0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;->m_index:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 3

    instance-of v0, p1, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;->this$0:Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getPrefixResolver()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    new-instance v1, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->setFirstWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;->setInnerExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;->this$0:Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;->this$0:Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;->this$0:Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;

    iget-object v0, v0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->m_exprs:[Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator$iterOwner;->m_index:I

    check-cast p1, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    aput-object p1, v0, p0

    return-void
.end method
