.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/PolynomialSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/PolynomialSolver;"
    }
.end annotation


# instance fields
.field public k:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method


# virtual methods
.method public getCoefficients()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->k:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->getCoefficients()[D

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
    check-cast p2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    return-void
.end method

.method public setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->k:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    return-void
.end method
