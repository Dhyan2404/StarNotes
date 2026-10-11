.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


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
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->g:[D

    array-length v1, p2

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->f:[D

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    invoke-static {p2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->h:Z

    return-void
.end method

.method public static evaluate([D[DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    array-length v0, p1

    aget-wide v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    sub-double v5, p2, v5

    mul-double/2addr v5, v1

    add-double v1, v3, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static verifyInputArray([D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p0

    if-eqz v0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SIZES_SHOULD_HAVE_DIFFERENCE_1:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p0, p0

    array-length p1, p1

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0
.end method


# virtual methods
.method public computeCoefficients()V
    .locals 11

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->degree()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->e:[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->e:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->e:[D

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->g:[D

    aget-wide v3, v3, v0

    aput-wide v3, v2, v1

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_2

    sub-int v3, v0, v2

    :goto_2
    if-lez v3, :cond_1

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->e:[D

    add-int/lit8 v5, v3, -0x1

    aget-wide v5, v4, v5

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->f:[D

    aget-wide v7, v7, v2

    aget-wide v9, v4, v3

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->e:[D

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->g:[D

    aget-wide v4, v4, v2

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->f:[D

    aget-wide v6, v6, v2

    aget-wide v8, v3, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->h:Z

    return-void
.end method

.method public degree()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->f:[D

    array-length p0, p0

    return p0
.end method

.method public getCenters()[D
    .locals 3

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->f:[D

    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getCoefficients()[D
    .locals 3

    iget-boolean v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->computeCoefficients()V

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->e:[D

    array-length v0, p0

    new-array v0, v0, [D

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getNewtonCoefficients()[D
    .locals 3

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->g:[D

    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public value(D)D
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->g:[D

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->f:[D

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->evaluate([D[DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->g:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->f:[D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->f:[D

    array-length v0, v0

    .line 4
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->g:[D

    aget-wide v4, v4, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 5
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->f:[D

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->g:[D

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
