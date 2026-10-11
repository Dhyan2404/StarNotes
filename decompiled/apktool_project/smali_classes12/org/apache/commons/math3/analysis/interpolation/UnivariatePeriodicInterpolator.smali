.class public Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# static fields
.field public static final DEFAULT_EXTEND:I = 0x5


# instance fields
.field public final e:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field public final f:D

.field public final g:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;D)V
    .locals 1

    const/4 v0, 0x5

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;-><init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;DI)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;DI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->e:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->f:D

    .line 4
    iput p4, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->g:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->f:D

    return-wide v0
.end method


# virtual methods
.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->g:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    const/4 v2, 0x0

    aget-wide v11, v1, v2

    array-length v3, v1

    iget v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->g:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    new-array v13, v3, [D

    new-array v14, v3, [D

    move v15, v2

    :goto_0
    array-length v5, v1

    if-ge v15, v5, :cond_0

    iget v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->g:I

    add-int v16, v15, v5

    aget-wide v5, v1, v15

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->f:D

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v5

    aput-wide v5, v13, v16

    aget-wide v5, p2, v15

    aput-wide v5, v14, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    move v15, v2

    :goto_1
    iget v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->g:I

    if-ge v15, v5, :cond_1

    array-length v6, v1

    sub-int/2addr v6, v5

    add-int v16, v6, v15

    aget-wide v5, v1, v16

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->f:D

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v5

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->f:D

    sub-double/2addr v5, v7

    aput-wide v5, v13, v15

    aget-wide v5, p2, v16

    aput-wide v5, v14, v15

    iget v5, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->g:I

    sub-int v5, v3, v5

    add-int v16, v5, v15

    aget-wide v5, v1, v15

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v5

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->f:D

    add-double/2addr v5, v7

    aput-wide v5, v13, v16

    aget-wide v5, p2, v15

    aput-wide v5, v14, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v4, [[D

    aput-object v14, v1, v2

    invoke-static {v13, v1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->e:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {v1, v13, v14}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$a;

    invoke-direct {v2, v0, v1, v11, v12}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$a;-><init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)V

    return-object v2

    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, v0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method
