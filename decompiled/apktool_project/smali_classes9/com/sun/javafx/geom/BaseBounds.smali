.class public abstract Lcom/sun/javafx/geom/BaseBounds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/geom/BaseBounds$BoundsType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(FFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 1

    .line 3
    new-instance v0, Lcom/sun/javafx/geom/RectBounds;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    return-object v0
.end method

.method public static getInstance(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 8

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    cmpl-float v0, p5, v0

    if-nez v0, :cond_0

    .line 1
    invoke-static {p0, p1, p3, p4}, Lcom/sun/javafx/geom/BaseBounds;->getInstance(FFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v7, Lcom/sun/javafx/geom/BoxBounds;

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/javafx/geom/BoxBounds;-><init>(FFFFFF)V

    return-object v7
.end method


# virtual methods
.method public abstract add(FFF)V
.end method

.method public abstract add(Lcom/sun/javafx/geom/Point2D;)V
.end method

.method public abstract contains(FF)Z
.end method

.method public abstract contains(Lcom/sun/javafx/geom/Point2D;)Z
.end method

.method public abstract copy()Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithNewBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithPadding(FFF)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract disjoint(FFFF)Z
.end method

.method public abstract flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
.end method

.method public abstract getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;
.end method

.method public abstract getDepth()F
.end method

.method public abstract getHeight()F
.end method

.method public abstract getMax(Lcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
.end method

.method public abstract getMax(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
.end method

.method public abstract getMaxX()F
.end method

.method public abstract getMaxY()F
.end method

.method public abstract getMaxZ()F
.end method

.method public abstract getMin(Lcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
.end method

.method public abstract getMin(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
.end method

.method public abstract getMinX()F
.end method

.method public abstract getMinY()F
.end method

.method public abstract getMinZ()F
.end method

.method public abstract getWidth()F
.end method

.method public abstract intersectWith(FFFFFF)V
.end method

.method public abstract intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V
.end method

.method public abstract intersectWith(Lcom/sun/javafx/geom/Rectangle;)V
.end method

.method public abstract intersects(FFFF)Z
.end method

.method public abstract is2D()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract makeEmpty()Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract roundOut()V
.end method

.method public abstract setBoundsAndSort(FFFFFF)V
.end method

.method public abstract setBoundsAndSort(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
.end method

.method public abstract sortMinMax()V
.end method

.method public abstract translate(FFF)V
.end method
