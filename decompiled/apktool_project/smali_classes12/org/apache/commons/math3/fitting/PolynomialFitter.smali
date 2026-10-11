.class public Lorg/apache/commons/math3/fitting/PolynomialFitter;
.super Lorg/apache/commons/math3/fitting/CurveFitter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/fitting/CurveFitter<",
        "Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/CurveFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    return-void
.end method


# virtual methods
.method public fit(I[D)[D
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/math3/fitting/CurveFitter;->fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object p0

    return-object p0
.end method

.method public fit([D)[D
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/fitting/CurveFitter;->fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object p0

    return-object p0
.end method
