.class public Lorg/apache/commons/math3/fitting/CurveFitter$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/CurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field public final synthetic b:Lorg/apache/commons/math3/fitting/CurveFitter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/CurveFitter$a;->b:Lorg/apache/commons/math3/fitting/CurveFitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/math3/fitting/CurveFitter$a;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/fitting/CurveFitter$a;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/CurveFitter$a;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    return-object p0
.end method


# virtual methods
.method public b()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;

    new-instance v1, Lorg/apache/commons/math3/fitting/CurveFitter$a$a;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/fitting/CurveFitter$a$a;-><init>(Lorg/apache/commons/math3/fitting/CurveFitter$a;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;-><init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;)V

    return-object v0
.end method

.method public c()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;

    new-instance v1, Lorg/apache/commons/math3/fitting/CurveFitter$a$b;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/fitting/CurveFitter$a$b;-><init>(Lorg/apache/commons/math3/fitting/CurveFitter$a;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;-><init>(Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)V

    return-object v0
.end method
