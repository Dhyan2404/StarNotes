.class public Lorg/apache/commons/math3/analysis/function/Logit$Parametric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Logit;
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/analysis/function/Logit$Parametric;->a([D)V

    const/4 p0, 0x0

    aget-wide v0, p3, p0

    const/4 v2, 0x1

    aget-wide v3, p3, v2

    const/4 p3, 0x2

    new-array p3, p3, [D

    sub-double/2addr v0, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v0, v5, v0

    aput-wide v0, p3, p0

    sub-double/2addr v3, p1

    div-double/2addr v5, v3

    aput-wide v5, p3, v2

    return-object p3
.end method

.method public varargs value(D[D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/analysis/function/Logit$Parametric;->a([D)V

    const/4 p0, 0x0

    aget-wide v2, p3, p0

    const/4 p0, 0x1

    aget-wide v4, p3, p0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Logit;->a(DDD)D

    move-result-wide p0

    return-wide p0
.end method
