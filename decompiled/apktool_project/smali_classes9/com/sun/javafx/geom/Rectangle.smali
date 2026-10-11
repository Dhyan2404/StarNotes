.class public Lcom/sun/javafx/geom/Rectangle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 7
    iput p2, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 8
    iput p3, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 9
    iput p4, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 3

    .line 4
    iget v0, p1, Lcom/sun/javafx/geom/Rectangle;->x:I

    iget v1, p1, Lcom/sun/javafx/geom/Rectangle;->y:I

    iget v2, p1, Lcom/sun/javafx/geom/Rectangle;->width:I

    iget p1, p1, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    return-void
.end method

.method private reshape(IIII)V
    .locals 0

    iput p1, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    iput p2, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    iput p3, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    iput p4, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 2
    iput p1, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 3
    iput p2, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    iput p1, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    return-void

    .line 5
    :cond_0
    iget v2, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 6
    iget v3, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-long v4, v0

    int-to-long v0, v1

    int-to-long v6, v2

    add-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v0, v6

    if-le v2, p1, :cond_1

    move v2, p1

    :cond_1
    if-le v3, p2, :cond_2

    move v3, p2

    :cond_2
    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    move-wide v4, v6

    :cond_3
    int-to-long p1, p2

    cmp-long v6, v0, p1

    if-gez v6, :cond_4

    move-wide v0, p1

    :cond_4
    int-to-long p1, v2

    sub-long/2addr v4, p1

    int-to-long p1, v3

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x7fffffff

    cmp-long v6, v4, p1

    if-lez v6, :cond_5

    move-wide v4, p1

    :cond_5
    cmp-long v6, v0, p1

    if-lez v6, :cond_6

    move-wide v0, p1

    :cond_6
    long-to-int p1, v4

    long-to-int p2, v0

    .line 7
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/sun/javafx/geom/Rectangle;->reshape(IIII)V

    return-void
.end method

.method public add(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 13

    .line 8
    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-long v0, v0

    .line 9
    iget v2, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-long v2, v2

    or-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 10
    iget v4, p1, Lcom/sun/javafx/geom/Rectangle;->x:I

    iget v5, p1, Lcom/sun/javafx/geom/Rectangle;->y:I

    iget v8, p1, Lcom/sun/javafx/geom/Rectangle;->width:I

    iget v9, p1, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-direct {p0, v4, v5, v8, v9}, Lcom/sun/javafx/geom/Rectangle;->reshape(IIII)V

    .line 11
    :cond_0
    iget v4, p1, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-long v4, v4

    .line 12
    iget v8, p1, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-long v8, v8

    or-long v10, v4, v8

    cmp-long v6, v10, v6

    if-gez v6, :cond_1

    return-void

    .line 13
    :cond_1
    iget v6, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 14
    iget v7, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-long v10, v6

    add-long/2addr v0, v10

    int-to-long v10, v7

    add-long/2addr v2, v10

    .line 15
    iget v10, p1, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 16
    iget p1, p1, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-long v11, v10

    add-long/2addr v4, v11

    int-to-long v11, p1

    add-long/2addr v8, v11

    if-le v6, v10, :cond_2

    move v6, v10

    :cond_2
    if-le v7, p1, :cond_3

    move v7, p1

    :cond_3
    cmp-long p1, v0, v4

    if-gez p1, :cond_4

    move-wide v0, v4

    :cond_4
    cmp-long p1, v2, v8

    if-gez p1, :cond_5

    move-wide v2, v8

    :cond_5
    int-to-long v4, v6

    sub-long/2addr v0, v4

    int-to-long v4, v7

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long p1, v0, v4

    if-lez p1, :cond_6

    move-wide v0, v4

    :cond_6
    cmp-long p1, v2, v4

    if-lez p1, :cond_7

    move-wide v2, v4

    :cond_7
    long-to-int p1, v0

    long-to-int v0, v2

    .line 17
    invoke-direct {p0, v6, v7, p1, v0}, Lcom/sun/javafx/geom/Rectangle;->reshape(IIII)V

    return-void
.end method

.method public contains(II)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 2
    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    or-int v2, v0, v1

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    .line 3
    :cond_0
    iget v2, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 4
    iget p0, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    if-lt p1, v2, :cond_4

    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    add-int/2addr v1, p0

    if-lt v0, v2, :cond_2

    if-le v0, p1, :cond_4

    :cond_2
    if-lt v1, p0, :cond_3

    if-le v1, p2, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    :goto_0
    return v3
.end method

.method public contains(IIII)Z
    .locals 4

    .line 6
    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 7
    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    or-int v2, v0, v1

    or-int/2addr v2, p3

    or-int/2addr v2, p4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    .line 8
    :cond_0
    iget v2, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 9
    iget p0, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    if-lt p1, v2, :cond_8

    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    add-int/2addr p3, p1

    if-gt p3, p1, :cond_3

    if-ge v0, v2, :cond_2

    if-le p3, v0, :cond_4

    :cond_2
    return v3

    :cond_3
    if-lt v0, v2, :cond_4

    if-le p3, v0, :cond_4

    return v3

    :cond_4
    add-int/2addr v1, p0

    add-int/2addr p4, p2

    if-gt p4, p2, :cond_6

    if-ge v1, p0, :cond_5

    if-le p4, v1, :cond_7

    :cond_5
    return v3

    :cond_6
    if-lt v1, p0, :cond_7

    if-le p4, v1, :cond_7

    return v3

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_0
    return v3
.end method

.method public contains(Lcom/sun/javafx/geom/Rectangle;)Z
    .locals 3

    .line 5
    iget v0, p1, Lcom/sun/javafx/geom/Rectangle;->x:I

    iget v1, p1, Lcom/sun/javafx/geom/Rectangle;->y:I

    iget v2, p1, Lcom/sun/javafx/geom/Rectangle;->width:I

    iget p1, p1, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sun/javafx/geom/Rectangle;->contains(IIII)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sun/javafx/geom/Rectangle;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sun/javafx/geom/Rectangle;

    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    iget v1, p1, Lcom/sun/javafx/geom/Rectangle;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    iget v1, p1, Lcom/sun/javafx/geom/Rectangle;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    iget v1, p1, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    iget p1, p1, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public grow(II)V
    .locals 12

    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-long v0, v0

    iget v2, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-long v2, v2

    iget v4, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-long v4, v4

    iget v6, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-long v6, v6

    add-long/2addr v4, v0

    add-long/2addr v6, v2

    int-to-long v8, p1

    sub-long/2addr v0, v8

    int-to-long p1, p2

    sub-long/2addr v2, p1

    add-long/2addr v4, v8

    add-long/2addr v6, p1

    cmp-long p1, v4, v0

    const-wide/32 v8, 0x7fffffff

    const-wide/32 v10, -0x80000000

    if-gez p1, :cond_2

    sub-long/2addr v4, v0

    cmp-long p1, v4, v10

    if-gez p1, :cond_0

    move-wide v4, v10

    :cond_0
    cmp-long p1, v0, v10

    if-gez p1, :cond_1

    move-wide v0, v10

    goto :goto_1

    :cond_1
    cmp-long p1, v0, v8

    if-lez p1, :cond_6

    move-wide v0, v8

    goto :goto_1

    :cond_2
    cmp-long p1, v0, v10

    if-gez p1, :cond_3

    move-wide v0, v10

    goto :goto_0

    :cond_3
    cmp-long p1, v0, v8

    if-lez p1, :cond_4

    move-wide v0, v8

    :cond_4
    :goto_0
    sub-long/2addr v4, v0

    cmp-long p1, v4, v10

    if-gez p1, :cond_5

    move-wide v4, v10

    goto :goto_1

    :cond_5
    cmp-long p1, v4, v8

    if-lez p1, :cond_6

    move-wide v4, v8

    :cond_6
    :goto_1
    cmp-long p1, v6, v2

    if-gez p1, :cond_a

    sub-long/2addr v6, v2

    cmp-long p1, v6, v10

    if-gez p1, :cond_7

    move-wide v6, v10

    :cond_7
    cmp-long p1, v2, v10

    if-gez p1, :cond_8

    move-wide v8, v6

    move-wide v2, v10

    goto :goto_3

    :cond_8
    cmp-long p1, v2, v8

    if-lez p1, :cond_9

    move-wide v2, v8

    :cond_9
    move-wide v8, v6

    goto :goto_3

    :cond_a
    cmp-long p1, v2, v10

    if-gez p1, :cond_b

    move-wide v2, v10

    goto :goto_2

    :cond_b
    cmp-long p1, v2, v8

    if-lez p1, :cond_c

    move-wide v2, v8

    :cond_c
    :goto_2
    sub-long/2addr v6, v2

    cmp-long p1, v6, v10

    if-gez p1, :cond_d

    move-wide v8, v10

    goto :goto_3

    :cond_d
    cmp-long p1, v6, v8

    if-lez p1, :cond_9

    :goto_3
    long-to-int p1, v0

    long-to-int p2, v2

    long-to-int v0, v4

    long-to-int v1, v8

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/javafx/geom/Rectangle;->reshape(IIII)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2b

    add-int/2addr v0, v1

    iget p0, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2f

    add-int/2addr v0, p0

    return v0
.end method

.method public intersectWith(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    iget v2, p1, Lcom/sun/javafx/geom/Rectangle;->x:I

    iget v3, p1, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-long v4, v0

    iget v6, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    int-to-long v6, v1

    iget v8, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    int-to-long v8, v2

    iget v10, p1, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    int-to-long v10, v3

    iget p1, p1, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-long v12, p1

    add-long/2addr v10, v12

    if-ge v0, v2, :cond_1

    move v0, v2

    :cond_1
    if-ge v1, v3, :cond_2

    move v1, v3

    :cond_2
    cmp-long p1, v4, v8

    if-lez p1, :cond_3

    move-wide v4, v8

    :cond_3
    cmp-long p1, v6, v10

    if-lez p1, :cond_4

    move-wide v6, v10

    :cond_4
    int-to-long v2, v0

    sub-long/2addr v4, v2

    int-to-long v2, v1

    sub-long/2addr v6, v2

    const-wide/32 v2, -0x80000000

    cmp-long p1, v4, v2

    if-gez p1, :cond_5

    move-wide v4, v2

    :cond_5
    cmp-long p1, v6, v2

    if-gez p1, :cond_6

    move-wide v6, v2

    :cond_6
    long-to-int p1, v4

    long-to-int v2, v6

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    return-void
.end method

.method public intersection(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 1

    new-instance v0, Lcom/sun/javafx/geom/Rectangle;

    invoke-direct {v0, p0}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    invoke-virtual {v0, p1}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-lez v0, :cond_1

    iget p0, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-gtz p0, :cond_0

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

.method public setBounds(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/javafx/geom/Rectangle;->reshape(IIII)V

    return-void
.end method

.method public setBounds(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 3

    .line 3
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 4
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 5
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 6
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 7
    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 8
    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    return-void
.end method

.method public setBounds(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/sun/javafx/geom/Rectangle;->x:I

    iget v1, p1, Lcom/sun/javafx/geom/Rectangle;->y:I

    iget v2, p1, Lcom/sun/javafx/geom/Rectangle;->width:I

    iget p1, p1, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    return-void
.end method

.method public toRectBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 6

    new-instance v0, Lcom/sun/javafx/geom/RectBounds;

    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v2, v1

    iget v3, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v4, v3

    iget v5, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget p0, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    add-int/2addr v3, p0

    int-to-float p0, v3

    invoke-direct {v0, v2, v4, v1, p0}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(II)V
    .locals 4

    iget v0, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    add-int v1, v0, p1

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    if-gez p1, :cond_1

    if-le v1, v0, :cond_3

    iget p1, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-ltz p1, :cond_0

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-ge v1, v0, :cond_3

    iget p1, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-ltz p1, :cond_2

    sub-int/2addr v1, v3

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-gez p1, :cond_2

    iput v3, p0, Lcom/sun/javafx/geom/Rectangle;->width:I

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    iput v1, p0, Lcom/sun/javafx/geom/Rectangle;->x:I

    iget p1, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    add-int v0, p1, p2

    if-gez p2, :cond_4

    if-le v0, p1, :cond_6

    iget p1, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-ltz p1, :cond_7

    sub-int/2addr v0, v2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    goto :goto_1

    :cond_4
    if-ge v0, p1, :cond_6

    iget p1, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-ltz p1, :cond_5

    sub-int/2addr v0, v3

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-gez p1, :cond_5

    iput v3, p0, Lcom/sun/javafx/geom/Rectangle;->height:I

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    move v2, v0

    :cond_7
    :goto_1
    iput v2, p0, Lcom/sun/javafx/geom/Rectangle;->y:I

    return-void
.end method
