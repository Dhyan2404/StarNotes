.class public Lorg/apache/commons/math3/analysis/function/Minus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance p0, Lorg/apache/commons/math3/analysis/function/Constant;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/function/Constant;-><init>(D)V

    return-object p0
.end method

.method public bridge synthetic derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/function/Minus;->derivative()Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object p0

    return-object p0
.end method

.method public value(D)D
    .locals 0

    .line 1
    neg-double p0, p1

    return-wide p0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method
