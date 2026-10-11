.class public Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;->e:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    return-void
.end method


# virtual methods
.method public getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;->e:Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    return-object p0
.end method
