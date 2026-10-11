.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field public final e:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;->e:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    return-void
.end method


# virtual methods
.method public getObjectiveFunctionGradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;->e:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    return-object p0
.end method
