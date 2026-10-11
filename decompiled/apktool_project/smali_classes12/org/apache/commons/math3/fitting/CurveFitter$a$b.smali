.class public Lorg/apache/commons/math3/fitting/CurveFitter$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/CurveFitter$a;->c()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/fitting/CurveFitter$a;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/CurveFitter$a;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/CurveFitter$a$b;->a:Lorg/apache/commons/math3/fitting/CurveFitter$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/CurveFitter$a$b;->a:Lorg/apache/commons/math3/fitting/CurveFitter$a;

    iget-object v0, v0, Lorg/apache/commons/math3/fitting/CurveFitter$a;->b:Lorg/apache/commons/math3/fitting/CurveFitter;

    invoke-static {v0}, Lorg/apache/commons/math3/fitting/CurveFitter;->a(Lorg/apache/commons/math3/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[D

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/CurveFitter$a$b;->a:Lorg/apache/commons/math3/fitting/CurveFitter$a;

    iget-object v1, v1, Lorg/apache/commons/math3/fitting/CurveFitter$a;->b:Lorg/apache/commons/math3/fitting/CurveFitter;

    invoke-static {v1}, Lorg/apache/commons/math3/fitting/CurveFitter;->a(Lorg/apache/commons/math3/fitting/CurveFitter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/apache/commons/math3/fitting/CurveFitter$a$b;->a:Lorg/apache/commons/math3/fitting/CurveFitter$a;

    invoke-static {v5}, Lorg/apache/commons/math3/fitting/CurveFitter$a;->a(Lorg/apache/commons/math3/fitting/CurveFitter$a;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    invoke-interface {v5, v6, v7, p1}, Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;->gradient(D[D)[D

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
