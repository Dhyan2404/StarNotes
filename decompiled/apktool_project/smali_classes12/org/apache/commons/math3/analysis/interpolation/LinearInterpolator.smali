.class public Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p0

    return-object p0
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 2
    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_3

    .line 3
    array-length p0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lt p0, v0, :cond_2

    .line 4
    array-length p0, p1

    sub-int/2addr p0, v1

    .line 5
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 6
    new-array v2, p0, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p0, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 7
    aget-wide v6, p2, v5

    aget-wide v8, p2, v4

    sub-double/2addr v6, v8

    aget-wide v8, p1, v5

    aget-wide v10, p1, v4

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    aput-wide v6, v2, v4

    move v4, v5

    goto :goto_0

    .line 8
    :cond_0
    new-array v4, p0, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    new-array v0, v0, [D

    move v5, v3

    :goto_1
    if-ge v5, p0, :cond_1

    .line 9
    aget-wide v6, p2, v5

    aput-wide v6, v0, v3

    .line 10
    aget-wide v6, v2, v5

    aput-wide v6, v0, v1

    .line 11
    new-instance v6, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v6, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object p0

    .line 13
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 14
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method
