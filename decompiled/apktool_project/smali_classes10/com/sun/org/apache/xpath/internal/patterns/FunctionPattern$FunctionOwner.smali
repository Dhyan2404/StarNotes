.class Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern$FunctionOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FunctionOwner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern$FunctionOwner;->this$0:Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern$FunctionOwner;->this$0:Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;->m_functionExpr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern$FunctionOwner;->this$0:Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern$FunctionOwner;->this$0:Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;->m_functionExpr:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method
