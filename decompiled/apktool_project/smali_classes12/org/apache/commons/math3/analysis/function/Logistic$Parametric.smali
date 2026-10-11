.class public Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Logistic;
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

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    const/4 p0, 0x5

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
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;->a([D)V

    const/4 v0, 0x2

    aget-wide v13, v1, v0

    const/4 v15, 0x3

    aget-wide v16, v1, v15

    const/16 v18, 0x1

    aget-wide v2, v1, v18

    sub-double v19, v2, p1

    const/16 v21, 0x5

    aget-wide v2, v1, v21

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v11, v4, v2

    mul-double v2, v13, v19

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v22

    mul-double v24, v16, v22

    add-double v9, v24, v4

    const/16 v26, 0x0

    aget-wide v2, v1, v26

    const/16 v27, 0x4

    aget-wide v4, v1, v27

    sub-double/2addr v2, v4

    mul-double/2addr v2, v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    div-double v7, v2, v4

    neg-double v1, v7

    div-double v28, v1, v9

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v30, 0x0

    move-wide/from16 v1, v19

    move-wide v5, v13

    move-wide/from16 v32, v7

    move-wide/from16 v7, v16

    move-wide/from16 v34, v9

    move-wide/from16 v9, v30

    move-wide/from16 v30, v11

    invoke-static/range {v1 .. v12}, Lorg/apache/commons/math3/analysis/function/Logistic;->a(DDDDDD)D

    move-result-wide v36

    mul-double v1, v28, v13

    mul-double v38, v1, v24

    mul-double v1, v28, v19

    mul-double v24, v24, v1

    mul-double v28, v28, v22

    const-wide/16 v3, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v1, v19

    invoke-static/range {v1 .. v12}, Lorg/apache/commons/math3/analysis/function/Logistic;->a(DDDDDD)D

    move-result-wide v1

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    mul-double v7, v32, v3

    mul-double v7, v7, v30

    const/4 v3, 0x6

    new-array v3, v3, [D

    aput-wide v36, v3, v26

    aput-wide v38, v3, v18

    aput-wide v24, v3, v0

    aput-wide v28, v3, v15

    aput-wide v1, v3, v27

    aput-wide v7, v3, v21

    return-object v3
.end method

.method public varargs value(D[D)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;->a([D)V

    const/4 v0, 0x1

    aget-wide v2, v1, v0

    sub-double v4, v2, p1

    const/4 v0, 0x0

    aget-wide v6, v1, v0

    const/4 v0, 0x2

    aget-wide v8, v1, v0

    const/4 v0, 0x3

    aget-wide v10, v1, v0

    const/4 v0, 0x4

    aget-wide v12, v1, v0

    const/4 v0, 0x5

    aget-wide v0, v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v14, v2, v0

    invoke-static/range {v4 .. v15}, Lorg/apache/commons/math3/analysis/function/Logistic;->a(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method
