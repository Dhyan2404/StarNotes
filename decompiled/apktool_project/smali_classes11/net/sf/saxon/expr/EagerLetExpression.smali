.class public Lnet/sf/saxon/expr/EagerLetExpression;
.super Lnet/sf/saxon/expr/LetExpression;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    return-void
.end method


# virtual methods
.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/LetExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluator(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/LetExpression;->setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V

    :cond_0
    return-object p1
.end method
