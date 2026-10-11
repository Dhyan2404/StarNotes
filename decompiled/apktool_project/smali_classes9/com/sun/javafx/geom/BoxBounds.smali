.class public Lcom/sun/javafx/geom/BoxBounds;
.super Lcom/sun/javafx/geom/BaseBounds;
.source "SourceFile"


# instance fields
.field private maxX:F

.field private maxY:F

.field private maxZ:F

.field private minX:F

.field private minY:F

.field private minZ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/javafx/geom/BaseBounds;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sun/javafx/geom/BaseBounds;-><init>()V

    .line 5
    invoke-virtual/range {p0 .. p6}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(FFFFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/BoxBounds;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/sun/javafx/geom/BaseBounds;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    return-void
.end method


# virtual methods
.method public add(FFF)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/sun/javafx/geom/BoxBounds;->unionWith(FFFFFF)V

    return-void
.end method

.method public add(Lcom/sun/javafx/geom/Point2D;)V
    .locals 2

    .line 2
    iget v0, p1, Lcom/sun/javafx/geom/Point2D;->x:F

    iget p1, p1, Lcom/sun/javafx/geom/Point2D;->y:F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/javafx/geom/BoxBounds;->add(FFF)V

    return-void
.end method

.method public contains(FF)Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/javafx/geom/BoxBounds;->contains(FFF)Z

    move-result p0

    return p0
.end method

.method public contains(FFF)Z
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_1

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public contains(FFFFFF)Z
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/javafx/geom/BoxBounds;->contains(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    add-float/2addr p1, p4

    add-float/2addr p2, p5

    add-float/2addr p3, p6

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/javafx/geom/BoxBounds;->contains(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public contains(Lcom/sun/javafx/geom/Point2D;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p1, Lcom/sun/javafx/geom/Point2D;->x:F

    iget p1, p1, Lcom/sun/javafx/geom/Point2D;->y:F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/javafx/geom/BoxBounds;->contains(FFF)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public copy()Lcom/sun/javafx/geom/BaseBounds;
    .locals 8

    new-instance v7, Lcom/sun/javafx/geom/BoxBounds;

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    iget v2, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iget v3, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    iget v4, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iget v5, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iget v6, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sun/javafx/geom/BoxBounds;-><init>(FFFFFF)V

    return-object v7
.end method

.method public deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 1

    cmpg-float v0, p4, p1

    if-ltz v0, :cond_1

    cmpg-float v0, p5, p2

    if-ltz v0, :cond_1

    cmpg-float v0, p6, p3

    if-gez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 15
    iput p2, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 16
    iput p3, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 17
    iput p4, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 18
    iput p5, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 19
    iput p6, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return-object p0

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    move-result-object p0

    return-object p0
.end method

.method public deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unknown BoundsType"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 9
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 10
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 11
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 12
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 13
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return-object p0
.end method

.method public deriveWithNewBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10

    .line 1
    iget v0, p1, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-ltz v0, :cond_1

    iget v1, p1, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-gez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p1, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v4, v2

    iget p1, p1, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v5, p1

    const/4 v6, 0x0

    add-int/2addr v2, v0

    int-to-float v7, v2

    add-int/2addr p1, v1

    int-to-float v8, p1

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(FFFFFF)V

    return-object p0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    move-result-object p0

    return-object p0
.end method

.method public deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/sun/javafx/geom/BoxBounds;->setBoundsAndSort(FFFFFF)V

    return-object p0
.end method

.method public deriveWithPadding(FFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/javafx/geom/BoxBounds;->grow(FFF)V

    return-object p0
.end method

.method public deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 2

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unknown BoundsType"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/javafx/geom/BoxBounds;->unionWith(Lcom/sun/javafx/geom/BaseBounds;)V

    return-object p0
.end method

.method public disjoint(FFFF)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/sun/javafx/geom/BoxBounds;->disjoint(FFFFFF)Z

    move-result p0

    return p0
.end method

.method public disjoint(FFFFFF)Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-float/2addr p4, p1

    .line 3
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    cmpg-float p4, p4, v0

    if-ltz p4, :cond_2

    add-float/2addr p5, p2

    iget p4, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    cmpg-float p4, p5, p4

    if-ltz p4, :cond_2

    add-float/2addr p6, p3

    iget p4, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    cmpg-float p4, p6, p4

    if-ltz p4, :cond_2

    iget p4, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    cmpl-float p1, p1, p4

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_2

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    cmpl-float p0, p3, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/sun/javafx/geom/BoxBounds;

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BoxBounds;->getMinX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BoxBounds;->getMinY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BoxBounds;->getMinZ()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BoxBounds;->getMaxX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    return v0

    :cond_5
    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BoxBounds;->getMaxY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    return v0

    :cond_6
    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BoxBounds;->getMaxZ()F

    move-result p1

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/sun/javafx/geom/RectBounds;

    invoke-direct {p1}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object p0

    return-object p0

    :cond_1
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iget v2, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    return-object p1
.end method

.method public getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;
    .locals 0

    sget-object p0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    return-object p0
.end method

.method public getDepth()F
    .locals 1

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public getMax(Lcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/sun/javafx/geom/Vec2f;

    invoke-direct {p1}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    .line 2
    :cond_0
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iput v0, p1, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 3
    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iput p0, p1, Lcom/sun/javafx/geom/Vec2f;->y:F

    return-object p1
.end method

.method public getMax(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
    .locals 1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/sun/javafx/geom/Vec3f;

    invoke-direct {p1}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    .line 5
    :cond_0
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iput v0, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 6
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iput v0, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 7
    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    iput p0, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-object p1
.end method

.method public getMaxX()F
    .locals 0

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    return p0
.end method

.method public getMaxY()F
    .locals 0

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    return p0
.end method

.method public getMaxZ()F
    .locals 0

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return p0
.end method

.method public getMin(Lcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/sun/javafx/geom/Vec2f;

    invoke-direct {p1}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    .line 2
    :cond_0
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    iput v0, p1, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 3
    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iput p0, p1, Lcom/sun/javafx/geom/Vec2f;->y:F

    return-object p1
.end method

.method public getMin(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
    .locals 1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/sun/javafx/geom/Vec3f;

    invoke-direct {p1}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    .line 5
    :cond_0
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    iput v0, p1, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 6
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iput v0, p1, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 7
    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    iput p0, p1, Lcom/sun/javafx/geom/Vec3f;->z:F

    return-object p1
.end method

.method public getMinX()F
    .locals 0

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    return p0
.end method

.method public getMinY()F
    .locals 0

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    return p0
.end method

.method public getMinZ()F
    .locals 0

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    return p0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public grow(FFF)V
    .locals 1

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x229

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public intersectWith(FFFFFF)V
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    cmpg-float v0, p4, p1

    if-ltz v0, :cond_2

    cmpg-float v0, p5, p2

    if-ltz v0, :cond_2

    cmpg-float v0, p6, p3

    if-gez v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 15
    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 16
    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 17
    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 18
    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-static {p1, p5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 19
    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    invoke-static {p1, p6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return-void

    .line 20
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    return-void
.end method

.method public intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    return-void

    .line 7
    :cond_1
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 8
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 9
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 10
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 11
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 12
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return-void
.end method

.method public intersectWith(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 8

    .line 1
    iget v0, p1, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v2, v0

    .line 2
    iget v0, p1, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v3, v0

    const/4 v4, 0x0

    .line 3
    iget v0, p1, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v0, v0

    add-float v5, v2, v0

    iget p1, p1, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float p1, p1

    add-float v6, v3, p1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/sun/javafx/geom/BoxBounds;->intersectWith(FFFFFF)V

    return-void
.end method

.method public intersects(FFFF)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/sun/javafx/geom/BoxBounds;->intersects(FFFFFF)Z

    move-result p0

    return p0
.end method

.method public intersects(FFFFFF)Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-float/2addr p4, p1

    .line 3
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    cmpl-float p4, p4, v0

    if-ltz p4, :cond_1

    add-float/2addr p5, p2

    iget p4, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    cmpl-float p4, p5, p4

    if-ltz p4, :cond_1

    add-float/2addr p6, p3

    iget p4, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    cmpl-float p4, p6, p4

    if-ltz p4, :cond_1

    iget p4, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    cmpg-float p1, p1, p4

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public intersects(Lcom/sun/javafx/geom/BaseBounds;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v1

    iget v2, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v1

    iget v2, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v1

    iget v2, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v1

    iget v2, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v1

    iget v2, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result p1

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public is2D()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

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

.method public bridge synthetic makeEmpty()Lcom/sun/javafx/geom/BaseBounds;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->makeEmpty()Lcom/sun/javafx/geom/BoxBounds;

    move-result-object p0

    return-object p0
.end method

.method public makeEmpty()Lcom/sun/javafx/geom/BoxBounds;
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    return-object p0
.end method

.method public roundOut()V
    .locals 2

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return-void
.end method

.method public final setBounds(FFFFFF)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 8
    iput p2, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 9
    iput p3, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 10
    iput p4, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 11
    iput p5, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 12
    iput p6, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return-void
.end method

.method public final setBounds(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 2
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 3
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 4
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 5
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 6
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return-void
.end method

.method public setBoundsAndSort(FFFFFF)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(FFFFFF)V

    .line 2
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->sortMinMax()V

    return-void
.end method

.method public setBoundsAndSort(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
    .locals 7

    .line 3
    iget v1, p1, Lcom/sun/javafx/geom/Point2D;->x:F

    iget v2, p1, Lcom/sun/javafx/geom/Point2D;->y:F

    const/4 v3, 0x0

    iget v4, p2, Lcom/sun/javafx/geom/Point2D;->x:F

    iget v5, p2, Lcom/sun/javafx/geom/Point2D;->y:F

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sun/javafx/geom/BoxBounds;->setBoundsAndSort(FFFFFF)V

    return-void
.end method

.method public setMaxX(F)V
    .locals 0

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    return-void
.end method

.method public setMaxY(F)V
    .locals 0

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    return-void
.end method

.method public setMaxZ(F)V
    .locals 0

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return-void
.end method

.method public setMinX(F)V
    .locals 0

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    return-void
.end method

.method public setMinY(F)V
    .locals 0

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    return-void
.end method

.method public setMinZ(F)V
    .locals 0

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    return-void
.end method

.method public sortMinMax()V
    .locals 3

    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    iput v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    :cond_0
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    iput v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    :cond_1
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    iput v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxBounds { minX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minZ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxZ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(FFF)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->getMinX()F

    move-result p3

    add-float/2addr p3, p1

    invoke-virtual {p0, p3}, Lcom/sun/javafx/geom/BoxBounds;->setMinX(F)V

    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->getMinY()F

    move-result p3

    add-float/2addr p3, p2

    invoke-virtual {p0, p3}, Lcom/sun/javafx/geom/BoxBounds;->setMinY(F)V

    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->getMaxX()F

    move-result p3

    add-float/2addr p3, p1

    invoke-virtual {p0, p3}, Lcom/sun/javafx/geom/BoxBounds;->setMaxX(F)V

    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->getMaxY()F

    move-result p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/sun/javafx/geom/BoxBounds;->setMaxY(F)V

    return-void
.end method

.method public unionWith(FFFFFF)V
    .locals 1

    cmpg-float v0, p4, p1

    if-ltz v0, :cond_2

    cmpg-float v0, p5, p2

    if-ltz v0, :cond_2

    cmpg-float v0, p6, p3

    if-gez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual/range {p0 .. p6}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(FFFFFF)V

    return-void

    .line 12
    :cond_1
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 13
    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 14
    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 15
    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    invoke-static {p1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 16
    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 17
    iget p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    invoke-static {p1, p6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    :cond_2
    :goto_0
    return-void
.end method

.method public unionWith(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sun/javafx/geom/BoxBounds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/javafx/geom/BoxBounds;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minX:F

    .line 5
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minY:F

    .line 6
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->minZ:F

    .line 7
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxX:F

    .line 8
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxY:F

    .line 9
    iget v0, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    invoke-virtual {p1}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/sun/javafx/geom/BoxBounds;->maxZ:F

    return-void
.end method
