.class public Lorg/apache/commons/math3/analysis/solvers/NewtonSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final l:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/NewtonSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;-><init>(D)V

    return-void
.end method


# virtual methods
.method public doSolve()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getStartValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v4

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->computeDerivativeObjectiveValue(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    sub-double v4, v0, v4

    sub-double v0, v4, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    return-wide v4

    :cond_0
    move-wide v0, v4

    goto :goto_0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    invoke-static {p3, p4, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide p3

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/NewtonSolver;->solve(ILorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;DD)D

    move-result-wide p0

    return-wide p0
.end method
