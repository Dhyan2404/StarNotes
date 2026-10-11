.class Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;
.super Ljava/awt/geom/Rectangle2D$Double;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/usermodel/HemfPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReluctantRectangle2D"
.end annotation


# instance fields
.field private offsetSet:Z

.field private rangeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->offsetSet:Z

    iput-boolean v0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->rangeSet:Z

    return-void
.end method

.method public static isEmpty(Ljava/awt/geom/Rectangle2D;)Z
    .locals 8

    .line 2
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-lez v6, :cond_2

    cmpg-double v4, v2, v4

    if-lez v4, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    cmpl-double p0, v4, v6

    if-eqz p0, :cond_2

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v4

    if-nez p0, :cond_1

    cmpl-double p0, v2, v4

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->isEmpty(Ljava/awt/geom/Rectangle2D;)Z

    move-result p0

    return p0
.end method

.method public setRect(DDDD)V
    .locals 10

    move-object v9, p0

    iget-boolean v0, v9, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->offsetSet:Z

    if-eqz v0, :cond_0

    iget-boolean v1, v9, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->rangeSet:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-wide v1, v9, Ljava/awt/geom/Rectangle2D$Double;->x:D

    goto :goto_0

    :cond_1
    move-wide v1, p1

    :goto_0
    if-eqz v0, :cond_2

    iget-wide v3, v9, Ljava/awt/geom/Rectangle2D$Double;->y:D

    goto :goto_1

    :cond_2
    move-wide v3, p3

    :goto_1
    iget-boolean v0, v9, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->rangeSet:Z

    if-eqz v0, :cond_3

    iget-wide v5, v9, Ljava/awt/geom/Rectangle2D$Double;->width:D

    goto :goto_2

    :cond_3
    move-wide v5, p5

    :goto_2
    if-eqz v0, :cond_4

    iget-wide v7, v9, Ljava/awt/geom/Rectangle2D$Double;->height:D

    goto :goto_3

    :cond_4
    move-wide/from16 v7, p7

    :goto_3
    move-object v0, p0

    invoke-super/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;->setRect(DDDD)V

    iget-boolean v0, v9, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->offsetSet:Z

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_6

    cmpl-double v1, p3, v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v4

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v5

    :goto_5
    or-int/2addr v0, v1

    iput-boolean v0, v9, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->offsetSet:Z

    iget-boolean v0, v9, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->rangeSet:Z

    const-wide/16 v1, 0x0

    cmpl-double v3, p5, v1

    if-nez v3, :cond_7

    cmpl-double v1, p7, v1

    if-eqz v1, :cond_8

    :cond_7
    move v4, v5

    :cond_8
    or-int/2addr v0, v4

    iput-boolean v0, v9, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->rangeSet:Z

    return-void
.end method
