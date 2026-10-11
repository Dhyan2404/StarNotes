.class public final synthetic Lcom/sunia/HTREnginev2/f8g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/flwor/OperandProcessor;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/parser/ExpressionVisitor;

.field public final synthetic b:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f8g;->a:Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/f8g;->b:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    return-void
.end method


# virtual methods
.method public final processOperand(Lnet/sf/saxon/expr/Operand;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/f8g;->a:Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f8g;->b:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->e(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method
