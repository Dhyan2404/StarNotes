.class public Lorg/apache/commons/math3/analysis/function/Logit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Logit$Parametric;
    }
.end annotation


# instance fields
.field public final e:D

.field public final f:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Logit;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Logit;->e:D

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Logit;->f:D

    return-void
.end method

.method public static synthetic a(DDD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Logit;->b(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static b(DDD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    cmpl-double v0, p0, p4

    if-gtz v0, :cond_0

    sub-double p2, p0, p2

    sub-double/2addr p4, p0

    div-double/2addr p2, p4

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object p0

    return-object p0
.end method

.method public value(D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->e:D

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Logit;->f:D

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Logit;->b(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->e:D

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_3

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->f:D

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_3

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v4, v2, [D

    .line 5
    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/function/Logit;->e:D

    sub-double v5, v0, v5

    iget-wide v7, p0, Lorg/apache/commons/math3/analysis/function/Logit;->f:D

    sub-double/2addr v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    if-le v2, v3, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 7
    aput-wide v0, v4, v3

    :cond_0
    const/4 p0, 0x2

    :goto_0
    if-ge p0, v2, :cond_2

    add-int/lit8 v0, p0, -0x2

    .line 8
    aget-wide v0, v4, v0

    aput-wide v0, v4, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/function/Logit;->e:D

    sub-double v5, v0, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    .line 10
    iget-wide v9, p0, Lorg/apache/commons/math3/analysis/function/Logit;->f:D

    sub-double/2addr v9, v0

    div-double/2addr v7, v9

    move-wide v0, v5

    move-wide v9, v7

    :goto_1
    if-ge v3, v2, :cond_2

    add-double v11, v0, v9

    .line 11
    aput-wide v11, v4, v3

    neg-int p0, v3

    int-to-double v11, p0

    mul-double/2addr v11, v5

    mul-double/2addr v0, v11

    int-to-double v11, v3

    mul-double/2addr v11, v7

    mul-double/2addr v9, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/function/Logit;->e:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logit;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method
