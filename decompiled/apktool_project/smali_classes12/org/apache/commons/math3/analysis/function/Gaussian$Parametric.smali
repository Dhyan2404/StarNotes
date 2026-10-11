.class public Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Gaussian;
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length p0, p1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    aget-wide v0, p1, p0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide p0, p1, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public varargs gradient(D[D)[D
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->a([D)V

    const/4 v0, 0x0

    aget-wide v2, v1, v0

    const/4 v4, 0x1

    aget-wide v5, v1, v4

    sub-double v5, p1, v5

    const/4 v13, 0x2

    aget-wide v14, v1, v13

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v7, v14, v16

    mul-double/2addr v7, v14

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double v18, v9, v7

    move-wide v7, v5

    move-wide/from16 v11, v18

    invoke-static/range {v7 .. v12}, Lorg/apache/commons/math3/analysis/function/Gaussian;->a(DDD)D

    move-result-wide v7

    mul-double/2addr v2, v7

    mul-double v2, v2, v16

    mul-double v2, v2, v18

    mul-double/2addr v2, v5

    mul-double/2addr v5, v2

    div-double/2addr v5, v14

    const/4 v1, 0x3

    new-array v1, v1, [D

    aput-wide v7, v1, v0

    aput-wide v2, v1, v4

    aput-wide v5, v1, v13

    return-object v1
.end method

.method public varargs value(D[D)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->a([D)V

    const/4 p0, 0x1

    aget-wide v0, p3, p0

    sub-double v2, p1, v0

    const/4 p0, 0x2

    aget-wide p0, p3, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    div-double v6, p0, v0

    const/4 p0, 0x0

    aget-wide v4, p3, p0

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/function/Gaussian;->a(DDD)D

    move-result-wide p0

    return-wide p0
.end method
