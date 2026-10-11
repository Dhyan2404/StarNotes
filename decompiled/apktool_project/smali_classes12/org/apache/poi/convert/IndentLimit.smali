.class public Lorg/apache/poi/convert/IndentLimit;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLimitEM(D)D
    .locals 5

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gtz v2, :cond_0

    return-wide p0

    :cond_0
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-gtz v4, :cond_1

    sub-double/2addr p0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr p0, v2

    add-double/2addr p0, v0

    return-wide p0

    :cond_1
    sub-double/2addr p0, v2

    const-wide v0, 0x3fc999999999999aL    # 0.2

    mul-double/2addr p0, v0

    const-wide v0, 0x401199999999999aL    # 4.4

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getLimitPX(D)D
    .locals 5

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gtz v2, :cond_0

    return-wide p0

    :cond_0
    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-gtz v4, :cond_1

    sub-double/2addr p0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr p0, v2

    add-double/2addr p0, v0

    return-wide p0

    :cond_1
    sub-double/2addr p0, v2

    const-wide v0, 0x3fc999999999999aL    # 0.2

    mul-double/2addr p0, v0

    const-wide v0, 0x405199999999999aL    # 70.4

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method
