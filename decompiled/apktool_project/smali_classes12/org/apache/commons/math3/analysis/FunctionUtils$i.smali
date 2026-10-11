.class public final Lorg/apache/commons/math3/analysis/FunctionUtils$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableMultivariateVectorFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$i;->a:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$i$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$i$a;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$i;)V

    return-object v0
.end method

.method public value([D)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$i;->a:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p0

    return-object p0
.end method
