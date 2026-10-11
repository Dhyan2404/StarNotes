.class public Lcom/trans/android/util/MatrixUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMatrixToTransform(Landroid/graphics/Matrix;)Ljava/awt/geom/AffineTransform;
    .locals 7

    invoke-static {p0}, Lcom/trans/android/util/MatrixUtils;->getMatrixValues(Landroid/graphics/Matrix;)[F

    move-result-object p0

    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v1, 0x0

    aget v2, p0, v1

    float-to-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget v2, p0, v1

    float-to-double v2, v2

    const/4 v4, 0x2

    aput-wide v2, v0, v4

    aget v2, p0, v4

    float-to-double v2, v2

    const/4 v4, 0x4

    aput-wide v2, v0, v4

    const/4 v2, 0x3

    aget v3, p0, v2

    float-to-double v5, v3

    aput-wide v5, v0, v1

    aget v1, p0, v4

    float-to-double v3, v1

    aput-wide v3, v0, v2

    const/4 v1, 0x5

    aget p0, p0, v1

    float-to-double v2, p0

    aput-wide v2, v0, v1

    new-instance p0, Ljava/awt/geom/AffineTransform;

    invoke-direct {p0, v0}, Ljava/awt/geom/AffineTransform;-><init>([D)V

    return-object p0
.end method

.method public static convertTransformToMatrix(Ljava/awt/geom/AffineTransform;)Landroid/graphics/Matrix;
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0}, Lcom/trans/android/util/MatrixUtils;->toMatrixValues(Ljava/awt/geom/AffineTransform;)[F

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method public static getMatrixValues(Landroid/graphics/Matrix;)[F
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    return-object v0
.end method

.method public static getScaleX(Ljava/awt/geom/AffineTransform;)D
    .locals 5

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/trans/android/util/RotaryUtils;->getDegree(Ljava/awt/geom/AffineTransform;)J

    move-result-wide v0

    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    const-wide/16 v3, 0x5a

    sub-long/2addr v3, v0

    long-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    move-object p0, v2

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toMatrixValues(Ljava/awt/geom/AffineTransform;)[F
    .locals 7

    const/4 v0, 0x6

    new-array v1, v0, [D

    invoke-virtual {p0, v1}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    const/16 p0, 0x9

    new-array p0, p0, [F

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    double-to-float v3, v3

    aput v3, p0, v2

    const/4 v2, 0x2

    aget-wide v3, v1, v2

    double-to-float v3, v3

    const/4 v4, 0x1

    aput v3, p0, v4

    const/4 v3, 0x4

    aget-wide v5, v1, v3

    double-to-float v5, v5

    aput v5, p0, v2

    aget-wide v4, v1, v4

    double-to-float v2, v4

    const/4 v4, 0x3

    aput v2, p0, v4

    aget-wide v4, v1, v4

    double-to-float v2, v4

    aput v2, p0, v3

    const/4 v2, 0x5

    aget-wide v3, v1, v2

    double-to-float v1, v3

    aput v1, p0, v2

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x7

    aput v1, p0, v0

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    return-object p0
.end method
