.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final synthetic b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->a:Z

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;[D)[D
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->d([D)[D

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b([D)Z
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getLowerBound()[D

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getUpperBound()[D

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-wide v3, p1, v2

    aget-wide v5, v0, v2

    cmpg-double v5, v3, v5

    if-gez v5, :cond_0

    return v1

    :cond_0
    aget-wide v5, p0, v2

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final c([D[D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->b(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    neg-double v0, v0

    :goto_1
    return-wide v0
.end method

.method public final d([D)[D
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getLowerBound()[D

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getUpperBound()[D

    move-result-object p0

    array-length v1, p1

    new-array v1, v1, [D

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-wide v3, p1, v2

    aget-wide v5, v0, v2

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    aput-wide v5, v1, v2

    goto :goto_1

    :cond_0
    aget-wide v5, p0, v2

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    aput-wide v5, v1, v2

    goto :goto_1

    :cond_1
    aput-wide v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public e([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$c;
    .locals 5

    iget-boolean v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->d([D)[D

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->c([D[D)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    :goto_0
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->b(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    neg-double v1, v1

    :goto_1
    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$b;->b:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    invoke-static {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->b(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    neg-double v3, v3

    :goto_2
    new-instance p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$c;

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$c;-><init>(DD)V

    return-object p0
.end method
