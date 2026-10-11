.class public abstract Ljava/awt/geom/Arc2D;
.super Ljava/awt/geom/RectangularShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/geom/Arc2D$Double;,
        Ljava/awt/geom/Arc2D$Float;
    }
.end annotation


# static fields
.field public static final CHORD:I = 0x1

.field public static final OPEN:I = 0x0

.field public static final PIE:I = 0x2


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava/awt/geom/Arc2D;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/awt/geom/RectangularShape;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Ljava/awt/geom/Arc2D;->setArcType(I)V

    return-void
.end method

.method private contains(DDDDLjava/awt/geom/Rectangle2D;)Z
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 18
    invoke-virtual/range {p0 .. p4}, Ljava/awt/geom/Arc2D;->contains(DD)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_5

    add-double v6, v2, p5

    .line 19
    invoke-virtual {v0, v6, v7, v4, v5}, Ljava/awt/geom/Arc2D;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_5

    add-double v8, v4, p7

    .line 20
    invoke-virtual {v0, v2, v3, v8, v9}, Ljava/awt/geom/Arc2D;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v0, v6, v7, v8, v9}, Ljava/awt/geom/Arc2D;->contains(DD)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 22
    :cond_0
    iget v1, v0, Ljava/awt/geom/Arc2D;->type:I

    const/4 v6, 0x2

    const/4 v11, 0x1

    if-ne v1, v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpg-double v1, v6, v8

    if-gtz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez p9, :cond_2

    .line 23
    new-instance v12, Ljava/awt/geom/Rectangle2D$Double;

    move-object v1, v12

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    goto :goto_0

    :cond_2
    move-object/from16 v12, p9

    .line 24
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 25
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    div-double/2addr v5, v3

    .line 26
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    add-double/2addr v3, v1

    .line 27
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v7

    add-double/2addr v7, v5

    .line 28
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v13

    neg-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 29
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v1

    add-double/2addr v15, v3

    .line 30
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v5

    add-double v17, v7, v17

    move-object/from16 p1, v12

    move-wide/from16 p2, v3

    move-wide/from16 p4, v7

    move-wide/from16 p6, v15

    move-wide/from16 p8, v17

    .line 31
    invoke-virtual/range {p1 .. p9}, Ljava/awt/geom/Rectangle2D;->intersectsLine(DDDD)Z

    move-result v9

    if-eqz v9, :cond_3

    return v10

    .line 32
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v9

    neg-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    add-double/2addr v13, v9

    .line 33
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v1, v9

    add-double v0, v3, v1

    .line 34
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v5, v9

    add-double/2addr v5, v7

    move-object/from16 p0, v12

    move-wide/from16 p1, v3

    move-wide/from16 p3, v7

    move-wide/from16 p5, v0

    move-wide/from16 p7, v5

    .line 35
    invoke-virtual/range {p0 .. p8}, Ljava/awt/geom/Rectangle2D;->intersectsLine(DDDD)Z

    move-result v0

    xor-int/2addr v0, v11

    return v0

    :cond_4
    :goto_1
    return v11

    :cond_5
    :goto_2
    return v10
.end method

.method public static normalizeDegrees(D)D
    .locals 9

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, p0, v0

    const-wide v3, -0x3f99800000000000L    # -180.0

    const-wide v5, 0x4076800000000000L    # 360.0

    if-lez v2, :cond_1

    const-wide v7, 0x4080e00000000000L    # 540.0

    cmpg-double v2, p0, v7

    if-gtz v2, :cond_0

    sub-double/2addr p0, v5

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, v5, v6}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide p0

    cmpl-double v2, p0, v3

    if-nez v2, :cond_3

    :goto_0
    move-wide p0, v0

    goto :goto_1

    :cond_1
    cmpg-double v2, p0, v3

    if-gtz v2, :cond_3

    const-wide v7, -0x3f7f200000000000L    # -540.0

    cmpl-double v2, p0, v7

    if-lez v2, :cond_2

    add-double/2addr p0, v5

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, v5, v6}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide p0

    cmpl-double v2, p0, v3

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-wide p0
.end method


# virtual methods
.method public contains(DD)Z
    .locals 28

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    const/4 v6, 0x0

    if-gtz v5, :cond_0

    return v6

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v7

    sub-double v7, p1, v7

    div-double/2addr v7, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v7, v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    cmpg-double v3, v9, v3

    if-gtz v3, :cond_1

    return v6

    .line 4
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    sub-double v3, p3, v3

    div-double/2addr v3, v9

    sub-double/2addr v3, v1

    mul-double v1, v7, v7

    mul-double v9, v3, v3

    add-double/2addr v1, v9

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    cmpl-double v1, v1, v9

    if-ltz v1, :cond_2

    return v6

    .line 5
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v9, 0x4076800000000000L    # 360.0

    cmpl-double v5, v1, v9

    const/4 v9, 0x1

    if-ltz v5, :cond_3

    return v9

    .line 6
    :cond_3
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v0, v10, v11}, Ljava/awt/geom/Arc2D;->containsAngle(D)Z

    move-result v5

    .line 7
    iget v10, v0, Ljava/awt/geom/Arc2D;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    return v5

    :cond_4
    const-wide v10, 0x4066800000000000L    # 180.0

    if-eqz v5, :cond_5

    cmpl-double v1, v1, v10

    if-ltz v1, :cond_6

    return v9

    :cond_5
    cmpg-double v1, v1, v10

    if-gtz v1, :cond_6

    return v6

    .line 8
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v1

    neg-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v10

    neg-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    add-double/2addr v1, v10

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v18, v7, v10

    mul-double v20, v3, v10

    move-wide/from16 v10, v22

    move-wide/from16 v12, v24

    move-wide/from16 v14, v26

    move-wide/from16 v16, v0

    .line 14
    invoke-static/range {v10 .. v21}, Ljava/awt/geom/Line2D;->relativeCCW(DDDDDD)I

    move-result v2

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    .line 15
    invoke-static/range {v10 .. v21}, Ljava/awt/geom/Line2D;->relativeCCW(DDDDDD)I

    move-result v0

    mul-int/2addr v2, v0

    if-ltz v2, :cond_7

    move v0, v9

    goto :goto_0

    :cond_7
    move v0, v6

    :goto_0
    if-eqz v5, :cond_8

    if-nez v0, :cond_9

    move v6, v9

    goto :goto_1

    :cond_8
    move v6, v0

    :cond_9
    :goto_1
    return v6
.end method

.method public contains(DDDD)Z
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 16
    invoke-direct/range {v0 .. v9}, Ljava/awt/geom/Arc2D;->contains(DDDDLjava/awt/geom/Rectangle2D;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 10

    .line 17
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Ljava/awt/geom/Arc2D;->contains(DDDDLjava/awt/geom/Rectangle2D;)Z

    move-result p0

    return p0
.end method

.method public containsAngle(D)Z
    .locals 11

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    neg-double v0, v0

    :cond_1
    const-wide v7, 0x4076800000000000L    # 360.0

    cmpl-double v9, v0, v7

    if-ltz v9, :cond_2

    return v6

    :cond_2
    invoke-static {p1, p2}, Ljava/awt/geom/Arc2D;->normalizeDegrees(D)D

    move-result-wide p1

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/awt/geom/Arc2D;->normalizeDegrees(D)D

    move-result-wide v9

    sub-double/2addr p1, v9

    if-eqz v4, :cond_3

    neg-double p1, p1

    :cond_3
    cmpg-double p0, p1, v2

    if-gez p0, :cond_4

    add-double/2addr p1, v7

    :cond_4
    cmpl-double p0, p1, v2

    if-ltz p0, :cond_5

    cmpg-double p0, p1, v0

    if-gez p0, :cond_5

    move v5, v6

    :cond_5
    return v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/awt/geom/Arc2D;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/awt/geom/Arc2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getArcType()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/geom/Arc2D;->getArcType()I

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public abstract getAngleExtent()D
.end method

.method public abstract getAngleStart()D
.end method

.method public getArcType()I
    .locals 0

    iget p0, p0, Ljava/awt/geom/Arc2D;->type:I

    return p0
.end method

.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Arc2D;->makeBounds(DDDD)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getArcType()I

    move-result v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_1

    move-wide v0, v2

    move-wide v4, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    :goto_0
    const/4 v6, 0x0

    move-wide v8, v4

    move v10, v6

    move-wide v4, v2

    move-wide v6, v8

    move-wide v2, v0

    :goto_1
    const/4 v11, 0x6

    if-ge v10, v11, :cond_5

    const/4 v11, 0x4

    if-ge v10, v11, :cond_2

    const-wide v11, 0x4056800000000000L    # 90.0

    add-double/2addr v4, v11

    move-object/from16 v12, p0

    invoke-virtual {v12, v4, v5}, Ljava/awt/geom/Arc2D;->containsAngle(D)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_3

    :cond_2
    move-object/from16 v12, p0

    if-ne v10, v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v4

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v13

    add-double/2addr v4, v13

    :cond_4
    :goto_2
    neg-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    move-wide v15, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v8, v6

    move-wide v6, v4

    move-wide v4, v15

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    sub-double/2addr v6, v0

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v13

    mul-double v16, v6, v4

    sub-double/2addr v8, v2

    mul-double/2addr v8, v13

    mul-double v18, v8, v10

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    mul-double/2addr v0, v13

    add-double/2addr v0, v13

    mul-double/2addr v0, v4

    add-double/2addr v0, v6

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    mul-double/2addr v2, v13

    add-double/2addr v2, v13

    mul-double/2addr v2, v10

    add-double v14, v4, v2

    move-object/from16 v11, p0

    move-wide v12, v0

    invoke-virtual/range {v11 .. v19}, Ljava/awt/geom/Arc2D;->makeBounds(DDDD)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public getEndPoint()Ljava/awt/geom/Point2D;
    .locals 10

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    add-double/2addr v4, v6

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v6

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    new-instance p0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object p0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;
    .locals 1

    new-instance v0, Ljava/awt/geom/ArcIterator;

    invoke-direct {v0, p0, p1}, Ljava/awt/geom/ArcIterator;-><init>(Ljava/awt/geom/Arc2D;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getStartPoint()Ljava/awt/geom/Point2D;
    .locals 10

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    add-double/2addr v4, v6

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v6

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    new-instance p0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x25

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x2b

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x2f

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x35

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x3b

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getArcType()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3d

    int-to-long v2, p0

    add-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public intersects(DDDD)Z
    .locals 42

    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v7, p5, v5

    const/4 v14, 0x0

    if-lez v7, :cond_f

    cmpg-double v7, p7, v5

    if-lez v7, :cond_f

    cmpg-double v7, v1, v5

    if-lez v7, :cond_f

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v15

    cmpl-double v7, v15, v5

    if-nez v7, :cond_1

    return v14

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v17

    add-double/2addr v1, v7

    add-double v3, v17, v3

    move-wide/from16 v19, v15

    add-double v14, v10, p5

    add-double v5, v12, p7

    cmpl-double v9, v10, v1

    if-gez v9, :cond_e

    cmpl-double v9, v12, v3

    if-gez v9, :cond_e

    cmpg-double v9, v14, v7

    if-lez v9, :cond_e

    cmpg-double v9, v5, v17

    if-gtz v9, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v32

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v34

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getStartPoint()Ljava/awt/geom/Point2D;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/Arc2D;->getEndPoint()Ljava/awt/geom/Point2D;

    move-result-object v16

    invoke-virtual {v9}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v28

    invoke-virtual {v9}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v30

    invoke-virtual/range {v16 .. v16}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v36

    invoke-virtual/range {v16 .. v16}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v38

    cmpl-double v9, v34, v12

    move-wide/from16 v23, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    const/16 v16, 0x1

    if-ltz v9, :cond_5

    cmpg-double v25, v34, v5

    if-gtz v25, :cond_5

    cmpg-double v25, v28, v14

    if-gez v25, :cond_3

    cmpg-double v25, v36, v14

    if-gez v25, :cond_3

    cmpg-double v25, v32, v14

    if-gez v25, :cond_3

    cmpl-double v1, v1, v10

    if-lez v1, :cond_3

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/Arc2D;->containsAngle(D)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    cmpl-double v1, v28, v10

    if-lez v1, :cond_5

    cmpl-double v1, v36, v10

    if-lez v1, :cond_5

    cmpl-double v1, v32, v10

    if-lez v1, :cond_5

    cmpg-double v1, v7, v14

    if-gez v1, :cond_5

    invoke-virtual {v0, v3, v4}, Ljava/awt/geom/Arc2D;->containsAngle(D)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    return v16

    :cond_5
    cmpl-double v1, v32, v10

    if-ltz v1, :cond_8

    cmpg-double v1, v32, v14

    if-gtz v1, :cond_8

    cmpl-double v1, v30, v12

    if-lez v1, :cond_6

    cmpl-double v1, v38, v12

    if-lez v1, :cond_6

    if-lez v9, :cond_6

    cmpg-double v1, v17, v5

    if-gez v1, :cond_6

    const-wide v1, 0x4056800000000000L    # 90.0

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/Arc2D;->containsAngle(D)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    cmpg-double v1, v30, v5

    if-gez v1, :cond_8

    cmpg-double v1, v38, v5

    if-gez v1, :cond_8

    cmpg-double v1, v34, v5

    if-gez v1, :cond_8

    cmpl-double v1, v23, v12

    if-lez v1, :cond_8

    const-wide v1, 0x4070e00000000000L    # 270.0

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/Arc2D;->containsAngle(D)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    return v16

    :cond_8
    new-instance v17, Ljava/awt/geom/Rectangle2D$Double;

    move-object/from16 v1, v17

    move-wide/from16 v21, v3

    move-wide/from16 v2, p1

    move-wide v8, v5

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v40, v8

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iget v1, v0, Ljava/awt/geom/Arc2D;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v1, v1, v21

    if-lez v1, :cond_9

    goto :goto_0

    :cond_9
    move-object/from16 v23, v17

    move-wide/from16 v24, v28

    move-wide/from16 v26, v30

    move-wide/from16 v28, v36

    move-wide/from16 v30, v38

    invoke-virtual/range {v23 .. v31}, Ljava/awt/geom/Rectangle2D;->intersectsLine(DDDD)Z

    move-result v1

    if-eqz v1, :cond_b

    return v16

    :cond_a
    :goto_0
    move-object/from16 v23, v17

    move-wide/from16 v24, v32

    move-wide/from16 v26, v34

    invoke-virtual/range {v23 .. v31}, Ljava/awt/geom/Rectangle2D;->intersectsLine(DDDD)Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v23, v17

    move-wide/from16 v24, v32

    move-wide/from16 v26, v34

    move-wide/from16 v28, v36

    move-wide/from16 v30, v38

    invoke-virtual/range {v23 .. v31}, Ljava/awt/geom/Rectangle2D;->intersectsLine(DDDD)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual/range {p0 .. p4}, Ljava/awt/geom/Arc2D;->contains(DD)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0, v14, v15, v12, v13}, Ljava/awt/geom/Arc2D;->contains(DD)Z

    move-result v1

    if-nez v1, :cond_d

    move-wide/from16 v1, v40

    invoke-virtual {v0, v10, v11, v1, v2}, Ljava/awt/geom/Arc2D;->contains(DD)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v0, v14, v15, v1, v2}, Ljava/awt/geom/Arc2D;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_1
    return v16

    :cond_e
    :goto_2
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_3
    move v0, v14

    return v0
.end method

.method public abstract makeBounds(DDDD)Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract setAngleExtent(D)V
.end method

.method public abstract setAngleStart(D)V
.end method

.method public setAngleStart(Ljava/awt/geom/Point2D;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/awt/geom/Arc2D;->setAngleStart(D)V

    return-void
.end method

.method public setAngles(DDDD)V
    .locals 13

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v1

    .line 2
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v3

    .line 3
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    .line 4
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    sub-double v9, v3, p3

    mul-double/2addr v9, v5

    sub-double v11, p1, v1

    mul-double/2addr v11, v7

    .line 5
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    sub-double v3, v3, p7

    mul-double/2addr v5, v3

    sub-double v1, p5, v1

    mul-double/2addr v7, v1

    .line 6
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double/2addr v1, v9

    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_0

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v1, v3

    .line 7
    :cond_0
    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/awt/geom/Arc2D;->setAngleStart(D)V

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/awt/geom/Arc2D;->setAngleExtent(D)V

    return-void
.end method

.method public setAngles(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V
    .locals 9

    .line 9
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Arc2D;->setAngles(DDDD)V

    return-void
.end method

.method public abstract setArc(DDDDDDI)V
.end method

.method public setArc(Ljava/awt/geom/Arc2D;)V
    .locals 14

    .line 3
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    .line 4
    invoke-virtual {p1}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v9

    invoke-virtual {p1}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v11

    iget v13, p1, Ljava/awt/geom/Arc2D;->type:I

    move-object v0, p0

    .line 5
    invoke-virtual/range {v0 .. v13}, Ljava/awt/geom/Arc2D;->setArc(DDDDDDI)V

    return-void
.end method

.method public setArc(Ljava/awt/geom/Point2D;Ljava/awt/geom/Dimension2D;DDI)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Ljava/awt/geom/Arc2D;->setArc(DDDDDDI)V

    return-void
.end method

.method public setArc(Ljava/awt/geom/Rectangle2D;DDI)V
    .locals 14

    .line 2
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Ljava/awt/geom/Arc2D;->setArc(DDDDDDI)V

    return-void
.end method

.method public setArcByCenter(DDDDDI)V
    .locals 14

    sub-double v1, p1, p5

    sub-double v3, p3, p5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v7, p5, v5

    move-object v0, p0

    move-wide v5, v7

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Ljava/awt/geom/Arc2D;->setArc(DDDDDDI)V

    return-void
.end method

.method public setArcByTangent(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;D)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double v4, v2, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v6, v4, v6

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v6, :cond_0

    sub-double/2addr v2, v7

    goto :goto_0

    :cond_0
    const-wide v9, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v4, v4, v9

    if-gez v4, :cond_1

    add-double/2addr v2, v7

    :cond_1
    :goto_0
    add-double v4, v0, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    sub-double v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double v6, p4, v6

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    add-double v9, v8, v10

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v6, v4

    add-double/2addr v11, v6

    cmpg-double v4, v0, v2

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-gez v4, :cond_2

    sub-double/2addr v0, v5

    add-double/2addr v2, v5

    goto :goto_1

    :cond_2
    add-double/2addr v0, v5

    sub-double/2addr v2, v5

    :goto_1
    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    neg-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double/2addr v0, v15

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    const-wide v3, 0x4076800000000000L    # 360.0

    if-gez v2, :cond_3

    add-double/2addr v0, v3

    goto :goto_2

    :cond_3
    sub-double/2addr v0, v3

    :goto_2
    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Ljava/awt/geom/Arc2D;->type:I

    move-object/from16 v8, p0

    move-wide/from16 v13, p4

    move/from16 v19, v1

    invoke-virtual/range {v8 .. v19}, Ljava/awt/geom/Arc2D;->setArcByCenter(DDDDDI)V

    return-void
.end method

.method public setArcType(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Ljava/awt/geom/Arc2D;->type:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid type for Arc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFrame(DDDD)V
    .locals 14

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v9

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v11

    move-object v0, p0

    iget v13, v0, Ljava/awt/geom/Arc2D;->type:I

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v13}, Ljava/awt/geom/Arc2D;->setArc(DDDDDDI)V

    return-void
.end method
