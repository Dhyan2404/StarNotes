.class public Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;
    }
.end annotation


# instance fields
.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->e:D

    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->f:D

    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->g:D

    return-void
.end method

.method public static synthetic a(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->b(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static b(DD)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p0

    mul-double/2addr p2, p0

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
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->f:D

    mul-double/2addr v0, p1

    iget-wide p1, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->g:D

    add-double/2addr v0, p1

    iget-wide p0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->e:D

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->b(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v4, v2, [D

    .line 4
    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->f:D

    mul-double/2addr v5, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->g:D

    add-double/2addr v5, v0

    .line 5
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->e:D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    mul-double/2addr v0, v7

    const/4 v7, 0x0

    aput-wide v0, v4, v7

    if-le v2, v3, :cond_0

    .line 6
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->e:D

    neg-double v0, v0

    iget-wide v7, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->f:D

    mul-double/2addr v0, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    mul-double/2addr v0, v5

    aput-wide v0, v4, v3

    .line 7
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->f:D

    neg-double v5, v0

    mul-double/2addr v5, v0

    const/4 p0, 0x2

    :goto_0
    if-ge p0, v2, :cond_0

    add-int/lit8 v0, p0, -0x2

    .line 8
    aget-wide v0, v4, v0

    mul-double/2addr v0, v5

    aput-wide v0, v4, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method
