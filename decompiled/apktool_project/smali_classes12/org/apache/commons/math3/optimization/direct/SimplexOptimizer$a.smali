.class public Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$a;->e:Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$a;->e:Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide p0

    return-wide p0
.end method
