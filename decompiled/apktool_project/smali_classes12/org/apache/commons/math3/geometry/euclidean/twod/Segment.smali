.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public final b:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public final c:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->b:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->c:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-void
.end method


# virtual methods
.method public distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 10

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->b:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->b:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    mul-double/2addr v0, v4

    add-double/2addr v6, v0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v0

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {p0, v6, v7, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->b:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object p0
.end method

.method public getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->c:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-object p0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->a:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object p0
.end method
