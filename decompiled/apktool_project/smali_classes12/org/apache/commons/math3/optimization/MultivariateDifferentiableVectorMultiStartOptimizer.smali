.class public Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorMultiStartOptimizer;
.super Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer<",
        "Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/MultivariateDifferentiableVectorOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V

    return-void
.end method
