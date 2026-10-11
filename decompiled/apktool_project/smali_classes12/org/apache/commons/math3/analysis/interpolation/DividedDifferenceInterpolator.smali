.class public Lorg/apache/commons/math3/analysis/interpolation/DividedDifferenceInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x17c50f88a3a43fdL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDividedDifference([D[D)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    array-length v1, p0

    new-array v2, v1, [D

    const/4 v3, 0x0

    aget-wide v4, p1, v3

    aput-wide v4, v2, v3

    :goto_0
    if-ge v0, v1, :cond_1

    move v4, v3

    :goto_1
    sub-int v5, v1, v0

    if-ge v4, v5, :cond_0

    add-int v5, v4, v0

    aget-wide v5, p0, v5

    aget-wide v7, p0, v4

    sub-double/2addr v5, v7

    add-int/lit8 v7, v4, 0x1

    aget-wide v8, p1, v7

    aget-wide v10, p1, v4

    sub-double/2addr v8, v10

    div-double/2addr v8, v5

    aput-wide v8, p1, v4

    move v4, v7

    goto :goto_1

    :cond_0
    aget-wide v4, p1, v3

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
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
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/DividedDifferenceInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;

    move-result-object p0

    return-object p0
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    const/4 p0, 0x1

    .line 2
    invoke-static {p1, p2, p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    .line 3
    array-length v0, p1

    sub-int/2addr v0, p0

    new-array p0, v0, [D

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-static {p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/DividedDifferenceInterpolator;->computeDividedDifference([D[D)[D

    move-result-object p1

    .line 6
    new-instance p2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;

    invoke-direct {p2, p1, p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;-><init>([D[D)V

    return-object p2
.end method
