.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# instance fields
.field public e:[D

.field public final f:[D

.field public final g:[D

.field public h:Z


# direct methods
.method public constructor <init>([D[D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->f:[D

    array-length v1, p2

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->g:[D

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->h:Z

    invoke-static {p1, p2, v3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    new-array p1, p0, [[D

    aput-object v1, p1, v3

    invoke-static {v0, p1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    invoke-static {v0, v1, p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    :cond_0
    return-void
.end method

.method public static a([D[DD)D
    .locals 22

    move-object/from16 v0, p0

    array-length v1, v0

    new-array v2, v1, [D

    new-array v3, v1, [D

    const/4 v4, 0x0

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move v7, v4

    move v8, v7

    :goto_0
    if-ge v7, v1, :cond_1

    aget-wide v9, p1, v7

    aput-wide v9, v2, v7

    aget-wide v9, p1, v7

    aput-wide v9, v3, v7

    aget-wide v9, v0, v7

    sub-double v9, p2, v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-gez v11, :cond_0

    move v8, v7

    move-wide v5, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    aget-wide v5, p1, v8

    const/4 v7, 0x1

    :goto_1
    if-ge v7, v1, :cond_4

    move v9, v4

    :goto_2
    sub-int v10, v1, v7

    if-ge v9, v10, :cond_2

    aget-wide v10, v0, v9

    sub-double v12, v10, p2

    add-int v14, v7, v9

    aget-wide v14, v0, v14

    sub-double v16, v14, p2

    sub-double/2addr v10, v14

    add-int/lit8 v14, v9, 0x1

    aget-wide v18, v2, v14

    aget-wide v20, v3, v9

    sub-double v18, v18, v20

    div-double v18, v18, v10

    mul-double v12, v12, v18

    aput-wide v12, v2, v9

    mul-double v16, v16, v18

    aput-wide v16, v3, v9

    move v9, v14

    goto :goto_2

    :cond_2
    int-to-double v11, v8

    add-int/lit8 v10, v10, 0x1

    int-to-double v9, v10

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v9, v13

    cmpg-double v9, v11, v9

    if-gez v9, :cond_3

    aget-wide v9, v2, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, -0x1

    aget-wide v9, v3, v8

    :goto_3
    add-double/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-wide v5
.end method

.method public static evaluate([D[DD)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->a([D[DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [D

    array-length v2, p1

    new-array v2, v2, [D

    array-length v3, p0

    invoke-static {p0, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p1

    invoke-static {p1, v0, v2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    new-array p1, p0, [[D

    aput-object v2, p1, v0

    invoke-static {v1, p1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    invoke-static {v1, v2, p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    invoke-static {v1, v2, p2, p3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->a([D[DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static verifyInterpolationArray([D[DZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    array-length p1, p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    sget-object p1, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    move-result p0

    return p0

    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WRONG_NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, v1, p0, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p0, p0

    array-length p1, p1

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method


# virtual methods
.method public computeCoefficients()V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->degree()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->e:[D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->e:[D

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v4, v3

    move v7, v3

    :goto_1
    if-ge v7, v1, :cond_2

    move v8, v7

    :goto_2
    if-lez v8, :cond_1

    add-int/lit8 v9, v8, -0x1

    aget-wide v9, v4, v9

    aget-wide v11, v4, v8

    iget-object v13, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->f:[D

    aget-wide v13, v13, v7

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    aput-wide v9, v4, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_1
    aget-wide v8, v4, v3

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->f:[D

    aget-wide v10, v10, v7

    neg-double v10, v10

    mul-double/2addr v8, v10

    aput-wide v8, v4, v3

    add-int/lit8 v7, v7, 0x1

    aput-wide v5, v4, v7

    goto :goto_1

    :cond_2
    new-array v7, v1, [D

    move v8, v3

    :goto_3
    if-ge v8, v1, :cond_6

    move v9, v3

    move-wide v10, v5

    :goto_4
    if-ge v9, v1, :cond_4

    if-eq v8, v9, :cond_3

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->f:[D

    aget-wide v13, v12, v8

    aget-wide v15, v12, v9

    sub-double/2addr v13, v15

    mul-double/2addr v10, v13

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->g:[D

    aget-wide v12, v9, v8

    div-double/2addr v12, v10

    add-int/lit8 v9, v1, -0x1

    aget-wide v10, v4, v1

    aput-wide v10, v7, v9

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->e:[D

    aget-wide v15, v14, v9

    mul-double/2addr v10, v12

    add-double/2addr v15, v10

    aput-wide v15, v14, v9

    add-int/lit8 v9, v1, -0x2

    :goto_5
    if-ltz v9, :cond_5

    add-int/lit8 v10, v9, 0x1

    aget-wide v14, v4, v10

    aget-wide v10, v7, v10

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->f:[D

    aget-wide v17, v3, v8

    mul-double v10, v10, v17

    add-double/2addr v14, v10

    aput-wide v14, v7, v9

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->e:[D

    aget-wide v10, v3, v9

    mul-double/2addr v14, v12

    add-double/2addr v10, v14

    aput-wide v10, v3, v9

    add-int/lit8 v9, v9, -0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    iput-boolean v2, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->h:Z

    return-void
.end method

.method public degree()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->f:[D

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getCoefficients()[D
    .locals 3

    iget-boolean v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->computeCoefficients()V

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->e:[D

    array-length v0, p0

    new-array v0, v0, [D

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getInterpolatingPoints()[D
    .locals 3

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->f:[D

    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getInterpolatingValues()[D
    .locals 3

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->g:[D

    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public value(D)D
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->f:[D

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->g:[D

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->a([D[DD)D

    move-result-wide p0

    return-wide p0
.end method
