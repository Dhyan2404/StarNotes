.class public Lorg/apache/commons/math3/optimization/fitting/HarmonicFitter;
.super Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/fitting/HarmonicFitter$ParameterGuesser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<",
        "Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;-><init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V

    return-void
.end method


# virtual methods
.method public fit()[D
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/commons/math3/optimization/fitting/HarmonicFitter$ParameterGuesser;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->getObservations()[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optimization/fitting/HarmonicFitter$ParameterGuesser;-><init>([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/HarmonicFitter$ParameterGuesser;->guess()[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/fitting/HarmonicFitter;->fit([D)[D

    move-result-object p0

    return-object p0
.end method

.method public fit([D)[D
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;->fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object p0

    return-object p0
.end method
