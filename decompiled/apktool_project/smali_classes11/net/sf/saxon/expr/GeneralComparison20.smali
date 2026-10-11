.class public Lnet/sf/saxon/expr/GeneralComparison20;
.super Lnet/sf/saxon/expr/GeneralComparison;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/GeneralComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/GeneralComparison20;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/expr/GeneralComparison20;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object p1, v0, Lnet/sf/saxon/expr/GeneralComparison;->comparer:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iget p1, p0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    iput p1, v0, Lnet/sf/saxon/expr/GeneralComparison;->singletonOperator:I

    iget-boolean p1, p0, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/GeneralComparison;->runtimeCheckNeeded:Z

    iget-object p0, p0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    iput-object p0, v0, Lnet/sf/saxon/expr/GeneralComparison;->comparisonCardinality:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    return-object v0
.end method

.method public getInverseComparison()Lnet/sf/saxon/expr/GeneralComparison;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/GeneralComparison20;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-static {v2}, Lnet/sf/saxon/expr/parser/Token;->inverse(I)I

    move-result v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/saxon/expr/GeneralComparison20;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v0
.end method
