.class final Lsun/font/StandardGlyphVector$GlyphTransformInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/StandardGlyphVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlyphTransformInfo"
.end annotation


# instance fields
.field haveAllStrikes:Z

.field indices:[I

.field sgv:Lsun/font/StandardGlyphVector;

.field strikesRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[",
            "Lsun/font/StandardGlyphVector$GlyphStrike;",
            ">;"
        }
    .end annotation
.end field

.field transforms:[D


# direct methods
.method public constructor <init>(Lsun/font/StandardGlyphVector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    return-void
.end method

.method public constructor <init>(Lsun/font/StandardGlyphVector;Lsun/font/StandardGlyphVector$GlyphTransformInfo;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    .line 5
    iget-object p1, p2, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    :goto_0
    iput-object p1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    .line 6
    iget-object p1, p2, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :goto_1
    iput-object p1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    .line 7
    iput-object v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->strikesRef:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private getAllStrikes()[Lsun/font/StandardGlyphVector$GlyphStrike;
    .locals 3

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->getStrikeArray()[Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v0

    iget-boolean v1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->haveAllStrikes:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v0, v1}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->getStrikeAtIndex([Lsun/font/StandardGlyphVector$GlyphStrike;I)Lsun/font/StandardGlyphVector$GlyphStrike;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->haveAllStrikes:Z

    :cond_2
    return-object v0
.end method

.method private getStrikeArray()[Lsun/font/StandardGlyphVector$GlyphStrike;
    .locals 2

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->strikesRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/font/StandardGlyphVector$GlyphStrike;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->haveAllStrikes:Z

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transformCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lsun/font/StandardGlyphVector$GlyphStrike;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->strikesRef:Ljava/lang/ref/SoftReference;

    :cond_1
    return-object v0
.end method

.method private getStrikeAtIndex([Lsun/font/StandardGlyphVector$GlyphStrike;I)Lsun/font/StandardGlyphVector$GlyphStrike;
    .locals 16

    move-object/from16 v0, p0

    aget-object v1, p1, p2

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    iget-object v0, v0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v0}, Lsun/font/StandardGlyphVector;->access$500(Lsun/font/StandardGlyphVector;)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, -0x1

    mul-int/lit8 v1, v1, 0x6

    new-instance v15, Ljava/awt/geom/AffineTransform;

    iget-object v2, v0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    aget-wide v3, v2, v1

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v2, v5

    add-int/lit8 v7, v1, 0x2

    aget-wide v7, v2, v7

    add-int/lit8 v9, v1, 0x3

    aget-wide v9, v2, v9

    add-int/lit8 v11, v1, 0x4

    aget-wide v11, v2, v11

    add-int/lit8 v1, v1, 0x5

    aget-wide v13, v2, v1

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    iget-object v0, v0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v0}, Lsun/font/StandardGlyphVector;->access$600(Lsun/font/StandardGlyphVector;)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-static {v0, v1, v15}, Lsun/font/StandardGlyphVector$GlyphStrike;->create(Lsun/font/StandardGlyphVector;Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v0

    :goto_0
    move-object v1, v0

    aput-object v1, p1, p2

    :cond_1
    return-object v1
.end method


# virtual methods
.method public equals(Lsun/font/StandardGlyphVector$GlyphTransformInfo;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    array-length v2, v2

    iget-object v3, p1, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    array-length v3, v3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    array-length v2, v2

    iget-object v3, p1, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    array-length v3, v3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    move v2, v0

    :goto_0
    iget-object v3, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    array-length v4, v3

    if-ge v2, v4, :cond_9

    aget v3, v3, v2

    iget-object v4, p1, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    aget v4, v4, v2

    if-nez v3, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    if-nez v4, :cond_5

    move v6, v1

    goto :goto_2

    :cond_5
    move v6, v0

    :goto_2
    if-eq v5, v6, :cond_6

    return v0

    :cond_6
    if-eqz v3, :cond_8

    mul-int/lit8 v3, v3, 0x6

    mul-int/lit8 v4, v4, 0x6

    const/4 v5, 0x6

    :goto_3
    if-lez v5, :cond_8

    iget-object v6, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    add-int/lit8 v3, v3, -0x1

    aget v6, v6, v3

    iget-object v7, p1, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    add-int/lit8 v4, v4, -0x1

    aget v7, v7, v4

    if-eq v6, v7, :cond_7

    return v0

    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return v1
.end method

.method public getGlyphTransform(I)Ljava/awt/geom/AffineTransform;
    .locals 14

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    aget p1, v0, p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x6

    new-instance v13, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    add-int/lit8 v0, p1, 0x0

    aget-wide v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aget-wide v3, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v5, p0, v0

    add-int/lit8 v0, p1, 0x3

    aget-wide v7, p0, v0

    add-int/lit8 v0, p1, 0x4

    aget-wide v9, p0, v0

    add-int/lit8 p1, p1, 0x5

    aget-wide v11, p0, p1

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v13
.end method

.method public getGlyphsPixelBounds(Ljava/awt/geom/AffineTransform;FFII)Ljava/awt/Rectangle;
    .locals 7

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0}, Ljava/awt/Rectangle;-><init>()V

    new-instance v1, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v1}, Ljava/awt/geom/Point2D$Float;-><init>()V

    mul-int/lit8 v2, p4, 0x2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_2

    invoke-virtual {p0, p4}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->getStrike(I)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v4

    iget-object v5, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v5}, Lsun/font/StandardGlyphVector;->access$400(Lsun/font/StandardGlyphVector;)[F

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    add-float/2addr v2, p2

    iget v5, v4, Lsun/font/StandardGlyphVector$GlyphStrike;->dx:F

    add-float/2addr v2, v5

    iput v2, v1, Ljava/awt/geom/Point2D$Float;->x:F

    iget-object v2, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v2}, Lsun/font/StandardGlyphVector;->access$400(Lsun/font/StandardGlyphVector;)[F

    move-result-object v2

    add-int/lit8 v5, v6, 0x1

    aget v2, v2, v6

    add-float/2addr v2, p3

    iget v6, v4, Lsun/font/StandardGlyphVector$GlyphStrike;->dy:F

    add-float/2addr v2, v6

    iput v2, v1, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {p1, v1, v1}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget-object v2, v4, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    iget-object v4, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v4}, Lsun/font/StandardGlyphVector;->access$000(Lsun/font/StandardGlyphVector;)[I

    move-result-object v4

    add-int/lit8 v6, p4, 0x1

    aget p4, v4, p4

    invoke-virtual {v2, p4, v1, v0}, Lsun/font/FontStrike;->getGlyphImageBounds(ILjava/awt/geom/Point2D$Float;Ljava/awt/Rectangle;)V

    invoke-virtual {v0}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    if-nez v3, :cond_0

    new-instance p4, Ljava/awt/Rectangle;

    invoke-direct {p4, v0}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Rectangle;)V

    move-object v3, p4

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v0}, Ljava/awt/Rectangle;->add(Ljava/awt/Rectangle;)V

    :cond_1
    :goto_1
    move v2, v5

    move p4, v6

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    move-object v0, v3

    :cond_3
    return-object v0
.end method

.method public getStrike(I)Lsun/font/StandardGlyphVector$GlyphStrike;
    .locals 2

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->getStrikeArray()[Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v0

    iget-object v1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    aget p1, v1, p1

    invoke-direct {p0, v0, p1}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->getStrikeAtIndex([Lsun/font/StandardGlyphVector$GlyphStrike;I)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {p0}, Lsun/font/StandardGlyphVector;->access$500(Lsun/font/StandardGlyphVector;)Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object p0

    return-object p0
.end method

.method public setGlyphTransform(ILjava/awt/geom/AffineTransform;)V
    .locals 10

    const/4 v0, 0x6

    new-array v1, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    move p2, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v1, p2

    aput-wide v4, v1, v2

    move p2, v3

    :goto_1
    iget-object v4, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    const/4 v5, 0x0

    if-nez v4, :cond_3

    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {p2}, Lsun/font/StandardGlyphVector;->access$000(Lsun/font/StandardGlyphVector;)[I

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [I

    iput-object p2, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    aput v3, p2, p1

    iput-object v1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    goto/16 :goto_b

    :cond_3
    if-eqz p2, :cond_4

    move p2, v2

    move v4, p2

    goto :goto_5

    :cond_4
    move p2, v2

    :goto_2
    iget-object v4, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    array-length v4, v4

    if-ge p2, v4, :cond_7

    move v4, v2

    :goto_3
    if-ge v4, v0, :cond_6

    iget-object v6, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    add-int v7, p2, v4

    aget-wide v6, v6, v7

    aget-wide v8, v1, v4

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_5

    add-int/lit8 p2, p2, 0x6

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move v4, v2

    goto :goto_4

    :cond_7
    move v4, v3

    :goto_4
    div-int/2addr p2, v0

    add-int/2addr p2, v3

    :goto_5
    iget-object v6, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    aget v6, v6, p1

    if-eq p2, v6, :cond_11

    if-eqz v6, :cond_a

    move v7, v2

    :goto_6
    iget-object v8, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    array-length v9, v8

    if-ge v7, v9, :cond_9

    aget v8, v8, v7

    if-ne v8, v6, :cond_8

    if-eq v7, p1, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    move v7, v3

    goto :goto_8

    :cond_a
    :goto_7
    move v7, v2

    :goto_8
    if-eqz v7, :cond_b

    if-eqz v4, :cond_b

    iget-object p2, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    add-int/lit8 v4, v6, -0x1

    mul-int/2addr v4, v0

    invoke-static {v1, v2, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v6

    goto :goto_a

    :cond_b
    if-eqz v7, :cond_f

    iget-object v1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    array-length v4, v1

    if-ne v4, v0, :cond_c

    iput-object v5, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    iput-object v5, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    iget-object p2, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {p2, p1}, Lsun/font/StandardGlyphVector;->access$100(Lsun/font/StandardGlyphVector;I)V

    iget-object p1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {p1, v3}, Lsun/font/StandardGlyphVector;->access$200(Lsun/font/StandardGlyphVector;I)V

    iput-object v5, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->strikesRef:Ljava/lang/ref/SoftReference;

    return-void

    :cond_c
    array-length v4, v1

    sub-int/2addr v4, v0

    new-array v4, v4, [D

    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v0

    invoke-static {v1, v2, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    mul-int/lit8 v1, v6, 0x6

    array-length v8, v0

    sub-int/2addr v8, v1

    invoke-static {v0, v1, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    :goto_9
    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    array-length v1, v0

    if-ge v2, v1, :cond_e

    aget v1, v0, v2

    if-le v1, v6, :cond_d

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    if-le p2, v6, :cond_10

    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_f
    if-eqz v4, :cond_10

    iget-object v4, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    array-length v6, v4

    add-int/2addr v6, v0

    new-array v6, v6, [D

    array-length v7, v4

    invoke-static {v4, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    array-length v4, v4

    invoke-static {v1, v2, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v6, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    :cond_10
    :goto_a
    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    aput p2, v0, p1

    :cond_11
    :goto_b
    iget-object p2, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {p2, p1}, Lsun/font/StandardGlyphVector;->access$100(Lsun/font/StandardGlyphVector;I)V

    iget-object p1, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {p1, v3}, Lsun/font/StandardGlyphVector;->access$300(Lsun/font/StandardGlyphVector;I)V

    iput-object v5, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->strikesRef:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setupGlyphImages([J[FLjava/awt/geom/AffineTransform;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v0}, Lsun/font/StandardGlyphVector;->access$000(Lsun/font/StandardGlyphVector;)[I

    move-result-object v0

    array-length v6, v0

    invoke-direct {p0}, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->getAllStrikes()[Lsun/font/StandardGlyphVector$GlyphStrike;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->indices:[I

    aget v2, v2, v1

    aget-object v2, v0, v2

    iget-object v3, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v3}, Lsun/font/StandardGlyphVector;->access$000(Lsun/font/StandardGlyphVector;)[I

    move-result-object v3

    aget v3, v3, v1

    iget-object v4, v2, Lsun/font/StandardGlyphVector$GlyphStrike;->strike:Lsun/font/FontStrike;

    invoke-virtual {v4, v3}, Lsun/font/FontStrike;->getGlyphImagePtr(I)J

    move-result-wide v4

    aput-wide v4, p1, v1

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->sgv:Lsun/font/StandardGlyphVector;

    invoke-static {v5}, Lsun/font/StandardGlyphVector;->access$400(Lsun/font/StandardGlyphVector;)[F

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, p2}, Lsun/font/StandardGlyphVector$GlyphStrike;->getGlyphPosition(II[F[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v2, p2

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Ljava/awt/geom/AffineTransform;->transform([FI[FII)V

    return-object v0
.end method

.method public transformCount()I
    .locals 0

    iget-object p0, p0, Lsun/font/StandardGlyphVector$GlyphTransformInfo;->transforms:[D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    div-int/lit8 p0, p0, 0x6

    return p0
.end method
