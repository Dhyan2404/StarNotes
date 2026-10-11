.class public Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Sigmoid;
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

    const/4 v0, 0x2

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;->a([D)V

    neg-double p0, p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, p2

    div-double p0, p2, p0

    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    sub-double/2addr p2, p0

    aput-wide p2, v0, v1

    const/4 p2, 0x1

    aput-wide p0, v0, p2

    return-object v0
.end method

.method public varargs value(D[D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;->a([D)V

    const/4 p0, 0x0

    aget-wide v2, p3, p0

    const/4 p0, 0x1

    aget-wide v4, p3, p0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->a(DDD)D

    move-result-wide p0

    return-wide p0
.end method
