.class public Lcom/sun/javafx/geom/Vec2f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 4
    iput p2, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec2f;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p1, Lcom/sun/javafx/geom/Vec2f;->x:F

    iput v0, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 7
    iget p1, p1, Lcom/sun/javafx/geom/Vec2f;->y:F

    iput p1, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    return-void
.end method

.method public static distance(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distanceSq(FFFF)F
    .locals 0

    .line 1
    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public distance(FF)F
    .locals 1

    .line 2
    iget v0, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    sub-float/2addr p1, v0

    .line 3
    iget p0, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    sub-float/2addr p2, p0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public distance(Lcom/sun/javafx/geom/Vec2f;)F
    .locals 2

    .line 5
    iget v0, p1, Lcom/sun/javafx/geom/Vec2f;->x:F

    iget v1, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    sub-float/2addr v0, v1

    .line 6
    iget p1, p1, Lcom/sun/javafx/geom/Vec2f;->y:F

    iget p0, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    sub-float/2addr p1, p0

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double p0, v0

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public distanceSq(FF)F
    .locals 1

    .line 2
    iget v0, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    sub-float/2addr p1, v0

    .line 3
    iget p0, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    sub-float/2addr p2, p0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method public distanceSq(Lcom/sun/javafx/geom/Vec2f;)F
    .locals 2

    .line 4
    iget v0, p1, Lcom/sun/javafx/geom/Vec2f;->x:F

    iget v1, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    sub-float/2addr v0, v1

    .line 5
    iget p1, p1, Lcom/sun/javafx/geom/Vec2f;->y:F

    iget p0, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    sub-float/2addr p1, p0

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sun/javafx/geom/Vec2f;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/sun/javafx/geom/Vec2f;

    iget v1, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    iget v3, p1, Lcom/sun/javafx/geom/Vec2f;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget p0, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    iget p1, p1, Lcom/sun/javafx/geom/Vec2f;->y:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public set(FF)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 4
    iput p2, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    return-void
.end method

.method public set(Lcom/sun/javafx/geom/Vec2f;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/sun/javafx/geom/Vec2f;->x:F

    iput v0, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 2
    iget p1, p1, Lcom/sun/javafx/geom/Vec2f;->y:F

    iput p1, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vec2f["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/javafx/geom/Vec2f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/javafx/geom/Vec2f;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
