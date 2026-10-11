.class Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnionPathPartOwner"
.end annotation


# instance fields
.field m_index:I

.field final synthetic this$0:Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    return-void
.end method


# virtual methods
.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;

    invoke-static {v0}, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->access$000(Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;)[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    move-result-object v0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;

    invoke-static {v0}, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->access$000(Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;)[Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    move-result-object v0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    check-cast p1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    aput-object p1, v0, p0

    return-void
.end method
