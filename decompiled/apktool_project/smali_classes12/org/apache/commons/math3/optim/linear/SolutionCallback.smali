.class public Lorg/apache/commons/math3/optim/linear/SolutionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field public e:Lorg/apache/commons/math3/optim/linear/SimplexTableau;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->e:Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    return-void
.end method

.method public getSolution()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->e:Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isSolutionOptimal()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->e:Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->isOptimal()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
