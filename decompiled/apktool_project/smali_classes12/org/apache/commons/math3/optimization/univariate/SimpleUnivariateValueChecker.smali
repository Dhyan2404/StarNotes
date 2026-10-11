.class public Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;
.super Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker<",
        "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final f:I = -0x1


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->e:I

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;-><init>(DD)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->e:I

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;-><init>(DD)V

    if-lez p5, :cond_0

    .line 6
    iput p5, p0, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->e:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    check-cast p3, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->converged(ILorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;)Z

    move-result p0

    return p0
.end method

.method public converged(ILorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;)Z
    .locals 5

    .line 2
    iget v0, p0, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-lt p1, v0, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide p1

    .line 4
    invoke-virtual {p3}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    sub-double v3, p1, v0

    .line 5
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 6
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p1

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->getRelativeThreshold()D

    move-result-wide v0

    mul-double/2addr p1, v0

    cmpg-double p1, v3, p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->getAbsoluteThreshold()D

    move-result-wide p0

    cmpg-double p0, v3, p0

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method
