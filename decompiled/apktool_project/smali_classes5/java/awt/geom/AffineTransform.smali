.class public Ljava/awt/geom/AffineTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final APPLY_IDENTITY:I = 0x0

.field public static final APPLY_SCALE:I = 0x2

.field public static final APPLY_SHEAR:I = 0x4

.field public static final APPLY_TRANSLATE:I = 0x1

.field private static final HI_IDENTITY:I = 0x0

.field private static final HI_SCALE:I = 0x10

.field private static final HI_SHEAR:I = 0x20

.field private static final HI_SHIFT:I = 0x3

.field private static final HI_TRANSLATE:I = 0x8

.field public static final TYPE_FLIP:I = 0x40

.field public static final TYPE_GENERAL_ROTATION:I = 0x10

.field public static final TYPE_GENERAL_SCALE:I = 0x4

.field public static final TYPE_GENERAL_TRANSFORM:I = 0x20

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MASK_ROTATION:I = 0x18

.field public static final TYPE_MASK_SCALE:I = 0x6

.field public static final TYPE_QUADRANT_ROTATION:I = 0x8

.field public static final TYPE_TRANSLATION:I = 0x1

.field public static final TYPE_UNIFORM_SCALE:I = 0x2

.field private static final TYPE_UNKNOWN:I = -0x1

.field private static final rot90conversion:[I

.field private static final serialVersionUID:J = 0x127891154ad5ff62L


# instance fields
.field m00:D

.field m01:D

.field m02:D

.field m10:D

.field m11:D

.field m12:D

.field transient state:I

.field private transient type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/awt/geom/AffineTransform;->rot90conversion:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x5
        0x4
        0x5
        0x2
        0x3
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 11
    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 40
    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 41
    iput-wide p5, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 42
    iput-wide p7, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 43
    iput-wide p9, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 44
    iput-wide p11, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 45
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    return-void
.end method

.method private constructor <init>(DDDDDDI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 3
    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 4
    iput-wide p5, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 5
    iput-wide p7, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 6
    iput-wide p9, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 7
    iput-wide p11, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 8
    iput p13, p0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p1

    .line 22
    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    float-to-double p1, p2

    .line 23
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m10:D

    float-to-double p1, p3

    .line 24
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m01:D

    float-to-double p1, p4

    .line 25
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m11:D

    float-to-double p1, p5

    .line 26
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m02:D

    float-to-double p1, p6

    .line 27
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 28
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/AffineTransform;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m00:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 14
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 15
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 16
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 17
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 18
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 19
    iget v0, p1, Ljava/awt/geom/AffineTransform;->state:I

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 20
    iget p1, p1, Ljava/awt/geom/AffineTransform;->type:I

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    return-void
.end method

.method public constructor <init>([D)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    const/4 v0, 0x1

    .line 48
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    const/4 v0, 0x2

    .line 49
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    const/4 v0, 0x3

    .line 50
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 51
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    .line 52
    aget-wide v2, p1, v0

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 53
    aget-wide v0, p1, v1

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    const/4 v0, 0x1

    .line 31
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    const/4 v0, 0x2

    .line 32
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    const/4 v0, 0x3

    .line 33
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 34
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    .line 35
    aget v0, p1, v0

    float-to-double v2, v0

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 36
    aget p1, p1, v1

    float-to-double v0, p1

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 37
    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    return-void
.end method

.method private static _matround(D)D
    .locals 2

    const-wide v0, 0x430c6bf526340000L    # 1.0E15

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private calculateType()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    iget v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    goto/16 :goto_9

    :pswitch_0
    const/4 v1, 0x0

    goto/16 :goto_a

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    :goto_0
    iget-wide v10, v0, Ljava/awt/geom/AffineTransform;->m01:D

    cmpl-double v12, v10, v6

    if-ltz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m10:D

    cmpl-double v6, v13, v6

    if-ltz v6, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eq v12, v8, :cond_4

    neg-double v6, v13

    cmpl-double v6, v10, v6

    if-eqz v6, :cond_2

    :goto_3
    or-int/lit8 v8, v1, 0xc

    goto/16 :goto_f

    :cond_2
    cmpl-double v4, v10, v4

    if-eqz v4, :cond_3

    cmpl-double v2, v10, v2

    if-eqz v2, :cond_3

    goto :goto_7

    :cond_3
    or-int/lit8 v8, v1, 0x8

    goto/16 :goto_f

    :cond_4
    cmpl-double v2, v10, v13

    if-nez v2, :cond_5

    or-int/lit8 v8, v1, 0x4a

    goto/16 :goto_f

    :cond_5
    or-int/lit8 v8, v1, 0x4c

    goto/16 :goto_f

    :pswitch_3
    const/4 v1, 0x1

    goto :goto_4

    :pswitch_4
    const/4 v1, 0x0

    :goto_4
    iget-wide v10, v0, Ljava/awt/geom/AffineTransform;->m00:D

    cmpl-double v12, v10, v6

    if-ltz v12, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double v6, v13, v6

    if-ltz v6, :cond_7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    :goto_6
    if-ne v12, v8, :cond_b

    if-eqz v12, :cond_9

    cmpl-double v2, v10, v13

    if-nez v2, :cond_8

    or-int/lit8 v8, v1, 0x2

    goto/16 :goto_f

    :cond_8
    or-int/lit8 v8, v1, 0x4

    goto/16 :goto_f

    :cond_9
    cmpl-double v4, v10, v13

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    cmpl-double v2, v10, v2

    if-eqz v2, :cond_3

    :goto_7
    or-int/lit8 v8, v1, 0xa

    goto/16 :goto_f

    :cond_b
    neg-double v6, v13

    cmpl-double v6, v10, v6

    if-nez v6, :cond_e

    cmpl-double v4, v10, v4

    if-eqz v4, :cond_d

    cmpl-double v2, v10, v2

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    or-int/lit8 v8, v1, 0x42

    goto/16 :goto_f

    :cond_d
    :goto_8
    or-int/lit8 v8, v1, 0x40

    goto/16 :goto_f

    :cond_e
    or-int/lit8 v8, v1, 0x44

    goto/16 :goto_f

    :pswitch_5
    const/4 v8, 0x1

    goto :goto_f

    :pswitch_6
    const/4 v8, 0x0

    goto :goto_f

    :goto_9
    :pswitch_7
    const/4 v1, 0x1

    :goto_a
    iget-wide v2, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v10, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double v12, v2, v10

    iget-wide v14, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v8, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double v16, v14, v8

    add-double v12, v12, v16

    cmpl-double v12, v12, v6

    if-eqz v12, :cond_f

    const/16 v1, 0x20

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :cond_f
    cmpl-double v12, v2, v6

    if-ltz v12, :cond_10

    const/4 v12, 0x1

    goto :goto_b

    :cond_10
    const/4 v12, 0x0

    :goto_b
    cmpl-double v6, v8, v6

    if-ltz v6, :cond_11

    const/4 v6, 0x1

    goto :goto_c

    :cond_11
    const/4 v6, 0x0

    :goto_c
    if-ne v12, v6, :cond_15

    cmpl-double v6, v2, v8

    if-nez v6, :cond_14

    neg-double v6, v14

    cmpl-double v6, v10, v6

    if-eqz v6, :cond_12

    goto :goto_d

    :cond_12
    mul-double/2addr v2, v8

    mul-double/2addr v10, v14

    sub-double/2addr v2, v10

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_13

    or-int/lit8 v8, v1, 0x12

    goto :goto_f

    :cond_13
    or-int/lit8 v8, v1, 0x10

    goto :goto_f

    :cond_14
    :goto_d
    or-int/lit8 v8, v1, 0x14

    goto :goto_f

    :cond_15
    neg-double v6, v8

    cmpl-double v6, v2, v6

    if-nez v6, :cond_18

    cmpl-double v6, v10, v14

    if-eqz v6, :cond_16

    goto :goto_e

    :cond_16
    mul-double/2addr v2, v8

    mul-double/2addr v10, v14

    sub-double/2addr v2, v10

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_17

    or-int/lit8 v8, v1, 0x52

    goto :goto_f

    :cond_17
    or-int/lit8 v8, v1, 0x50

    goto :goto_f

    :cond_18
    :goto_e
    or-int/lit8 v8, v1, 0x54

    :goto_f
    iput v8, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static getQuadrantRotateInstance(I)Ljava/awt/geom/AffineTransform;
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/awt/geom/AffineTransform;->setToQuadrantRotation(I)V

    return-object v0
.end method

.method public static getQuadrantRotateInstance(IDD)Ljava/awt/geom/AffineTransform;
    .locals 7

    .line 3
    new-instance v6, Ljava/awt/geom/AffineTransform;

    invoke-direct {v6}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v0, v6

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 4
    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->setToQuadrantRotation(IDD)V

    return-object v6
.end method

.method public static getRotateInstance(D)Ljava/awt/geom/AffineTransform;
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/awt/geom/AffineTransform;->setToRotation(D)V

    return-object v0
.end method

.method public static getRotateInstance(DD)Ljava/awt/geom/AffineTransform;
    .locals 1

    .line 5
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 6
    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/awt/geom/AffineTransform;->setToRotation(DD)V

    return-object v0
.end method

.method public static getRotateInstance(DDD)Ljava/awt/geom/AffineTransform;
    .locals 8

    .line 3
    new-instance v7, Ljava/awt/geom/AffineTransform;

    invoke-direct {v7}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .line 4
    invoke-virtual/range {v0 .. v6}, Ljava/awt/geom/AffineTransform;->setToRotation(DDD)V

    return-object v7
.end method

.method public static getRotateInstance(DDDD)Ljava/awt/geom/AffineTransform;
    .locals 10

    .line 7
    new-instance v9, Ljava/awt/geom/AffineTransform;

    invoke-direct {v9}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v0, v9

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    .line 8
    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/AffineTransform;->setToRotation(DDDD)V

    return-object v9
.end method

.method public static getScaleInstance(DD)Ljava/awt/geom/AffineTransform;
    .locals 1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/awt/geom/AffineTransform;->setToScale(DD)V

    return-object v0
.end method

.method public static getShearInstance(DD)Ljava/awt/geom/AffineTransform;
    .locals 1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/awt/geom/AffineTransform;->setToShear(DD)V

    return-object v0
.end method

.method public static getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;
    .locals 1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/awt/geom/AffineTransform;->setToTranslation(DD)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    return-void
.end method

.method private final rotate180()V
    .locals 7

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    neg-double v0, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m11:D

    neg-double v2, v2

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m11:D

    iget v4, p0, Ljava/awt/geom/AffineTransform;->state:I

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_0

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    neg-double v0, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    neg-double v0, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    goto :goto_0

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v5

    if-nez v0, :cond_1

    cmpl-double v0, v2, v5

    if-nez v0, :cond_1

    and-int/lit8 v0, v4, -0x3

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    goto :goto_0

    :cond_1
    or-int/lit8 v0, v4, 0x2

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Ljava/awt/geom/AffineTransform;->type:I

    return-void
.end method

.method private final rotate270()V
    .locals 7

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m01:D

    neg-double v2, v2

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m11:D

    neg-double v4, v4

    iput-wide v4, p0, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    sget-object v4, Ljava/awt/geom/AffineTransform;->rot90conversion:[I

    iget v5, p0, Ljava/awt/geom/AffineTransform;->state:I

    aget v4, v4, v5

    and-int/lit8 v5, v4, 0x6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v5

    if-nez v2, :cond_0

    cmpl-double v0, v0, v5

    if-nez v0, :cond_0

    add-int/lit8 v4, v4, -0x2

    :cond_0
    iput v4, p0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/awt/geom/AffineTransform;->type:I

    return-void
.end method

.method private final rotate90()V
    .locals 7

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m00:D

    neg-double v0, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide v4, p0, Ljava/awt/geom/AffineTransform;->m10:D

    neg-double v0, v0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    sget-object v4, Ljava/awt/geom/AffineTransform;->rot90conversion:[I

    iget v5, p0, Ljava/awt/geom/AffineTransform;->state:I

    aget v4, v4, v5

    and-int/lit8 v5, v4, 0x6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v5

    if-nez v2, :cond_0

    cmpl-double v0, v0, v5

    if-nez v0, :cond_0

    add-int/lit8 v4, v4, -0x2

    :cond_0
    iput v4, p0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/awt/geom/AffineTransform;->type:I

    return-void
.end method

.method private stateError()V
    .locals 1

    new-instance p0, Ljava/awt/InternalError;

    const-string v0, "missing case in transform state switch"

    invoke-direct {p0, v0}, Ljava/awt/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/awt/InternalError;

    invoke-direct {v0, p0}, Ljava/awt/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public concatenate(Ljava/awt/geom/AffineTransform;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ljava/awt/geom/AffineTransform;->state:I

    iget v3, v1, Ljava/awt/geom/AffineTransform;->state:I

    shl-int/lit8 v4, v3, 0x3

    or-int/2addr v4, v2

    const/16 v5, 0x30

    if-eq v4, v5, :cond_1

    const/16 v5, 0x38

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    const-wide/16 v6, 0x0

    packed-switch v4, :pswitch_data_1

    iget-wide v6, v1, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v8, v1, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v10, v1, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v12, v1, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v14, v1, Ljava/awt/geom/AffineTransform;->m11:D

    move-wide/from16 v16, v6

    iget-wide v5, v1, Ljava/awt/geom/AffineTransform;->m12:D

    packed-switch v2, :pswitch_data_2

    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    goto :goto_1

    :pswitch_0
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v12, v1

    iput-wide v12, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v14, v1

    iput-wide v14, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double v6, v16, v1

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v8, v1

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double/2addr v10, v1

    add-double/2addr v3, v10

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    goto :goto_0

    :pswitch_1
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double v3, v16, v1

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v8, v1

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    mul-double/2addr v10, v1

    add-double/2addr v3, v10

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v12, v1

    iput-wide v12, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v14, v1

    iput-wide v14, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    return-void

    :pswitch_2
    move-wide/from16 v1, v16

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v1, v10

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v12, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v14, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr v1, v5

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m12:D

    or-int/lit8 v1, v3, 0x1

    iput v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 v1, -0x1

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :goto_1
    :pswitch_3
    or-int v1, v2, v3

    iput v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    :pswitch_4
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    move-wide/from16 v18, v5

    iget-wide v4, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double v6, v16, v1

    mul-double v20, v12, v4

    add-double v6, v6, v20

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double v6, v8, v1

    mul-double v20, v14, v4

    add-double v6, v6, v20

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v6, v0, Ljava/awt/geom/AffineTransform;->m02:D

    mul-double/2addr v1, v10

    mul-double v3, v18, v4

    add-double/2addr v1, v3

    add-double/2addr v6, v1

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double v6, v16, v1

    mul-double/2addr v12, v3

    add-double/2addr v6, v12

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v8, v1

    mul-double/2addr v14, v3

    add-double/2addr v8, v14

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double/2addr v10, v1

    mul-double v1, v18, v3

    add-double/2addr v10, v1

    add-double/2addr v5, v10

    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m12:D

    const/4 v1, -0x1

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :pswitch_5
    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m12:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m12:D

    goto :goto_2

    :pswitch_6
    iget-wide v2, v1, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v5, v1, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v9, v5

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v7, v2

    iput-wide v7, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v9, v5

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v7, v2

    iput-wide v7, v0, Ljava/awt/geom/AffineTransform;->m11:D

    const/4 v1, -0x1

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :pswitch_7
    iget-wide v8, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v10, v1, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v8, v10

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v8, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v10, v1, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v10

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m10:D

    xor-int/lit8 v1, v2, 0x6

    iput v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 v1, -0x1

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :pswitch_8
    iget-wide v8, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v10, v1, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v10

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v8, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v10, v1, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v8, v10

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m11:D

    xor-int/lit8 v1, v2, 0x6

    iput v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 v2, -0x1

    iput v2, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :pswitch_9
    const/4 v2, -0x1

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v1, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v3, v1, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m11:D

    const/4 v1, 0x5

    iput v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    iput v2, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :goto_2
    :pswitch_a
    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iput v3, v0, Ljava/awt/geom/AffineTransform;->state:I

    iget v1, v1, Ljava/awt/geom/AffineTransform;->type:I

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :pswitch_b
    iget-wide v2, v1, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m11:D

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    return-void

    :pswitch_c
    iget-wide v2, v1, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m12:D

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    :pswitch_d
    return-void

    :cond_0
    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m10:D

    :pswitch_e
    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m00:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m11:D

    :pswitch_f
    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m12:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m12:D

    iput v3, v0, Ljava/awt/geom/AffineTransform;->state:I

    iget v1, v1, Ljava/awt/geom/AffineTransform;->type:I

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :cond_1
    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m10:D

    :pswitch_10
    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m00:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iput v3, v0, Ljava/awt/geom/AffineTransform;->state:I

    iget v1, v1, Ljava/awt/geom/AffineTransform;->type:I

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public createInverse()Ljava/awt/geom/AffineTransform;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/geom/NoninvertibleTransformException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    const-string v2, "Determinant is "

    const-wide/16 v3, 0x1

    const-string v5, "Determinant is 0"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v5, v7

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v1, v7, v3

    if-lez v1, :cond_0

    new-instance v1, Ljava/awt/geom/AffineTransform;

    iget-wide v2, v0, Ljava/awt/geom/AffineTransform;->m11:D

    div-double v8, v2, v5

    iget-wide v10, v0, Ljava/awt/geom/AffineTransform;->m10:D

    neg-double v12, v10

    div-double/2addr v12, v5

    iget-wide v14, v0, Ljava/awt/geom/AffineTransform;->m01:D

    move-wide/from16 v16, v12

    neg-double v12, v14

    div-double/2addr v12, v5

    move-wide/from16 v18, v12

    iget-wide v12, v0, Ljava/awt/geom/AffineTransform;->m00:D

    div-double v20, v12, v5

    move-wide/from16 v22, v8

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double/2addr v14, v7

    move-object v4, v1

    iget-wide v0, v0, Ljava/awt/geom/AffineTransform;->m02:D

    mul-double/2addr v2, v0

    sub-double/2addr v14, v2

    div-double v2, v14, v5

    mul-double/2addr v10, v0

    mul-double/2addr v12, v7

    sub-double/2addr v10, v12

    div-double v0, v10, v5

    const/4 v5, 0x7

    move-object v7, v4

    move-wide/from16 v8, v22

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    move-wide/from16 v14, v20

    move-wide/from16 v16, v2

    move-wide/from16 v18, v0

    move/from16 v20, v5

    invoke-direct/range {v7 .. v20}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDDI)V

    return-object v4

    :cond_0
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v5, v7

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v1, v7, v3

    if-lez v1, :cond_1

    new-instance v1, Ljava/awt/geom/AffineTransform;

    iget-wide v2, v0, Ljava/awt/geom/AffineTransform;->m11:D

    div-double v8, v2, v5

    iget-wide v2, v0, Ljava/awt/geom/AffineTransform;->m10:D

    neg-double v2, v2

    div-double v10, v2, v5

    iget-wide v2, v0, Ljava/awt/geom/AffineTransform;->m01:D

    neg-double v2, v2

    div-double v12, v2, v5

    iget-wide v2, v0, Ljava/awt/geom/AffineTransform;->m00:D

    div-double v14, v2, v5

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x6

    move-object v7, v1

    invoke-direct/range {v7 .. v20}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDDI)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    cmpl-double v3, v1, v8

    if-eqz v3, :cond_2

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m10:D

    cmpl-double v8, v3, v8

    if-eqz v8, :cond_2

    new-instance v5, Ljava/awt/geom/AffineTransform;

    const-wide/16 v10, 0x0

    div-double v12, v6, v1

    div-double v14, v6, v3

    const-wide/16 v16, 0x0

    iget-wide v6, v0, Ljava/awt/geom/AffineTransform;->m12:D

    neg-double v6, v6

    div-double v18, v6, v3

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    neg-double v3, v3

    div-double v20, v3, v1

    const/16 v22, 0x5

    move-object v9, v5

    invoke-direct/range {v9 .. v22}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDDI)V

    return-object v5

    :cond_2
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v5}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    cmpl-double v3, v1, v8

    if-eqz v3, :cond_3

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m10:D

    cmpl-double v0, v3, v8

    if-eqz v0, :cond_3

    new-instance v0, Ljava/awt/geom/AffineTransform;

    const-wide/16 v9, 0x0

    div-double v11, v6, v1

    div-double v13, v6, v3

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x4

    move-object v8, v0

    invoke-direct/range {v8 .. v21}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDDI)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v5}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    cmpl-double v3, v1, v8

    if-eqz v3, :cond_4

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double v8, v3, v8

    if-eqz v8, :cond_4

    new-instance v5, Ljava/awt/geom/AffineTransform;

    div-double v10, v6, v1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    div-double v16, v6, v3

    iget-wide v6, v0, Ljava/awt/geom/AffineTransform;->m02:D

    neg-double v6, v6

    div-double v18, v6, v1

    iget-wide v0, v0, Ljava/awt/geom/AffineTransform;->m12:D

    neg-double v0, v0

    div-double v20, v0, v3

    const/16 v22, 0x3

    move-object v9, v5

    invoke-direct/range {v9 .. v22}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDDI)V

    return-object v5

    :cond_4
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v5}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    cmpl-double v3, v1, v8

    if-eqz v3, :cond_5

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double v0, v3, v8

    if-eqz v0, :cond_5

    new-instance v0, Ljava/awt/geom/AffineTransform;

    div-double v9, v6, v1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    div-double v15, v6, v3

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v21}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDDI)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v5}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    new-instance v1, Ljava/awt/geom/AffineTransform;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    iget-wide v2, v0, Ljava/awt/geom/AffineTransform;->m02:D

    neg-double v2, v2

    iget-wide v4, v0, Ljava/awt/geom/AffineTransform;->m12:D

    neg-double v4, v4

    const/16 v19, 0x1

    move-object v6, v1

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-direct/range {v6 .. v19}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDDI)V

    return-object v1

    :pswitch_7
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0, p1, p0}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 8

    if-nez p2, :cond_1

    .line 1
    instance-of p2, p1, Ljava/awt/geom/Point2D$Double;

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Double;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    .line 6
    iget p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    packed-switch p1, :pswitch_data_0

    .line 7
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    const/4 p0, 0x0

    return-object p0

    .line 8
    :pswitch_0
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v0, v6

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    invoke-virtual {p2, v4, v5, v0, v1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 9
    :pswitch_1
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v2, v4

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v0, p0

    invoke-virtual {p2, v2, v3, v0, v1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 10
    :pswitch_2
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v0, v4

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v2, p0

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 11
    :pswitch_3
    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deltaTransform([DI[DII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    if-ne v3, v1, :cond_0

    if-le v4, v2, :cond_0

    mul-int/lit8 v5, p5, 0x2

    add-int v6, v2, v5

    if-ge v4, v6, :cond_0

    .line 12
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v4

    .line 13
    :cond_0
    iget v5, v0, Ljava/awt/geom/AffineTransform;->state:I

    packed-switch v5, :pswitch_data_0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    return-void

    .line 15
    :pswitch_0
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 16
    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move/from16 v0, p5

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    add-int/lit8 v13, v2, 0x1

    .line 17
    aget-wide v14, v1, v2

    add-int/lit8 v2, v13, 0x1

    .line 18
    aget-wide v16, v1, v13

    add-int/lit8 v13, v4, 0x1

    mul-double v18, v14, v5

    mul-double v20, v16, v7

    add-double v18, v18, v20

    .line 19
    aput-wide v18, v3, v4

    add-int/lit8 v4, v13, 0x1

    mul-double/2addr v14, v9

    mul-double v16, v16, v11

    add-double v14, v14, v16

    .line 20
    aput-wide v14, v3, v13

    goto :goto_0

    :cond_1
    return-void

    .line 21
    :pswitch_1
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m10:D

    move/from16 v0, p5

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    add-int/lit8 v9, v2, 0x1

    .line 22
    aget-wide v10, v1, v2

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v12, v9, 0x1

    .line 23
    aget-wide v13, v1, v9

    mul-double/2addr v13, v5

    aput-wide v13, v3, v4

    add-int/lit8 v4, v2, 0x1

    mul-double/2addr v10, v7

    .line 24
    aput-wide v10, v3, v2

    move v2, v12

    goto :goto_1

    :cond_2
    return-void

    .line 25
    :pswitch_2
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move/from16 v0, p5

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x1

    .line 26
    aget-wide v11, v1, v2

    mul-double/2addr v11, v5

    aput-wide v11, v3, v4

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v2, v10, 0x1

    .line 27
    aget-wide v10, v1, v10

    mul-double/2addr v10, v7

    aput-wide v10, v3, v9

    goto :goto_2

    :cond_3
    return-void

    :pswitch_3
    if-ne v1, v3, :cond_4

    if-eq v2, v4, :cond_5

    :cond_4
    mul-int/lit8 v0, p5, 0x2

    .line 28
    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Ljava/awt/geom/AffineTransform;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/awt/geom/AffineTransform;

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v4, p1, Ljava/awt/geom/AffineTransform;->m00:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v4, p1, Ljava/awt/geom/AffineTransform;->m01:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v4, p1, Ljava/awt/geom/AffineTransform;->m02:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v4, p1, Ljava/awt/geom/AffineTransform;->m10:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v4, p1, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m12:D

    iget-wide p0, p1, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p0, v2, p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDeterminant()D
    .locals 6

    iget v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    goto :goto_0

    :pswitch_0
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v0, v2

    neg-double v0, v0

    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v0, v2

    return-wide v0

    :pswitch_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :goto_0
    :pswitch_3
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getMatrix([D)V
    .locals 4

    const/4 v0, 0x0

    iget-wide v1, p0, Ljava/awt/geom/AffineTransform;->m00:D

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Ljava/awt/geom/AffineTransform;->m10:D

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    iget-wide v1, p0, Ljava/awt/geom/AffineTransform;->m01:D

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    iget-wide v1, p0, Ljava/awt/geom/AffineTransform;->m11:D

    aput-wide v1, p1, v0

    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    aput-wide v2, p1, v0

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m12:D

    aput-wide v2, p1, v1

    :cond_0
    return-void
.end method

.method public getScaleX()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    return-wide v0
.end method

.method public getScaleY()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    return-wide v0
.end method

.method public getShearX()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    return-wide v0
.end method

.method public getShearY()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    return-wide v0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Ljava/awt/geom/AffineTransform;->state:I

    return p0
.end method

.method public getTranslateX()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    return-wide v0
.end method

.method public getTranslateY()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    return-wide v0
.end method

.method public getType()I
    .locals 2

    iget v0, p0, Ljava/awt/geom/AffineTransform;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->calculateType()V

    :cond_0
    iget p0, p0, Ljava/awt/geom/AffineTransform;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1f

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m01:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m02:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m10:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m11:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m12:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public inverseTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/geom/NoninvertibleTransformException;
        }
    .end annotation

    if-nez p2, :cond_1

    .line 1
    instance-of p2, p1, Ljava/awt/geom/Point2D$Double;

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Double;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    .line 6
    iget p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    const-string v4, "Determinant is 0"

    const-wide/16 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    goto :goto_1

    .line 8
    :pswitch_0
    iget-wide v7, p0, Ljava/awt/geom/AffineTransform;->m02:D

    sub-double/2addr v0, v7

    .line 9
    iget-wide v7, p0, Ljava/awt/geom/AffineTransform;->m12:D

    sub-double/2addr v2, v7

    .line 10
    :pswitch_1
    iget-wide v7, p0, Ljava/awt/geom/AffineTransform;->m01:D

    cmpl-double p1, v7, v5

    if-eqz p1, :cond_2

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    cmpl-double v5, p0, v5

    if-eqz v5, :cond_2

    div-double/2addr v2, p0

    div-double/2addr v0, v7

    .line 11
    invoke-virtual {p2, v2, v3, v0, v1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 12
    :cond_2
    new-instance p0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {p0, v4}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :pswitch_2
    iget-wide v7, p0, Ljava/awt/geom/AffineTransform;->m02:D

    sub-double/2addr v0, v7

    .line 14
    iget-wide v7, p0, Ljava/awt/geom/AffineTransform;->m12:D

    sub-double/2addr v2, v7

    .line 15
    :pswitch_3
    iget-wide v7, p0, Ljava/awt/geom/AffineTransform;->m00:D

    cmpl-double p1, v7, v5

    if-eqz p1, :cond_3

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double v5, p0, v5

    if-eqz v5, :cond_3

    div-double/2addr v0, v7

    div-double/2addr v2, p0

    .line 16
    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 17
    :cond_3
    new-instance p0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {p0, v4}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :pswitch_4
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m02:D

    sub-double/2addr v0, v4

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    sub-double/2addr v2, p0

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 19
    :pswitch_5
    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 20
    :goto_1
    :pswitch_6
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m02:D

    sub-double/2addr v0, v4

    .line 21
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m12:D

    sub-double/2addr v2, v4

    .line 22
    :pswitch_7
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v8, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmpg-double p1, v6, v8

    if-lez p1, :cond_4

    .line 24
    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v0

    iget-wide v8, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    div-double/2addr v6, v4

    iget-wide v8, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v2, v8

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v0, p0

    sub-double/2addr v2, v0

    div-double/2addr v2, v4

    invoke-virtual {p2, v6, v7, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 25
    :cond_4
    new-instance p0, Ljava/awt/geom/NoninvertibleTransformException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Determinant is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public inverseTransform([DI[DII)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/geom/NoninvertibleTransformException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    if-ne v3, v1, :cond_0

    if-le v4, v2, :cond_0

    mul-int/lit8 v5, p5, 0x2

    add-int v6, v2, v5

    if-ge v4, v6, :cond_0

    .line 26
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v4

    .line 27
    :cond_0
    iget v5, v0, Ljava/awt/geom/AffineTransform;->state:I

    const-string v6, "Determinant is "

    const-string v9, "Determinant is 0"

    const-wide/16 v10, 0x0

    packed-switch v5, :pswitch_data_0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    return-void

    .line 29
    :pswitch_0
    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 30
    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v4, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move/from16 p2, v2

    iget-wide v2, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double v17, v9, v4

    mul-double v19, v11, v7

    move-object/from16 v21, v6

    move-wide/from16 v22, v7

    sub-double v6, v17, v19

    .line 31
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    const-wide/16 v15, 0x1

    cmpg-double v0, v17, v15

    if-lez v0, :cond_2

    move/from16 v15, p2

    move/from16 v0, p4

    move/from16 v8, p5

    :goto_0
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_1

    add-int/lit8 v16, v15, 0x1

    .line 32
    aget-wide v17, v1, v15

    sub-double v17, v17, v13

    add-int/lit8 v15, v16, 0x1

    .line 33
    aget-wide v19, v1, v16

    sub-double v19, v19, v2

    add-int/lit8 v16, v0, 0x1

    mul-double v24, v17, v4

    mul-double v26, v19, v11

    sub-double v24, v24, v26

    div-double v24, v24, v6

    move-wide/from16 v26, v2

    move-object/from16 v2, p3

    .line 34
    aput-wide v24, v2, v0

    add-int/lit8 v0, v16, 0x1

    mul-double v19, v19, v9

    mul-double v17, v17, v22

    sub-double v19, v19, v17

    div-double v19, v19, v6

    .line 35
    aput-wide v19, v2, v16

    move-wide/from16 v2, v26

    goto :goto_0

    :cond_1
    return-void

    .line 36
    :cond_2
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move/from16 p2, v2

    move-object v2, v3

    move-object v3, v6

    .line 37
    iget-wide v4, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v6, v0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 38
    iget-wide v8, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v10, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double v12, v4, v10

    mul-double v17, v6, v8

    sub-double v12, v12, v17

    .line 39
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    const-wide/16 v14, 0x1

    cmpg-double v0, v17, v14

    if-lez v0, :cond_4

    move/from16 v14, p2

    move/from16 v0, p4

    move/from16 v3, p5

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    add-int/lit8 v15, v14, 0x1

    .line 40
    aget-wide v16, v1, v14

    add-int/lit8 v14, v15, 0x1

    .line 41
    aget-wide v18, v1, v15

    add-int/lit8 v15, v0, 0x1

    mul-double v20, v16, v10

    mul-double v22, v18, v6

    sub-double v20, v20, v22

    div-double v20, v20, v12

    .line 42
    aput-wide v20, v2, v0

    add-int/lit8 v0, v15, 0x1

    mul-double v18, v18, v4

    mul-double v16, v16, v8

    sub-double v18, v18, v16

    div-double v18, v18, v12

    .line 43
    aput-wide v18, v2, v15

    goto :goto_1

    :cond_3
    return-void

    .line 44
    :cond_4
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move/from16 p2, v2

    move-object v2, v3

    .line 45
    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 46
    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v12, v0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v0, v3, v10

    if-eqz v0, :cond_6

    cmpl-double v0, v7, v10

    if-eqz v0, :cond_6

    move/from16 v10, p2

    move/from16 v0, p4

    move/from16 v9, p5

    :goto_2
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_5

    add-int/lit8 v11, v10, 0x1

    .line 47
    aget-wide v14, v1, v10

    sub-double/2addr v14, v5

    add-int/lit8 v10, v0, 0x1

    add-int/lit8 v16, v11, 0x1

    .line 48
    aget-wide v17, v1, v11

    sub-double v17, v17, v12

    div-double v17, v17, v7

    aput-wide v17, v2, v0

    add-int/lit8 v0, v10, 0x1

    div-double/2addr v14, v3

    .line 49
    aput-wide v14, v2, v10

    move/from16 v10, v16

    goto :goto_2

    :cond_5
    return-void

    .line 50
    :cond_6
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v9}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move/from16 p2, v2

    move-object v2, v3

    .line 51
    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m10:D

    cmpl-double v0, v3, v10

    if-eqz v0, :cond_8

    cmpl-double v0, v5, v10

    if-eqz v0, :cond_8

    move/from16 v8, p2

    move/from16 v0, p4

    move/from16 v7, p5

    :goto_3
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_7

    add-int/lit8 v9, v8, 0x1

    .line 52
    aget-wide v10, v1, v8

    add-int/lit8 v8, v0, 0x1

    add-int/lit8 v12, v9, 0x1

    .line 53
    aget-wide v13, v1, v9

    div-double/2addr v13, v5

    aput-wide v13, v2, v0

    add-int/lit8 v0, v8, 0x1

    div-double/2addr v10, v3

    .line 54
    aput-wide v10, v2, v8

    move v8, v12

    goto :goto_3

    :cond_7
    return-void

    .line 55
    :cond_8
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v9}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    move/from16 p2, v2

    move-object v2, v3

    .line 56
    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 57
    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v12, v0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v0, v3, v10

    if-eqz v0, :cond_a

    cmpl-double v0, v7, v10

    if-eqz v0, :cond_a

    move/from16 v10, p2

    move/from16 v0, p4

    move/from16 v9, p5

    :goto_4
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_9

    add-int/lit8 v11, v0, 0x1

    add-int/lit8 v14, v10, 0x1

    .line 58
    aget-wide v15, v1, v10

    sub-double/2addr v15, v5

    div-double/2addr v15, v3

    aput-wide v15, v2, v0

    add-int/lit8 v0, v11, 0x1

    add-int/lit8 v10, v14, 0x1

    .line 59
    aget-wide v14, v1, v14

    sub-double/2addr v14, v12

    div-double/2addr v14, v7

    aput-wide v14, v2, v11

    goto :goto_4

    :cond_9
    return-void

    .line 60
    :cond_a
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v9}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move/from16 p2, v2

    move-object v2, v3

    .line 61
    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double v0, v3, v10

    if-eqz v0, :cond_c

    cmpl-double v0, v5, v10

    if-eqz v0, :cond_c

    move/from16 v8, p2

    move/from16 v0, p4

    move/from16 v7, p5

    :goto_5
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_b

    add-int/lit8 v9, v0, 0x1

    add-int/lit8 v10, v8, 0x1

    .line 62
    aget-wide v11, v1, v8

    div-double/2addr v11, v3

    aput-wide v11, v2, v0

    add-int/lit8 v0, v9, 0x1

    add-int/lit8 v8, v10, 0x1

    .line 63
    aget-wide v10, v1, v10

    div-double/2addr v10, v5

    aput-wide v10, v2, v9

    goto :goto_5

    :cond_b
    return-void

    .line 64
    :cond_c
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v9}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move/from16 p2, v2

    move-object v2, v3

    .line 65
    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v8, p2

    move/from16 v0, p4

    move/from16 v7, p5

    :goto_6
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_d

    add-int/lit8 v9, v0, 0x1

    add-int/lit8 v10, v8, 0x1

    .line 66
    aget-wide v11, v1, v8

    sub-double/2addr v11, v3

    aput-wide v11, v2, v0

    add-int/lit8 v0, v9, 0x1

    add-int/lit8 v8, v10, 0x1

    .line 67
    aget-wide v10, v1, v10

    sub-double/2addr v10, v5

    aput-wide v10, v2, v9

    goto :goto_6

    :cond_d
    return-void

    :pswitch_7
    move/from16 p2, v2

    move-object v2, v3

    move/from16 v4, p2

    move/from16 v0, p4

    if-ne v1, v2, :cond_e

    if-eq v4, v0, :cond_f

    :cond_e
    mul-int/lit8 v3, p5, 0x2

    .line 68
    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invert()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/geom/NoninvertibleTransformException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    const-string v2, "Determinant is "

    const-string v5, "Determinant is 0"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    return-void

    :pswitch_0
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double v17, v5, v13

    mul-double v19, v7, v11

    move-object/from16 v21, v2

    sub-double v1, v17, v19

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    const-wide/16 v15, 0x1

    cmpg-double v15, v17, v15

    if-lez v15, :cond_0

    move-wide v15, v9

    div-double v9, v13, v1

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m00:D

    neg-double v9, v11

    div-double/2addr v9, v1

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    neg-double v9, v7

    div-double/2addr v9, v1

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m01:D

    div-double v9, v5, v1

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v7, v3

    mul-double/2addr v13, v15

    sub-double/2addr v7, v13

    div-double/2addr v7, v1

    iput-wide v7, v0, Ljava/awt/geom/AffineTransform;->m02:D

    mul-double/2addr v11, v15

    mul-double/2addr v5, v3

    sub-double/2addr v11, v5

    div-double/2addr v11, v1

    iput-wide v11, v0, Ljava/awt/geom/AffineTransform;->m12:D

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v4, v2

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double v11, v1, v9

    mul-double v13, v5, v7

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide/16 v15, 0x1

    cmpg-double v3, v13, v15

    if-lez v3, :cond_1

    div-double/2addr v9, v11

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m00:D

    neg-double v3, v7

    div-double/2addr v3, v11

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m10:D

    neg-double v3, v5

    div-double/2addr v3, v11

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m01:D

    div-double/2addr v1, v11

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m11:D

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v10, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v12, v0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v14, v1, v8

    if-eqz v14, :cond_2

    cmpl-double v8, v10, v8

    if-eqz v8, :cond_2

    div-double v8, v6, v1

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m10:D

    div-double/2addr v6, v10

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m01:D

    neg-double v5, v12

    div-double/2addr v5, v10

    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m02:D

    neg-double v3, v3

    div-double/2addr v3, v1

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v5}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m10:D

    cmpl-double v10, v1, v8

    if-eqz v10, :cond_3

    cmpl-double v8, v3, v8

    if-eqz v8, :cond_3

    div-double v1, v6, v1

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m10:D

    div-double/2addr v6, v3

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m01:D

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v5}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v10, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v12, v0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v14, v1, v8

    if-eqz v14, :cond_4

    cmpl-double v8, v10, v8

    if-eqz v8, :cond_4

    div-double v8, v6, v1

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m00:D

    div-double/2addr v6, v10

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m11:D

    neg-double v3, v3

    div-double/2addr v3, v1

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    neg-double v1, v12

    div-double/2addr v1, v10

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m12:D

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v5}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double v10, v1, v8

    if-eqz v10, :cond_5

    cmpl-double v8, v3, v8

    if-eqz v8, :cond_5

    div-double v1, v6, v1

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    div-double/2addr v6, v3

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m11:D

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/awt/geom/NoninvertibleTransformException;

    invoke-direct {v0, v5}, Ljava/awt/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    neg-double v1, v1

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m12:D

    neg-double v1, v1

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m12:D

    :goto_0
    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isIdentity()Z
    .locals 1

    iget v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public preConcatenate(Ljava/awt/geom/AffineTransform;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ljava/awt/geom/AffineTransform;->state:I

    iget v3, v1, Ljava/awt/geom/AffineTransform;->state:I

    shl-int/lit8 v4, v3, 0x3

    or-int/2addr v4, v2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    iget-wide v6, v1, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v8, v1, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v10, v1, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v12, v1, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v14, v1, Ljava/awt/geom/AffineTransform;->m11:D

    move-wide/from16 v16, v6

    iget-wide v5, v1, Ljava/awt/geom/AffineTransform;->m12:D

    packed-switch v2, :pswitch_data_2

    move-wide/from16 v18, v5

    move-wide/from16 v4, v16

    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    goto/16 :goto_1

    :pswitch_0
    move-wide/from16 v18, v5

    move-wide/from16 v4, v16

    goto/16 :goto_1

    :pswitch_1
    move-wide v1, v5

    move-wide/from16 v4, v16

    goto/16 :goto_2

    :pswitch_2
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double v18, v1, v16

    mul-double v20, v3, v8

    add-double v18, v18, v20

    add-double v10, v10, v18

    mul-double/2addr v1, v12

    mul-double/2addr v3, v14

    add-double/2addr v1, v3

    add-double/2addr v5, v1

    :pswitch_3
    iput-wide v10, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m12:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v8, v1

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v1, v14

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double v6, v1, v16

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v1, v12

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m11:D

    goto/16 :goto_3

    :pswitch_4
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double v18, v1, v16

    mul-double v20, v3, v8

    add-double v18, v18, v20

    add-double v10, v10, v18

    mul-double/2addr v1, v12

    mul-double/2addr v3, v14

    add-double/2addr v1, v3

    add-double/2addr v5, v1

    :pswitch_5
    iput-wide v10, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m12:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double v6, v1, v16

    iput-wide v6, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v1, v12

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v1

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v1, v14

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m11:D

    goto :goto_3

    :pswitch_6
    move-wide/from16 v18, v5

    iget-wide v4, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v6, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double v20, v4, v16

    mul-double v22, v6, v8

    add-double v20, v20, v22

    add-double v10, v10, v20

    mul-double/2addr v4, v12

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    add-double v5, v18, v4

    goto :goto_0

    :pswitch_7
    move-wide/from16 v18, v5

    :goto_0
    iput-wide v10, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move-wide/from16 v4, v16

    iput-wide v4, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iput-wide v12, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v14, v0, Ljava/awt/geom/AffineTransform;->m11:D

    or-int v1, v2, v3

    iput v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 v1, -0x1

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :goto_1
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v6, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double v16, v1, v4

    mul-double v20, v6, v8

    add-double v16, v16, v20

    add-double v10, v10, v16

    mul-double/2addr v1, v12

    mul-double/2addr v6, v14

    add-double/2addr v1, v6

    add-double v1, v18, v1

    :goto_2
    iput-wide v10, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m12:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v6, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double v10, v1, v4

    mul-double v16, v6, v8

    add-double v10, v10, v16

    iput-wide v10, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v1, v12

    mul-double/2addr v6, v14

    add-double/2addr v1, v6

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v6, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double v3, v1, v4

    mul-double/2addr v8, v6

    add-double/2addr v3, v8

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v1, v12

    mul-double/2addr v6, v14

    add-double/2addr v1, v6

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m11:D

    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    return-void

    :pswitch_8
    or-int/lit8 v2, v2, 0x2

    :pswitch_9
    xor-int/lit8 v2, v2, 0x4

    iput v2, v0, Ljava/awt/geom/AffineTransform;->state:I

    :pswitch_a
    iget-wide v2, v1, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v5, v1, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v9, v2

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v7, v5

    iput-wide v7, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v9, v2

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v5

    iput-wide v7, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double/2addr v9, v2

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m02:D

    mul-double/2addr v7, v5

    iput-wide v7, v0, Ljava/awt/geom/AffineTransform;->m12:D

    const/4 v1, -0x1

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :pswitch_b
    or-int/lit8 v3, v2, 0x2

    iput v3, v0, Ljava/awt/geom/AffineTransform;->state:I

    :pswitch_c
    iget-wide v5, v1, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v1, Ljava/awt/geom/AffineTransform;->m11:D

    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_0

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v9, v5

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v9, v7

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_1

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v9, v5

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v9, v7

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    goto :goto_4

    :cond_0
    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v9, v5

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v9, v7

    iput-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    :cond_1
    :goto_4
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_2

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    mul-double/2addr v1, v5

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m12:D

    mul-double/2addr v1, v7

    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m12:D

    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :pswitch_d
    iget-wide v2, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v2, v0, Ljava/awt/geom/AffineTransform;->m12:D

    iget-wide v4, v1, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Ljava/awt/geom/AffineTransform;->m12:D

    return-void

    :pswitch_e
    iget-wide v3, v1, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v3, v1, Ljava/awt/geom/AffineTransform;->m12:D

    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    or-int/lit8 v1, v2, 0x1

    iput v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    iget v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    :pswitch_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public quadrantRotate(I)V
    .locals 2

    const/4 v0, 0x3

    and-int/2addr p1, v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate270()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate180()V

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate90()V

    :goto_0
    return-void
.end method

.method public quadrantRotate(IDD)V
    .locals 10

    const/4 v0, 0x3

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m01:D

    add-double v8, v4, v6

    mul-double/2addr v8, p2

    sub-double/2addr v6, v4

    mul-double/2addr v6, p4

    add-double/2addr v8, v6

    add-double/2addr v2, v8

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 5
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m12:D

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m11:D

    add-double v8, v4, v6

    mul-double/2addr p2, v8

    sub-double/2addr v6, v4

    mul-double/2addr p4, v6

    add-double/2addr p2, p4

    add-double/2addr v2, p2

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 6
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate270()V

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    add-double/2addr v4, v4

    mul-double/2addr v4, p2

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m01:D

    add-double/2addr v6, v6

    mul-double/2addr v6, p4

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 8
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m12:D

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m10:D

    add-double/2addr v4, v4

    mul-double/2addr p2, v4

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m11:D

    add-double/2addr v4, v4

    mul-double/2addr p4, v4

    add-double/2addr p2, p4

    add-double/2addr v2, p2

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 9
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate180()V

    goto :goto_0

    .line 10
    :cond_2
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m01:D

    sub-double v8, v4, v6

    mul-double/2addr v8, p2

    add-double/2addr v6, v4

    mul-double/2addr v6, p4

    add-double/2addr v8, v6

    add-double/2addr v2, v8

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 11
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m12:D

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m11:D

    sub-double v8, v4, v6

    mul-double/2addr p2, v8

    add-double/2addr v6, v4

    mul-double/2addr p4, v6

    add-double/2addr p2, p4

    add-double/2addr v2, p2

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 12
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate90()V

    .line 13
    :goto_0
    iget-wide p1, p0, Ljava/awt/geom/AffineTransform;->m02:D

    const-wide/16 p3, 0x0

    cmpl-double p1, p1, p3

    if-nez p1, :cond_3

    iget-wide p1, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p1, p1, p3

    if-nez p1, :cond_3

    .line 14
    iget p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    goto :goto_1

    .line 15
    :cond_3
    iget p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    or-int/2addr p1, v1

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    :cond_4
    :goto_1
    return-void
.end method

.method public rotate(D)V
    .locals 10

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate90()V

    goto :goto_0

    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_1

    .line 3
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate270()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    cmpl-double v4, p1, v4

    if-nez v4, :cond_2

    .line 5
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate180()V

    goto :goto_0

    :cond_2
    cmpl-double v2, p1, v2

    if-eqz v2, :cond_3

    .line 6
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 7
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double v6, p1, v2

    mul-double v8, v0, v4

    add-double/2addr v6, v8

    .line 8
    iput-wide v6, p0, Ljava/awt/geom/AffineTransform;->m00:D

    neg-double v6, v0

    mul-double/2addr v2, v6

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    .line 9
    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 10
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 11
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double v8, p1, v2

    mul-double/2addr v0, v4

    add-double/2addr v8, v0

    .line 12
    iput-wide v8, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v2

    mul-double/2addr p1, v4

    add-double/2addr v6, p1

    .line 13
    iput-wide v6, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 14
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    :cond_3
    :goto_0
    return-void
.end method

.method public rotate(DD)V
    .locals 8

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_3

    .line 18
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate180()V

    goto :goto_0

    :cond_0
    cmpl-double v0, p1, v0

    if-nez v0, :cond_2

    if-lez v2, :cond_1

    .line 19
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate90()V

    goto :goto_0

    .line 20
    :cond_1
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->rotate270()V

    goto :goto_0

    :cond_2
    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr p3, v0

    div-double/2addr p1, v0

    .line 22
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 23
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double v4, p1, v0

    mul-double v6, p3, v2

    add-double/2addr v4, v6

    .line 24
    iput-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    neg-double v4, p3

    mul-double/2addr v0, v4

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    .line 25
    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 26
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 27
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double v6, p1, v0

    mul-double/2addr p3, v2

    add-double/2addr v6, p3

    .line 28
    iput-wide v6, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v4, v0

    mul-double/2addr p1, v2

    add-double/2addr v4, p1

    .line 29
    iput-wide v4, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 30
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    :cond_3
    :goto_0
    return-void
.end method

.method public rotate(DDD)V
    .locals 0

    .line 15
    invoke-virtual {p0, p3, p4, p5, p6}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 16
    invoke-virtual {p0, p1, p2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    neg-double p1, p3

    neg-double p3, p5

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    return-void
.end method

.method public rotate(DDDD)V
    .locals 0

    .line 31
    invoke-virtual {p0, p5, p6, p7, p8}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->rotate(DD)V

    neg-double p1, p5

    neg-double p3, p7

    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    return-void
.end method

.method public scale(DD)V
    .locals 8

    iget v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    goto :goto_2

    :pswitch_0
    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v6, p1

    iput-wide v6, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide p1, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr p1, p3

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double p3, v6, v4

    if-nez p3, :cond_1

    cmpl-double p1, p1, v4

    if-nez p1, :cond_1

    and-int/lit8 p1, v0, 0x1

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_1

    :cond_1
    iput v2, p0, Ljava/awt/geom/AffineTransform;->type:I

    :goto_1
    return-void

    :pswitch_1
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double p1, p1, v4

    if-nez p1, :cond_2

    cmpl-double p1, p3, v4

    if-eqz p1, :cond_3

    :cond_2
    or-int/lit8 p1, v0, 0x2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v2, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_3
    return-void

    :goto_2
    :pswitch_2
    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v6, p1

    iput-wide v6, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v6, p3

    iput-wide v6, p0, Ljava/awt/geom/AffineTransform;->m11:D

    :pswitch_3
    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v6, p3

    iput-wide v6, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide p3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr p3, p1

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    const-wide/16 p1, 0x0

    cmpl-double v6, v6, p1

    if-nez v6, :cond_6

    cmpl-double p1, p3, p1

    if-nez p1, :cond_6

    and-int/lit8 p1, v0, 0x1

    iget-wide p2, p0, Ljava/awt/geom/AffineTransform;->m00:D

    cmpl-double p2, p2, v4

    if-nez p2, :cond_5

    iget-wide p2, p0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double p2, p2, v4

    if-nez p2, :cond_5

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_4

    :cond_5
    or-int/lit8 p1, p1, 0x2

    iput v2, p0, Ljava/awt/geom/AffineTransform;->type:I

    :goto_4
    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setToIdentity()V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v0, p0, Ljava/awt/geom/AffineTransform;->type:I

    return-void
.end method

.method public setToQuadrantRotation(I)V
    .locals 10

    const/4 v0, 0x3

    and-int/2addr p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_3

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/16 v7, 0x8

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    if-eq p1, v5, :cond_2

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 2
    iput-wide v8, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 3
    iput-wide v1, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 4
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 5
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 6
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 7
    iput v6, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 8
    iput v7, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    .line 9
    :cond_1
    iput-wide v8, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 10
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 11
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 12
    iput-wide v8, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 13
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 14
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 15
    iput v5, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 16
    iput v7, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    .line 17
    :cond_2
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 18
    iput-wide v1, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 19
    iput-wide v8, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 20
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 21
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 22
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 23
    iput v6, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 24
    iput v7, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    .line 25
    :cond_3
    iput-wide v1, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 26
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 27
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 28
    iput-wide v1, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 29
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 30
    iput-wide v3, p0, Ljava/awt/geom/AffineTransform;->m12:D

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 32
    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :goto_0
    return-void
.end method

.method public setToQuadrantRotation(IDD)V
    .locals 14

    move-object v0, p0

    const/4 v1, 0x3

    and-int/lit8 v2, p1, 0x3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_6

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/16 v10, 0x8

    const/16 v11, 0x9

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    if-eq v2, v7, :cond_4

    const/4 v7, 0x2

    if-eq v2, v7, :cond_2

    if-eq v2, v1, :cond_0

    goto/16 :goto_0

    .line 33
    :cond_0
    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 34
    iput-wide v12, v0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 35
    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 36
    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m11:D

    sub-double v1, p2, p4

    .line 37
    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double v3, p4, p2

    .line 38
    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v1, v1, v5

    if-nez v1, :cond_1

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    .line 39
    iput v8, v0, Ljava/awt/geom/AffineTransform;->state:I

    .line 40
    iput v10, v0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    .line 41
    :cond_1
    iput v9, v0, Ljava/awt/geom/AffineTransform;->state:I

    .line 42
    iput v11, v0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    .line 43
    :cond_2
    iput-wide v12, v0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 44
    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 45
    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 46
    iput-wide v12, v0, Ljava/awt/geom/AffineTransform;->m11:D

    add-double v2, p2, p2

    .line 47
    iput-wide v2, v0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double v8, p4, p4

    .line 48
    iput-wide v8, v0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v2, v2, v5

    if-nez v2, :cond_3

    cmpl-double v2, v8, v5

    if-nez v2, :cond_3

    .line 49
    iput v7, v0, Ljava/awt/geom/AffineTransform;->state:I

    .line 50
    iput v10, v0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    .line 51
    :cond_3
    iput v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    .line 52
    iput v11, v0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    .line 53
    :cond_4
    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 54
    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 55
    iput-wide v12, v0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 56
    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m11:D

    add-double v1, p2, p4

    .line 57
    iput-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    sub-double v3, p4, p2

    .line 58
    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v1, v1, v5

    if-nez v1, :cond_5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_5

    .line 59
    iput v8, v0, Ljava/awt/geom/AffineTransform;->state:I

    .line 60
    iput v10, v0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    .line 61
    :cond_5
    iput v9, v0, Ljava/awt/geom/AffineTransform;->state:I

    .line 62
    iput v11, v0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    .line 63
    :cond_6
    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 64
    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 65
    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 66
    iput-wide v3, v0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 67
    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 68
    iput-wide v5, v0, Ljava/awt/geom/AffineTransform;->m12:D

    const/4 v1, 0x0

    .line 69
    iput v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    .line 70
    iput v1, v0, Ljava/awt/geom/AffineTransform;->type:I

    :goto_0
    return-void
.end method

.method public setToRotation(D)V
    .locals 10

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_3

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v8

    if-nez v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    cmpl-double v4, p1, v8

    if-nez v4, :cond_1

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 4
    iput v5, p0, Ljava/awt/geom/AffineTransform;->type:I

    :goto_0
    move-wide v0, v6

    goto :goto_2

    :cond_1
    cmpl-double v2, p1, v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 6
    iput v0, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    .line 7
    iput v2, p0, Ljava/awt/geom/AffineTransform;->state:I

    const/16 v2, 0x10

    .line 8
    iput v2, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x4

    .line 9
    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 10
    iput v5, p0, Ljava/awt/geom/AffineTransform;->type:I

    move-wide p1, v6

    .line 11
    :goto_2
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 12
    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    neg-double v0, v0

    .line 13
    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 14
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 15
    iput-wide v6, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 16
    iput-wide v6, p0, Ljava/awt/geom/AffineTransform;->m12:D

    return-void
.end method

.method public setToRotation(DD)V
    .locals 9

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    const/16 v3, 0x8

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_1

    cmpg-double p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x2

    .line 24
    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 25
    iput v3, p0, Ljava/awt/geom/AffineTransform;->type:I

    move-wide p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 27
    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    move-wide p1, v0

    move-wide v4, v6

    goto :goto_0

    :cond_1
    cmpl-double v8, p1, v0

    if-nez v8, :cond_3

    if-lez v2, :cond_2

    move-wide v4, v6

    :cond_2
    const/4 p1, 0x4

    .line 28
    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 29
    iput v3, p0, Ljava/awt/geom/AffineTransform;->type:I

    move-wide p1, v4

    move-wide v4, v0

    goto :goto_0

    :cond_3
    mul-double v2, p1, p1

    mul-double v4, p3, p3

    add-double/2addr v2, v4

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v4, p1, v2

    div-double p1, p3, v2

    const/4 p3, 0x6

    .line 31
    iput p3, p0, Ljava/awt/geom/AffineTransform;->state:I

    const/16 p3, 0x10

    .line 32
    iput p3, p0, Ljava/awt/geom/AffineTransform;->type:I

    .line 33
    :goto_0
    iput-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 34
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m10:D

    neg-double p1, p1

    .line 35
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 36
    iput-wide v4, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 37
    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 38
    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    return-void
.end method

.method public setToRotation(DDD)V
    .locals 6

    .line 17
    invoke-virtual {p0, p1, p2}, Ljava/awt/geom/AffineTransform;->setToRotation(D)V

    .line 18
    iget-wide p1, p0, Ljava/awt/geom/AffineTransform;->m10:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 19
    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m00:D

    sub-double/2addr v0, v2

    mul-double v2, p3, v0

    mul-double v4, p5, p1

    add-double/2addr v2, v4

    .line 20
    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    mul-double/2addr p5, v0

    mul-double/2addr p3, p1

    sub-double/2addr p5, p3

    .line 21
    iput-wide p5, p0, Ljava/awt/geom/AffineTransform;->m12:D

    const-wide/16 p1, 0x0

    cmpl-double p3, v2, p1

    if-nez p3, :cond_0

    cmpl-double p1, p5, p1

    if-eqz p1, :cond_1

    .line 22
    :cond_0
    iget p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 23
    iget p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_1
    return-void
.end method

.method public setToRotation(DDDD)V
    .locals 4

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->setToRotation(DD)V

    .line 40
    iget-wide p1, p0, Ljava/awt/geom/AffineTransform;->m10:D

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    .line 41
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    sub-double/2addr p3, v0

    mul-double v0, p5, p3

    mul-double v2, p7, p1

    add-double/2addr v0, v2

    .line 42
    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    mul-double/2addr p7, p3

    mul-double/2addr p5, p1

    sub-double/2addr p7, p5

    .line 43
    iput-wide p7, p0, Ljava/awt/geom/AffineTransform;->m12:D

    const-wide/16 p1, 0x0

    cmpl-double p3, v0, p1

    if-nez p3, :cond_0

    cmpl-double p1, p7, p1

    if-eqz p1, :cond_1

    .line 44
    :cond_0
    iget p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 45
    iget p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_1
    return-void
.end method

.method public setToScale(DD)V
    .locals 2

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m00:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v0

    if-nez p1, :cond_1

    cmpl-double p1, p3, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 p1, -0x1

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :goto_1
    return-void
.end method

.method public setToShear(DD)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p1, p1, v0

    if-nez p1, :cond_1

    cmpl-double p1, p3, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x6

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 p1, -0x1

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :goto_1
    return-void
.end method

.method public setToTranslation(DD)V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v2, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p1, p1, v2

    if-nez p1, :cond_1

    cmpl-double p1, p3, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :goto_1
    return-void
.end method

.method public setTransform(DDDDDD)V
    .locals 0

    .line 9
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 10
    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 11
    iput-wide p5, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 12
    iput-wide p7, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 13
    iput-wide p9, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 14
    iput-wide p11, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 15
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m00:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    .line 2
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    .line 3
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 4
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    .line 5
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 6
    iget-wide v0, p1, Ljava/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    .line 7
    iget v0, p1, Ljava/awt/geom/AffineTransform;->state:I

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    .line 8
    iget p1, p1, Ljava/awt/geom/AffineTransform;->type:I

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    return-void
.end method

.method public shear(DD)V
    .locals 6

    iget v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    return-void

    :pswitch_0
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double v4, v2, p3

    add-double/2addr v4, v0

    iput-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr p3, v2

    add-double/2addr p3, v0

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->updateState()V

    return-void

    :pswitch_1
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v4, p3

    iput-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide p3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr p3, p1

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double p1, v4, v2

    if-nez p1, :cond_0

    cmpl-double p1, p3, v2

    if-eqz p1, :cond_1

    :cond_0
    or-int/lit8 p1, v0, 0x2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    :cond_1
    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :pswitch_2
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v4, p1

    iput-wide v4, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide p1, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr p1, p3

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m10:D

    cmpl-double p3, v4, v2

    if-nez p3, :cond_2

    cmpl-double p1, p1, v2

    if-eqz p1, :cond_3

    :cond_2
    or-int/lit8 p1, v0, 0x4

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    :cond_3
    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    return-void

    :pswitch_3
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m01:D

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m10:D

    cmpl-double p1, p1, v2

    if-nez p1, :cond_4

    cmpl-double p1, p3, v2

    if-eqz p1, :cond_5

    :cond_4
    or-int/lit8 p1, v0, 0x2

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AffineTransform[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljava/awt/geom/AffineTransform;->m00:D

    invoke-static {v1, v2}, Ljava/awt/geom/AffineTransform;->_matround(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m01:D

    invoke-static {v2, v3}, Ljava/awt/geom/AffineTransform;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m02:D

    invoke-static {v2, v3}, Ljava/awt/geom/AffineTransform;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m10:D

    invoke-static {v2, v3}, Ljava/awt/geom/AffineTransform;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljava/awt/geom/AffineTransform;->m11:D

    invoke-static {v2, v3}, Ljava/awt/geom/AffineTransform;->_matround(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljava/awt/geom/AffineTransform;->m12:D

    invoke-static {v1, v2}, Ljava/awt/geom/AffineTransform;->_matround(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "]]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 8

    if-nez p2, :cond_1

    .line 1
    instance-of p2, p1, Ljava/awt/geom/Point2D$Double;

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Double;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    .line 6
    iget p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    packed-switch p1, :pswitch_data_0

    .line 7
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    const/4 p0, 0x0

    return-object p0

    .line 8
    :pswitch_0
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr v0, p0

    invoke-virtual {p2, v4, v5, v0, v1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 9
    :pswitch_1
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v0, v6

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    invoke-virtual {p2, v4, v5, v0, v1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 10
    :pswitch_2
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v0, v4

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr v0, p0

    invoke-virtual {p2, v2, v3, v0, v1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 11
    :pswitch_3
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v2, v4

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v0, p0

    invoke-virtual {p2, v2, v3, v0, v1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 12
    :pswitch_4
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v2, v4

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr v2, p0

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 13
    :pswitch_5
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v0, v4

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v2, p0

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 14
    :pswitch_6
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v0, v4

    iget-wide p0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr v2, p0

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    .line 15
    :pswitch_7
    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([DI[DII)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    if-ne v3, v1, :cond_0

    if-le v4, v2, :cond_0

    mul-int/lit8 v5, p5, 0x2

    add-int v6, v2, v5

    if-ge v4, v6, :cond_0

    .line 69
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v4

    .line 70
    :cond_0
    iget v5, v0, Ljava/awt/geom/AffineTransform;->state:I

    packed-switch v5, :pswitch_data_0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    return-void

    .line 72
    :pswitch_0
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 73
    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move-wide v15, v13

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p5

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    add-int/lit8 v17, v2, 0x1

    .line 74
    aget-wide v18, v1, v2

    add-int/lit8 v2, v17, 0x1

    .line 75
    aget-wide v20, v1, v17

    add-int/lit8 v17, v4, 0x1

    mul-double v22, v5, v18

    mul-double v24, v7, v20

    add-double v22, v22, v24

    add-double v22, v22, v9

    .line 76
    aput-wide v22, v3, v4

    add-int/lit8 v4, v17, 0x1

    mul-double v18, v18, v11

    mul-double v20, v20, v15

    add-double v18, v18, v20

    add-double v18, v18, v13

    .line 77
    aput-wide v18, v3, v17

    goto :goto_0

    :cond_1
    return-void

    .line 78
    :pswitch_1
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 79
    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move/from16 v0, p5

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    add-int/lit8 v13, v2, 0x1

    .line 80
    aget-wide v14, v1, v2

    add-int/lit8 v2, v13, 0x1

    .line 81
    aget-wide v16, v1, v13

    add-int/lit8 v13, v4, 0x1

    mul-double v18, v5, v14

    mul-double v20, v7, v16

    add-double v18, v18, v20

    .line 82
    aput-wide v18, v3, v4

    add-int/lit8 v4, v13, 0x1

    mul-double/2addr v14, v9

    mul-double v16, v16, v11

    add-double v14, v14, v16

    .line 83
    aput-wide v14, v3, v13

    goto :goto_1

    :cond_2
    return-void

    .line 84
    :pswitch_2
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 85
    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p5

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    add-int/lit8 v13, v2, 0x1

    .line 86
    aget-wide v14, v1, v2

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v16, v13, 0x1

    .line 87
    aget-wide v17, v1, v13

    mul-double v17, v17, v5

    add-double v17, v17, v7

    aput-wide v17, v3, v4

    add-int/lit8 v4, v2, 0x1

    mul-double/2addr v14, v9

    add-double/2addr v14, v11

    .line 88
    aput-wide v14, v3, v2

    move/from16 v2, v16

    goto :goto_2

    :cond_3
    return-void

    .line 89
    :pswitch_3
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m10:D

    move/from16 v0, p5

    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    add-int/lit8 v9, v2, 0x1

    .line 90
    aget-wide v10, v1, v2

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v12, v9, 0x1

    .line 91
    aget-wide v13, v1, v9

    mul-double/2addr v13, v5

    aput-wide v13, v3, v4

    add-int/lit8 v4, v2, 0x1

    mul-double/2addr v10, v7

    .line 92
    aput-wide v10, v3, v2

    move v2, v12

    goto :goto_3

    :cond_4
    return-void

    .line 93
    :pswitch_4
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 94
    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p5

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    add-int/lit8 v13, v4, 0x1

    add-int/lit8 v14, v2, 0x1

    .line 95
    aget-wide v15, v1, v2

    mul-double/2addr v15, v5

    add-double/2addr v15, v7

    aput-wide v15, v3, v4

    add-int/lit8 v4, v13, 0x1

    add-int/lit8 v2, v14, 0x1

    .line 96
    aget-wide v14, v1, v14

    mul-double/2addr v14, v9

    add-double/2addr v14, v11

    aput-wide v14, v3, v13

    goto :goto_4

    :cond_5
    return-void

    .line 97
    :pswitch_5
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move/from16 v0, p5

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x1

    .line 98
    aget-wide v11, v1, v2

    mul-double/2addr v11, v5

    aput-wide v11, v3, v4

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v2, v10, 0x1

    .line 99
    aget-wide v10, v1, v10

    mul-double/2addr v10, v7

    aput-wide v10, v3, v9

    goto :goto_5

    :cond_6
    return-void

    .line 100
    :pswitch_6
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p5

    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_7

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v2, 0x1

    .line 101
    aget-wide v11, v1, v2

    add-double/2addr v11, v5

    aput-wide v11, v3, v4

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v2, v10, 0x1

    .line 102
    aget-wide v10, v1, v10

    add-double/2addr v10, v7

    aput-wide v10, v3, v9

    goto :goto_6

    :cond_7
    return-void

    :pswitch_7
    if-ne v1, v3, :cond_8

    if-eq v2, v4, :cond_9

    :cond_8
    mul-int/lit8 v0, p5, 0x2

    .line 103
    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([DI[FII)V
    .locals 24

    move-object/from16 v0, p0

    .line 139
    iget v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    packed-switch v1, :pswitch_data_0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    return-void

    .line 141
    :pswitch_0
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 142
    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p2

    move/from16 v13, p4

    move/from16 v14, p5

    :goto_0
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_0

    add-int/lit8 v15, v0, 0x1

    .line 143
    aget-wide v16, p1, v0

    add-int/lit8 v0, v15, 0x1

    .line 144
    aget-wide v18, p1, v15

    add-int/lit8 v15, v13, 0x1

    mul-double v20, v1, v16

    mul-double v22, v3, v18

    add-double v20, v20, v22

    move/from16 p0, v0

    move-wide/from16 v22, v1

    add-double v0, v20, v5

    double-to-float v0, v0

    .line 145
    aput v0, p3, v13

    add-int/lit8 v13, v15, 0x1

    mul-double v16, v16, v7

    mul-double v18, v18, v9

    add-double v16, v16, v18

    add-double v0, v16, v11

    double-to-float v0, v0

    .line 146
    aput v0, p3, v15

    move/from16 v0, p0

    move-wide/from16 v1, v22

    goto :goto_0

    :cond_0
    return-void

    .line 147
    :pswitch_1
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 148
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move/from16 v0, p2

    move/from16 v9, p4

    move/from16 v10, p5

    :goto_1
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_1

    add-int/lit8 v11, v0, 0x1

    .line 149
    aget-wide v12, p1, v0

    add-int/lit8 v0, v11, 0x1

    .line 150
    aget-wide v14, p1, v11

    add-int/lit8 v11, v9, 0x1

    mul-double v16, v1, v12

    mul-double v18, v3, v14

    move/from16 p0, v0

    move-wide/from16 v20, v1

    add-double v0, v16, v18

    double-to-float v0, v0

    .line 151
    aput v0, p3, v9

    add-int/lit8 v9, v11, 0x1

    mul-double/2addr v12, v5

    mul-double/2addr v14, v7

    add-double/2addr v12, v14

    double-to-float v0, v12

    .line 152
    aput v0, p3, v11

    move/from16 v0, p0

    move-wide/from16 v1, v20

    goto :goto_1

    :cond_1
    return-void

    .line 153
    :pswitch_2
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 154
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p2

    move/from16 v9, p4

    move/from16 v10, p5

    :goto_2
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_2

    add-int/lit8 v11, v0, 0x1

    .line 155
    aget-wide v12, p1, v0

    add-int/lit8 v0, v9, 0x1

    add-int/lit8 v14, v11, 0x1

    .line 156
    aget-wide v15, p1, v11

    mul-double/2addr v15, v1

    move-wide/from16 v17, v1

    add-double v1, v15, v3

    double-to-float v1, v1

    aput v1, p3, v9

    add-int/lit8 v9, v0, 0x1

    mul-double/2addr v12, v5

    add-double/2addr v12, v7

    double-to-float v1, v12

    .line 157
    aput v1, p3, v0

    move v0, v14

    move-wide/from16 v1, v17

    goto :goto_2

    :cond_2
    return-void

    .line 158
    :pswitch_3
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m10:D

    move/from16 v0, p2

    move/from16 v5, p4

    move/from16 v6, p5

    :goto_3
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_3

    add-int/lit8 v7, v0, 0x1

    .line 159
    aget-wide v8, p1, v0

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v10, v7, 0x1

    .line 160
    aget-wide v11, p1, v7

    mul-double/2addr v11, v1

    double-to-float v7, v11

    aput v7, p3, v5

    add-int/lit8 v5, v0, 0x1

    mul-double/2addr v8, v3

    double-to-float v7, v8

    .line 161
    aput v7, p3, v0

    move v0, v10

    goto :goto_3

    :cond_3
    return-void

    .line 162
    :pswitch_4
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 163
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p2

    move/from16 v9, p4

    move/from16 v10, p5

    :goto_4
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_4

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v0, 0x1

    .line 164
    aget-wide v13, p1, v0

    mul-double/2addr v13, v1

    add-double/2addr v13, v3

    double-to-float v0, v13

    aput v0, p3, v9

    add-int/lit8 v9, v11, 0x1

    add-int/lit8 v0, v12, 0x1

    .line 165
    aget-wide v12, p1, v12

    mul-double/2addr v12, v5

    add-double/2addr v12, v7

    double-to-float v12, v12

    aput v12, p3, v11

    goto :goto_4

    :cond_4
    return-void

    .line 166
    :pswitch_5
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move/from16 v0, p2

    move/from16 v5, p4

    move/from16 v6, p5

    :goto_5
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_5

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v0, 0x1

    .line 167
    aget-wide v9, p1, v0

    mul-double/2addr v9, v1

    double-to-float v0, v9

    aput v0, p3, v5

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v0, v8, 0x1

    .line 168
    aget-wide v8, p1, v8

    mul-double/2addr v8, v3

    double-to-float v8, v8

    aput v8, p3, v7

    goto :goto_5

    :cond_5
    return-void

    .line 169
    :pswitch_6
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p2

    move/from16 v5, p4

    move/from16 v6, p5

    :goto_6
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_6

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v0, 0x1

    .line 170
    aget-wide v9, p1, v0

    add-double/2addr v9, v1

    double-to-float v0, v9

    aput v0, p3, v5

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v0, v8, 0x1

    .line 171
    aget-wide v8, p1, v8

    add-double/2addr v8, v3

    double-to-float v8, v8

    aput v8, p3, v7

    goto :goto_6

    :cond_6
    return-void

    :pswitch_7
    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    :goto_7
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_7

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 172
    aget-wide v5, p1, v0

    double-to-float v0, v5

    aput v0, p3, v1

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v0, v4, 0x1

    .line 173
    aget-wide v4, p1, v4

    double-to-float v4, v4

    aput v4, p3, v3

    goto :goto_7

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([FI[DII)V
    .locals 23

    move-object/from16 v0, p0

    .line 104
    iget v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    packed-switch v1, :pswitch_data_0

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    return-void

    .line 106
    :pswitch_0
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 107
    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p2

    move/from16 v13, p4

    move/from16 v14, p5

    :goto_0
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_0

    add-int/lit8 v15, v0, 0x1

    .line 108
    aget v0, p1, v0

    move-wide/from16 v16, v11

    float-to-double v11, v0

    add-int/lit8 v0, v15, 0x1

    .line 109
    aget v15, p1, v15

    move/from16 p0, v14

    float-to-double v14, v15

    add-int/lit8 v18, v13, 0x1

    mul-double v19, v1, v11

    mul-double v21, v3, v14

    add-double v19, v19, v21

    add-double v19, v19, v5

    .line 110
    aput-wide v19, p3, v13

    add-int/lit8 v13, v18, 0x1

    mul-double/2addr v11, v7

    mul-double/2addr v14, v9

    add-double/2addr v11, v14

    add-double v11, v11, v16

    .line 111
    aput-wide v11, p3, v18

    move/from16 v14, p0

    move-wide/from16 v11, v16

    goto :goto_0

    :cond_0
    return-void

    .line 112
    :pswitch_1
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 113
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move/from16 v0, p2

    move/from16 v9, p4

    move/from16 v10, p5

    :goto_1
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_1

    add-int/lit8 v11, v0, 0x1

    .line 114
    aget v0, p1, v0

    float-to-double v12, v0

    add-int/lit8 v0, v11, 0x1

    .line 115
    aget v11, p1, v11

    float-to-double v14, v11

    add-int/lit8 v11, v9, 0x1

    mul-double v16, v1, v12

    mul-double v18, v3, v14

    add-double v16, v16, v18

    .line 116
    aput-wide v16, p3, v9

    add-int/lit8 v9, v11, 0x1

    mul-double/2addr v12, v5

    mul-double/2addr v14, v7

    add-double/2addr v12, v14

    .line 117
    aput-wide v12, p3, v11

    goto :goto_1

    :cond_1
    return-void

    .line 118
    :pswitch_2
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 119
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p2

    move/from16 v9, p4

    move/from16 v10, p5

    :goto_2
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_2

    add-int/lit8 v11, v0, 0x1

    .line 120
    aget v0, p1, v0

    float-to-double v12, v0

    add-int/lit8 v0, v9, 0x1

    add-int/lit8 v14, v11, 0x1

    .line 121
    aget v11, p1, v11

    move/from16 p0, v10

    float-to-double v10, v11

    mul-double/2addr v10, v1

    add-double/2addr v10, v3

    aput-wide v10, p3, v9

    add-int/lit8 v9, v0, 0x1

    mul-double/2addr v12, v5

    add-double/2addr v12, v7

    .line 122
    aput-wide v12, p3, v0

    move/from16 v10, p0

    move v0, v14

    goto :goto_2

    :cond_2
    return-void

    .line 123
    :pswitch_3
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m10:D

    move/from16 v0, p2

    move/from16 v5, p4

    move/from16 v6, p5

    :goto_3
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_3

    add-int/lit8 v7, v0, 0x1

    .line 124
    aget v0, p1, v0

    float-to-double v8, v0

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v10, v7, 0x1

    .line 125
    aget v7, p1, v7

    float-to-double v11, v7

    mul-double/2addr v11, v1

    aput-wide v11, p3, v5

    add-int/lit8 v5, v0, 0x1

    mul-double/2addr v8, v3

    .line 126
    aput-wide v8, p3, v0

    move v0, v10

    goto :goto_3

    :cond_3
    return-void

    .line 127
    :pswitch_4
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 128
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p2

    move/from16 v9, p4

    move/from16 v10, p5

    :goto_4
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_4

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v0, 0x1

    .line 129
    aget v0, p1, v0

    float-to-double v13, v0

    mul-double/2addr v13, v1

    add-double/2addr v13, v3

    aput-wide v13, p3, v9

    add-int/lit8 v9, v11, 0x1

    add-int/lit8 v0, v12, 0x1

    .line 130
    aget v12, p1, v12

    float-to-double v12, v12

    mul-double/2addr v12, v5

    add-double/2addr v12, v7

    aput-wide v12, p3, v11

    goto :goto_4

    :cond_4
    return-void

    .line 131
    :pswitch_5
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move/from16 v0, p2

    move/from16 v5, p4

    move/from16 v6, p5

    :goto_5
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_5

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v0, 0x1

    .line 132
    aget v0, p1, v0

    float-to-double v9, v0

    mul-double/2addr v9, v1

    aput-wide v9, p3, v5

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v0, v8, 0x1

    .line 133
    aget v8, p1, v8

    float-to-double v8, v8

    mul-double/2addr v8, v3

    aput-wide v8, p3, v7

    goto :goto_5

    :cond_5
    return-void

    .line 134
    :pswitch_6
    iget-wide v1, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v3, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p2

    move/from16 v5, p4

    move/from16 v6, p5

    :goto_6
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_6

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v0, 0x1

    .line 135
    aget v0, p1, v0

    float-to-double v9, v0

    add-double/2addr v9, v1

    aput-wide v9, p3, v5

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v0, v8, 0x1

    .line 136
    aget v8, p1, v8

    float-to-double v8, v8

    add-double/2addr v8, v3

    aput-wide v8, p3, v7

    goto :goto_6

    :cond_6
    return-void

    :pswitch_7
    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    :goto_7
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_7

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 137
    aget v0, p1, v0

    float-to-double v5, v0

    aput-wide v5, p3, v1

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v0, v4, 0x1

    .line 138
    aget v4, p1, v4

    float-to-double v4, v4

    aput-wide v4, p3, v3

    goto :goto_7

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([FI[FII)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    if-ne v3, v1, :cond_0

    if-le v4, v2, :cond_0

    mul-int/lit8 v5, p5, 0x2

    add-int v6, v2, v5

    if-ge v4, v6, :cond_0

    .line 34
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v4

    .line 35
    :cond_0
    iget v5, v0, Ljava/awt/geom/AffineTransform;->state:I

    packed-switch v5, :pswitch_data_0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    return-void

    .line 37
    :pswitch_0
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 38
    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move-wide v15, v13

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move/from16 v0, p5

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    add-int/lit8 v17, v2, 0x1

    .line 39
    aget v2, v1, v2

    move-wide/from16 v18, v13

    float-to-double v13, v2

    add-int/lit8 v2, v17, 0x1

    move/from16 p0, v0

    .line 40
    aget v0, v1, v17

    float-to-double v0, v0

    add-int/lit8 v17, v4, 0x1

    mul-double v20, v5, v13

    mul-double v22, v7, v0

    add-double v20, v20, v22

    move-wide/from16 v22, v5

    add-double v5, v20, v9

    double-to-float v5, v5

    .line 41
    aput v5, v3, v4

    add-int/lit8 v4, v17, 0x1

    mul-double/2addr v13, v11

    mul-double/2addr v0, v15

    add-double/2addr v13, v0

    add-double v13, v13, v18

    double-to-float v0, v13

    .line 42
    aput v0, v3, v17

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, v18

    move-wide/from16 v5, v22

    goto :goto_0

    :cond_1
    return-void

    .line 43
    :pswitch_1
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m01:D

    .line 44
    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v0, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move v11, v2

    move/from16 v2, p5

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v13, p1

    .line 45
    aget v11, v13, v11

    float-to-double v14, v11

    add-int/lit8 v11, v12, 0x1

    .line 46
    aget v12, v13, v12

    move/from16 p0, v11

    float-to-double v11, v12

    add-int/lit8 v16, v4, 0x1

    mul-double v17, v5, v14

    mul-double v19, v7, v11

    move-wide/from16 v21, v5

    add-double v5, v17, v19

    double-to-float v5, v5

    .line 47
    aput v5, v3, v4

    add-int/lit8 v4, v16, 0x1

    mul-double/2addr v14, v9

    mul-double/2addr v11, v0

    add-double/2addr v14, v11

    double-to-float v5, v14

    .line 48
    aput v5, v3, v16

    move/from16 v11, p0

    move-wide/from16 v5, v21

    goto :goto_1

    :cond_2
    return-void

    :pswitch_2
    move-object v13, v1

    .line 49
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 50
    iget-wide v9, v0, Ljava/awt/geom/AffineTransform;->m10:D

    iget-wide v0, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move v11, v2

    move/from16 v2, p5

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    add-int/lit8 v12, v11, 0x1

    .line 51
    aget v11, v13, v11

    float-to-double v14, v11

    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v16, v12, 0x1

    .line 52
    aget v12, v13, v12

    float-to-double v12, v12

    mul-double/2addr v12, v5

    add-double/2addr v12, v7

    double-to-float v12, v12

    aput v12, v3, v4

    add-int/lit8 v4, v11, 0x1

    mul-double/2addr v14, v9

    add-double/2addr v14, v0

    double-to-float v12, v14

    .line 53
    aput v12, v3, v11

    move-object/from16 v13, p1

    move/from16 v11, v16

    goto :goto_2

    :cond_3
    return-void

    .line 54
    :pswitch_3
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m01:D

    iget-wide v0, v0, Ljava/awt/geom/AffineTransform;->m10:D

    move v7, v2

    move/from16 v2, p5

    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v9, p1

    .line 55
    aget v7, v9, v7

    float-to-double v10, v7

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v12, v8, 0x1

    .line 56
    aget v8, v9, v8

    float-to-double v13, v8

    mul-double/2addr v13, v5

    double-to-float v8, v13

    aput v8, v3, v4

    add-int/lit8 v4, v7, 0x1

    mul-double/2addr v10, v0

    double-to-float v8, v10

    .line 57
    aput v8, v3, v7

    move v7, v12

    goto :goto_3

    :cond_4
    return-void

    :pswitch_4
    move-object v9, v1

    .line 58
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v7, v0, Ljava/awt/geom/AffineTransform;->m02:D

    .line 59
    iget-wide v10, v0, Ljava/awt/geom/AffineTransform;->m11:D

    iget-wide v0, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move v12, v2

    move/from16 v2, p5

    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    add-int/lit8 v13, v4, 0x1

    add-int/lit8 v14, v12, 0x1

    .line 60
    aget v12, v9, v12

    move-wide v15, v0

    float-to-double v0, v12

    mul-double/2addr v0, v5

    add-double/2addr v0, v7

    double-to-float v0, v0

    aput v0, v3, v4

    add-int/lit8 v4, v13, 0x1

    add-int/lit8 v12, v14, 0x1

    .line 61
    aget v0, v9, v14

    float-to-double v0, v0

    mul-double/2addr v0, v10

    add-double/2addr v0, v15

    double-to-float v0, v0

    aput v0, v3, v13

    move-wide v0, v15

    goto :goto_4

    :cond_5
    return-void

    :pswitch_5
    move-object v9, v1

    .line 62
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m00:D

    iget-wide v0, v0, Ljava/awt/geom/AffineTransform;->m11:D

    move v7, v2

    move/from16 v2, p5

    :goto_5
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v7, 0x1

    .line 63
    aget v7, v9, v7

    float-to-double v11, v7

    mul-double/2addr v11, v5

    double-to-float v7, v11

    aput v7, v3, v4

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v7, v10, 0x1

    .line 64
    aget v10, v9, v10

    float-to-double v10, v10

    mul-double/2addr v10, v0

    double-to-float v10, v10

    aput v10, v3, v8

    goto :goto_5

    :cond_6
    return-void

    :pswitch_6
    move-object v9, v1

    .line 65
    iget-wide v5, v0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v0, v0, Ljava/awt/geom/AffineTransform;->m12:D

    move v7, v2

    move/from16 v2, p5

    :goto_6
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_7

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v7, 0x1

    .line 66
    aget v7, v9, v7

    float-to-double v11, v7

    add-double/2addr v11, v5

    double-to-float v7, v11

    aput v7, v3, v4

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v7, v10, 0x1

    .line 67
    aget v10, v9, v10

    float-to-double v10, v10

    add-double/2addr v10, v0

    double-to-float v10, v10

    aput v10, v3, v8

    goto :goto_6

    :cond_7
    return-void

    :pswitch_7
    move-object v9, v1

    if-ne v9, v3, :cond_8

    if-eq v2, v4, :cond_9

    :cond_8
    mul-int/lit8 v0, p5, 0x2

    .line 68
    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([Ljava/awt/geom/Point2D;I[Ljava/awt/geom/Point2D;II)V
    .locals 15

    move-object v0, p0

    .line 16
    iget v1, v0, Ljava/awt/geom/AffineTransform;->state:I

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 17
    aget-object v2, p1, v2

    .line 18
    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    .line 19
    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v8

    add-int/lit8 v10, v3, 0x1

    .line 20
    aget-object v3, p3, v3

    if-nez v3, :cond_1

    .line 21
    instance-of v2, v2, Ljava/awt/geom/Point2D$Double;

    if-eqz v2, :cond_0

    .line 22
    new-instance v2, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Point2D$Double;-><init>()V

    goto :goto_1

    .line 23
    :cond_0
    new-instance v2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    :goto_1
    move-object v3, v2

    add-int/lit8 v2, v10, -0x1

    .line 24
    aput-object v3, p3, v2

    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 25
    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    return-void

    .line 26
    :pswitch_0
    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v11, v6

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v11, v13

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v13

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v13

    add-double/2addr v6, v8

    iget-wide v8, v0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr v6, v8

    invoke-virtual {v3, v11, v12, v6, v7}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_2

    .line 27
    :pswitch_1
    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v11, v6

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v13

    iget-wide v13, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v13

    add-double/2addr v6, v8

    invoke-virtual {v3, v11, v12, v6, v7}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_2

    .line 28
    :pswitch_2
    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v11

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v8, v11

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v11

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr v6, v11

    invoke-virtual {v3, v8, v9, v6, v7}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_2

    .line 29
    :pswitch_3
    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v11

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v11

    invoke-virtual {v3, v8, v9, v6, v7}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_2

    .line 30
    :pswitch_4
    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v6, v11

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v6, v11

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v11

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr v8, v11

    invoke-virtual {v3, v6, v7, v8, v9}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_2

    .line 31
    :pswitch_5
    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v6, v11

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v11

    invoke-virtual {v3, v6, v7, v8, v9}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_2

    .line 32
    :pswitch_6
    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v6, v11

    iget-wide v11, v0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr v8, v11

    invoke-virtual {v3, v6, v7, v8, v9}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    goto :goto_2

    .line 33
    :pswitch_7
    invoke-virtual {v3, v6, v7, v8, v9}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    :goto_2
    move v2, v5

    move v3, v10

    goto/16 :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public translate(DD)V
    .locals 9

    iget v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;->stateError()V

    return-void

    :pswitch_0
    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v5, p1

    iget-wide v7, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v7, p3

    add-double/2addr v5, v7

    iget-wide v7, p0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    iput-wide v5, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v7, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr p1, v7

    iget-wide v7, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr p3, v7

    add-double/2addr p1, p3

    iget-wide p3, p0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p3, v5, v3

    if-nez p3, :cond_0

    cmpl-double p1, p1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x6

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iget p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    if-eq p1, v1, :cond_0

    sub-int/2addr p1, v2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_0
    return-void

    :pswitch_1
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v0, p1

    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v5, p3

    add-double/2addr v0, v5

    iput-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr p1, v5

    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr p3, v5

    add-double/2addr p1, p3

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p3, v0, v3

    if-nez p3, :cond_1

    cmpl-double p1, p1, v3

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x7

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iget p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    or-int/2addr p1, v2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_2
    return-void

    :pswitch_2
    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr p3, v5

    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr p3, v5

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr p1, v5

    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr p1, v5

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p3, p3, v3

    if-nez p3, :cond_3

    cmpl-double p1, p1, v3

    if-nez p1, :cond_3

    const/4 p1, 0x4

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iget p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    if-eq p1, v1, :cond_3

    sub-int/2addr p1, v2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_3
    return-void

    :pswitch_3
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    mul-double/2addr p3, v0

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m10:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p3, p3, v3

    if-nez p3, :cond_4

    cmpl-double p1, p1, v3

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x5

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iget p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    or-int/2addr p1, v2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_5
    return-void

    :pswitch_4
    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr p1, v5

    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr p1, v5

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr p3, v5

    iget-wide v5, p0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr p3, v5

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p1, p1, v3

    if-nez p1, :cond_6

    cmpl-double p1, p3, v3

    if-nez p1, :cond_6

    const/4 p1, 0x2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iget p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    if-eq p1, v1, :cond_6

    sub-int/2addr p1, v2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_6
    return-void

    :pswitch_5
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m00:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m11:D

    mul-double/2addr p3, v0

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p1, p1, v3

    if-nez p1, :cond_7

    cmpl-double p1, p3, v3

    if-eqz p1, :cond_8

    :cond_7
    const/4 p1, 0x3

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iget p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    or-int/2addr p1, v2

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_8
    return-void

    :pswitch_6
    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    add-double/2addr p1, v0

    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    add-double/2addr p3, v0

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p1, p1, v3

    if-nez p1, :cond_9

    cmpl-double p1, p3, v3

    if-nez p1, :cond_9

    const/4 p1, 0x0

    iput p1, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput p1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_9
    return-void

    :pswitch_7
    iput-wide p1, p0, Ljava/awt/geom/AffineTransform;->m02:D

    iput-wide p3, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double p1, p1, v3

    if-nez p1, :cond_a

    cmpl-double p1, p3, v3

    if-eqz p1, :cond_b

    :cond_a
    iput v2, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v2, p0, Ljava/awt/geom/AffineTransform;->type:I

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateState()V
    .locals 8

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m01:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_3

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m10:D

    cmpl-double v0, v4, v2

    if-nez v0, :cond_3

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_1

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_1

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v0, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v0, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m02:D

    cmpl-double v0, v4, v2

    if-nez v0, :cond_2

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v0, v4, v2

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m00:D

    cmpl-double v0, v4, v2

    if-nez v0, :cond_5

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m11:D

    cmpl-double v0, v4, v2

    if-nez v0, :cond_5

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m02:D

    cmpl-double v0, v4, v2

    if-nez v0, :cond_4

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v0, v4, v2

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    :cond_5
    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m02:D

    cmpl-double v0, v4, v2

    if-nez v0, :cond_6

    iget-wide v4, p0, Ljava/awt/geom/AffineTransform;->m12:D

    cmpl-double v0, v4, v2

    if-nez v0, :cond_6

    const/4 v0, 0x6

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    iput v0, p0, Ljava/awt/geom/AffineTransform;->state:I

    iput v1, p0, Ljava/awt/geom/AffineTransform;->type:I

    :goto_0
    return-void
.end method
