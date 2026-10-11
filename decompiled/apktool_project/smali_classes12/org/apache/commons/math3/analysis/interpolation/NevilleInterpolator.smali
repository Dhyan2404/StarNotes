.class public Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x29af5033dc3bd7c5L


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
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;

    move-result-object p0

    return-object p0
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 2
    new-instance p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;-><init>([D[D)V

    return-object p0
.end method
