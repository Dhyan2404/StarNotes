.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$3;
.super Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$a;)V

    return-void
.end method


# virtual methods
.method public estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D
    .locals 11

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p3, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-super/range {v4 .. v10}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v2

    add-double/2addr v0, p3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v7

    invoke-super/range {v4 .. v10}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v0

    add-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public index(DI)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    int-to-double p0, p3

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_1

    move-wide p0, v0

    goto :goto_0

    :cond_1
    int-to-double v0, p3

    mul-double/2addr v0, p1

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method
