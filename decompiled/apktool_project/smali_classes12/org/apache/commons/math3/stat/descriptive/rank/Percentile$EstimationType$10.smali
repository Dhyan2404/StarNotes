.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$10;
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
    .locals 10

    int-to-double v0, p3

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    add-double/2addr v2, v0

    const-wide/high16 v4, 0x3fe4000000000000L    # 0.625

    div-double/2addr v4, v2

    const-wide/high16 v6, 0x3fd8000000000000L    # 0.375

    sub-double v8, v0, v6

    div-double/2addr v8, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    mul-double/2addr v2, p1

    add-double v0, v2, v6

    :goto_0
    return-wide v0
.end method
