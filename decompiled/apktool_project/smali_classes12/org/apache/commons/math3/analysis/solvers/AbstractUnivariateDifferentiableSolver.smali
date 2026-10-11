.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/UnivariateDifferentiableSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/UnivariateDifferentiableSolver;"
    }
.end annotation


# instance fields
.field public k:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method


# virtual methods
.method public computeObjectiveValueAndDerivative(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->incrementEvaluationCount()V

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->k:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    new-instance v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    invoke-interface {p0, v6}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->setup(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DDD)V

    return-void
.end method

.method public setup(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DDD)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->k:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    return-void
.end method
