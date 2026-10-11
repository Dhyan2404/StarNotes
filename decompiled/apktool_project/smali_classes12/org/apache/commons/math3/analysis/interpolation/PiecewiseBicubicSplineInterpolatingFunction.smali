.class public Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field public static final d:I = 0x5


# instance fields
.field public final a:[D

.field public final b:[D

.field public final c:[[D


# direct methods
.method public constructor <init>([D[D[[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    aget-object v1, p3, v0

    if-eqz v1, :cond_4

    array-length v2, p1

    array-length v3, p2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    array-length v4, p3

    if-eqz v4, :cond_3

    array-length v4, v1

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    if-lt v3, v4, :cond_2

    array-length v5, p3

    if-lt v5, v4, :cond_2

    array-length v5, v1

    if-lt v5, v4, :cond_2

    array-length v4, p3

    if-ne v2, v4, :cond_1

    array-length v1, v1

    if-ne v3, v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->a:[D

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->b:[D

    invoke-virtual {p3}, [[D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->c:[[D

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p1, p3, v0

    array-length p1, p1

    invoke-direct {p0, v3, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p3

    invoke-direct {p0, v2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(D[DII)I
    .locals 2

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    array-length v0, p3

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq p0, v0, :cond_3

    if-gez p0, :cond_0

    neg-int p0, p0

    sub-int/2addr p0, p4

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p0, p4

    :goto_0
    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, p0

    :goto_1
    add-int p0, v1, p5

    array-length p1, p3

    if-lt p0, p1, :cond_2

    array-length p0, p3

    sub-int v1, p0, p5

    :cond_2
    return v1

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aget-wide p4, p3, v1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    array-length p4, p3

    add-int/lit8 p4, p4, -0x1

    aget-wide p3, p3, p4

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public isValidPoint(DD)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->a:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double p1, p1, v4

    if-gtz p1, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->b:[D

    aget-wide p1, p0, v1

    cmpg-double p1, p3, p1

    if-ltz p1, :cond_1

    array-length p1, p0

    sub-int/2addr p1, v3

    aget-wide p0, p0, p1

    cmpl-double p0, p3, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method public value(DD)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    move-object/from16 v6, p0

    new-instance v7, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;

    invoke-direct {v7}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;-><init>()V

    iget-object v3, v6, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->a:[D

    const/4 v4, 0x2

    const/4 v5, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->a(D[DII)I

    move-result v8

    iget-object v3, v6, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->b:[D

    move-wide/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->a(D[DII)I

    move-result v0

    const/4 v1, 0x5

    new-array v2, v1, [D

    new-array v3, v1, [D

    new-array v4, v1, [D

    new-array v5, v1, [D

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v1, :cond_0

    iget-object v11, v6, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->a:[D

    add-int v12, v8, v10

    aget-wide v11, v11, v12

    aput-wide v11, v2, v10

    iget-object v11, v6, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->b:[D

    add-int v12, v0, v10

    aget-wide v11, v11, v12

    aput-wide v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_1
    if-ge v10, v1, :cond_2

    move v11, v9

    :goto_2
    if-ge v11, v1, :cond_1

    iget-object v12, v6, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->c:[[D

    add-int v13, v8, v11

    aget-object v12, v12, v13

    add-int v13, v0, v10

    aget-wide v12, v12, v13

    aput-wide v12, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v7, v2, v4}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v11

    move-wide/from16 v12, p1

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->value(D)D

    move-result-wide v14

    aput-wide v14, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v3, v5}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method
