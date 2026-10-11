.class public Lcom/sun/javafx/geom/Vec3f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 4
    iput p2, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 5
    iput p3, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec3f;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 8
    iget v0, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 9
    iget p1, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

    iput p1, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-void
.end method


# virtual methods
.method public add(Lcom/sun/javafx/geom/Vec3f;)V
    .locals 2

    .line 4
    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    iget v1, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 5
    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    iget v1, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 6
    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    iget p1, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-void
.end method

.method public add(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    iget v1, p2, Lcom/sun/javafx/geom/Vec3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 2
    iget v0, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    iget v1, p2, Lcom/sun/javafx/geom/Vec3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 3
    iget p1, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

    iget p2, p2, Lcom/sun/javafx/geom/Vec3f;->z:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-void
.end method

.method public cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V
    .locals 6

    iget v0, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    iget v1, p2, Lcom/sun/javafx/geom/Vec3f;->z:F

    mul-float v2, v0, v1

    iget v3, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

    iget v4, p2, Lcom/sun/javafx/geom/Vec3f;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget p2, p2, Lcom/sun/javafx/geom/Vec3f;->x:F

    mul-float/2addr v3, p2

    iget p1, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    mul-float/2addr v1, p1

    sub-float/2addr v3, v1

    mul-float/2addr p1, v4

    mul-float/2addr v0, p2

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    iput v2, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v3, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    return-void
.end method

.method public dot(Lcom/sun/javafx/geom/Vec3f;)F
    .locals 3

    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    iget v1, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    iget v2, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    iget p1, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sun/javafx/geom/Vec3f;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/sun/javafx/geom/Vec3f;

    iget v1, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    iget v3, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    iget v3, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget p0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    iget p1, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

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

    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public length()F
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final mul(F)V
    .locals 1

    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-void
.end method

.method public normalize()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/sun/javafx/geom/Vec3f;->length()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    iget v1, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    iget v1, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-void
.end method

.method public set(FFF)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 5
    iput p2, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 6
    iput p3, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-void
.end method

.method public set(Lcom/sun/javafx/geom/Vec3f;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 2
    iget v0, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 3
    iget p1, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

    iput p1, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-void
.end method

.method public sub(Lcom/sun/javafx/geom/Vec3f;)V
    .locals 2

    .line 4
    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    iget v1, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 5
    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    iget v1, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 6
    iget v0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    iget p1, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-void
.end method

.method public sub(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    iget v1, p2, Lcom/sun/javafx/geom/Vec3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 2
    iget v0, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    iget v1, p2, Lcom/sun/javafx/geom/Vec3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 3
    iget p1, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

    iget p2, p2, Lcom/sun/javafx/geom/Vec3f;->z:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vec3f["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/javafx/geom/Vec3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/javafx/geom/Vec3f;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/javafx/geom/Vec3f;->z:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
