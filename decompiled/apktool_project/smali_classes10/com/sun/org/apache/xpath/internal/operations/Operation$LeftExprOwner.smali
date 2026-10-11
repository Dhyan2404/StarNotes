.class Lcom/sun/org/apache/xpath/internal/operations/Operation$LeftExprOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xpath/internal/operations/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LeftExprOwner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xpath/internal/operations/Operation;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/operations/Operation;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation$LeftExprOwner;->this$0:Lcom/sun/org/apache/xpath/internal/operations/Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation$LeftExprOwner;->this$0:Lcom/sun/org/apache/xpath/internal/operations/Operation;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation$LeftExprOwner;->this$0:Lcom/sun/org/apache/xpath/internal/operations/Operation;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation$LeftExprOwner;->this$0:Lcom/sun/org/apache/xpath/internal/operations/Operation;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method
