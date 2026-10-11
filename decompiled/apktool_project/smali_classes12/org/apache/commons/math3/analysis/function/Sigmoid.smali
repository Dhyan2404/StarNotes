.class public Lorg/apache/commons/math3/analysis/function/Sigmoid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;
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
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Sigmoid;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->e:D

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->f:D

    return-void
.end method

.method public static synthetic a(DDD)D
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->b(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static b(DDD)D
    .locals 2

    sub-double/2addr p4, p2

    neg-double p0, p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    div-double/2addr p4, p0

    add-double/2addr p2, p4

    return-wide p2
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

    .line 1
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->e:D

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->f:D

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->b(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    .line 5
    iget-wide v4, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->e:D

    aput-wide v4, v3, v9

    .line 6
    invoke-static {v3, v2, v1, v7, v8}, Ljava/util/Arrays;->fill([DIID)V

    :goto_0
    move-object/from16 v0, p1

    goto :goto_4

    .line 7
    :cond_0
    new-array v6, v1, [D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double v12, v4, v10

    div-double v12, v10, v12

    .line 8
    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->f:D

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->e:D

    sub-double/2addr v14, v7

    move v7, v9

    :goto_1
    if-ge v7, v1, :cond_3

    .line 9
    aput-wide v10, v6, v7

    move v8, v7

    const-wide/16 v16, 0x0

    :goto_2
    if-ltz v8, :cond_2

    mul-double v16, v16, v4

    .line 10
    aget-wide v18, v6, v8

    add-double v16, v16, v18

    if-le v8, v2, :cond_1

    add-int/lit8 v2, v8, -0x1

    sub-int v19, v7, v8

    add-int/lit8 v10, v19, 0x2

    int-to-double v10, v10

    add-int/lit8 v19, v8, -0x2

    .line 11
    aget-wide v20, v6, v19

    mul-double v10, v10, v20

    move-wide/from16 v20, v10

    int-to-double v9, v2

    aget-wide v22, v6, v2

    mul-double v9, v9, v22

    sub-double v10, v20, v9

    aput-wide v10, v6, v2

    const/4 v2, 0x0

    const-wide/16 v9, 0x0

    goto :goto_3

    :cond_1
    move v2, v9

    const-wide/16 v9, 0x0

    .line 12
    aput-wide v9, v6, v2

    :goto_3
    add-int/lit8 v8, v8, -0x1

    move v9, v2

    const/4 v2, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_2
    move v2, v9

    const-wide/16 v9, 0x0

    mul-double/2addr v14, v12

    mul-double v16, v16, v14

    .line 13
    aput-wide v16, v3, v7

    add-int/lit8 v7, v7, 0x1

    move v9, v2

    const/4 v2, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_3
    move v2, v9

    .line 14
    aget-wide v4, v3, v2

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->e:D

    add-double/2addr v4, v0

    aput-wide v4, v3, v2

    goto :goto_0

    .line 15
    :goto_4
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method
