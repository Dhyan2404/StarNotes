.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$2;
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
    .locals 7

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p3, v0

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move-object v6, p6

    invoke-super/range {v0 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public index(DI)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p3

    mul-double/2addr v0, p1

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    :goto_0
    return-wide v0
.end method
