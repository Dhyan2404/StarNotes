.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/DifferentiableUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/DifferentiableUnivariateSolver;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public k:Lorg/apache/commons/math3/analysis/UnivariateFunction;


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
.method public computeDerivativeObjectiveValue(D)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->incrementEvaluationCount()V

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->k:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public setup(ILorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;DDD)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 3
    invoke-interface {p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->k:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    return-void
.end method

.method public bridge synthetic setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;DDD)V

    return-void
.end method
