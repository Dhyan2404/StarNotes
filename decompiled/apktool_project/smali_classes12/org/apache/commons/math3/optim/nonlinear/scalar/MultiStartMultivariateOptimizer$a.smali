.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->c()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/optim/PointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer$a;->e:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/optim/PointValuePair;Lorg/apache/commons/math3/optim/PointValuePair;)I
    .locals 3

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer$a;->e:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;

    invoke-static {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->b(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;)Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object p0

    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne p0, v2, :cond_3

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    :goto_1
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/optim/PointValuePair;

    check-cast p2, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer$a;->a(Lorg/apache/commons/math3/optim/PointValuePair;Lorg/apache/commons/math3/optim/PointValuePair;)I

    move-result p0

    return p0
.end method
