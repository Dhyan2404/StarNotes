.class public Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field public final e:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;->e:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    return-void
.end method


# virtual methods
.method public getObjectiveFunction()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;->e:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    return-object p0
.end method
