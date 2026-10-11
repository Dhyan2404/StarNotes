.class public Lorg/apache/commons/math3/optimization/DifferentiableMultivariateMultiStartOptimizer;
.super Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/DifferentiableMultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer<",
        "Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/DifferentiableMultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V

    return-void
.end method
