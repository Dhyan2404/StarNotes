.class public Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length p0, p1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public varargs gradient(D[D)[D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;->a([D)V

    const/4 p0, 0x0

    aget-wide v0, p3, p0

    const/4 v2, 0x1

    aget-wide v3, p3, v2

    const/4 v5, 0x2

    aget-wide v6, p3, v5

    mul-double/2addr v3, p1

    add-double/2addr v3, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v6, v7}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->a(DD)D

    move-result-wide v6

    neg-double v0, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v3

    mul-double/2addr v0, v3

    mul-double/2addr p1, v0

    const/4 p3, 0x3

    new-array p3, p3, [D

    aput-wide v6, p3, p0

    aput-wide p1, p3, v2

    aput-wide v0, p3, v5

    return-object p3
.end method

.method public varargs value(D[D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;->a([D)V

    const/4 p0, 0x1

    aget-wide v0, p3, p0

    mul-double/2addr p1, v0

    const/4 p0, 0x2

    aget-wide v0, p3, p0

    add-double/2addr p1, v0

    const/4 p0, 0x0

    aget-wide v0, p3, p0

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->a(DD)D

    move-result-wide p0

    return-wide p0
.end method
