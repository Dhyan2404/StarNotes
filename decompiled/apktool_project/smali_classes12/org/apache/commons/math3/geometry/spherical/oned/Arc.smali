.class public Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->d:D

    const/4 p5, 0x0

    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result p5

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    if-nez p5, :cond_2

    sub-double p5, p3, p1

    cmpl-double v4, p5, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    cmpg-double v2, p1, p3

    if-gtz v2, :cond_1

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->a:D

    add-double/2addr p5, p1

    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->b:D

    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, p5

    mul-double/2addr p1, p3

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->c:D

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p5, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_2
    :goto_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->a:D

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->b:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->c:D

    :goto_1
    return-void
.end method


# virtual methods
.method public checkPoint(D)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 8

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->c:D

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->a:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->d:D

    sub-double v4, v0, v2

    cmpg-double v4, p1, v4

    if-ltz v4, :cond_3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->b:D

    add-double v6, v4, v2

    cmpl-double v6, p1, v6

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    add-double/2addr v0, v2

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    sub-double/2addr v4, v2

    cmpg-double p1, p1, v4

    if-gez p1, :cond_1

    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide p1

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->d:D

    sub-double/2addr v0, v2

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_2

    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    :goto_0
    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object p0
.end method

.method public getBarycenter()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->c:D

    return-wide v0
.end method

.method public getInf()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->a:D

    return-wide v0
.end method

.method public getSize()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->b:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->a:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getSup()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->b:D

    return-wide v0
.end method

.method public getTolerance()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->d:D

    return-wide v0
.end method
