.class public final Lorg/apache/commons/math3/analysis/FunctionUtils$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableMultivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$g;->e:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$g$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$g$b;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$g;)V

    return-object v0
.end method

.method public partialDerivative(I)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$g$a;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/FunctionUtils$g$a;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$g;I)V

    return-object v0
.end method

.method public value([D)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$g;->e:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide p0

    return-wide p0
.end method
