.class Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction$ArgExtOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArgExtOwner"
.end annotation


# instance fields
.field m_exp:Lcom/sun/org/apache/xpath/internal/Expression;

.field final synthetic this$0:Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction$ArgExtOwner;->this$0:Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction$ArgExtOwner;->m_exp:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method


# virtual methods
.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction$ArgExtOwner;->m_exp:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction$ArgExtOwner;->this$0:Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction$ArgExtOwner;->m_exp:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method
