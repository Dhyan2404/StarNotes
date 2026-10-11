.class Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArgMultiOwner"
.end annotation


# instance fields
.field m_argIndex:I

.field final synthetic this$0:Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    return-void
.end method


# virtual methods
.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;

    iget-object v0, v0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;

    iget-object v0, v0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs;->m_args:[Lcom/sun/org/apache/xpath/internal/Expression;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    aput-object p1, v0, p0

    return-void
.end method
