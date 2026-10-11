.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$7;
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
.method public index(DI)D
    .locals 8

    add-int/lit8 p0, p3, 0x1

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v4, v2, v0

    int-to-double v6, p3

    mul-double/2addr v2, v6

    div-double/2addr v2, v0

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    mul-double v6, v0, p1

    :goto_0
    return-wide v6
.end method
