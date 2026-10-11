.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field public final e:Lorg/apache/commons/math3/analysis/MultivariateFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;->e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    return-void
.end method


# virtual methods
.method public getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;->e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    return-object p0
.end method
