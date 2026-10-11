.class public Ljava/awt/geom/Line2D$Float;
.super Ljava/awt/geom/Line2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/geom/Line2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x55830373efa192bdL


# instance fields
.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/awt/geom/Line2D;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/awt/geom/Line2D;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/Line2D$Float;->setLine(FFFF)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/awt/geom/Line2D;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/awt/geom/Line2D;->setLine(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V

    return-void
.end method


# virtual methods
.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 5

    iget v0, p0, Ljava/awt/geom/Line2D$Float;->x1:F

    iget v1, p0, Ljava/awt/geom/Line2D$Float;->x2:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget v2, p0, Ljava/awt/geom/Line2D$Float;->y1:F

    iget p0, p0, Ljava/awt/geom/Line2D$Float;->y2:F

    cmpg-float v3, v2, p0

    if-gez v3, :cond_1

    sub-float/2addr p0, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v2, p0

    move v4, v2

    move v2, p0

    move p0, v4

    :goto_1
    new-instance v3, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {v3, v0, v2, v1, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v3
.end method

.method public getP1()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/Line2D$Float;->x1:F

    iget p0, p0, Ljava/awt/geom/Line2D$Float;->y1:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getP2()Ljava/awt/geom/Point2D;
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Ljava/awt/geom/Line2D$Float;->x2:F

    iget p0, p0, Ljava/awt/geom/Line2D$Float;->y2:F

    invoke-direct {v0, v1, p0}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/Line2D$Float;->x1:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/Line2D$Float;->x2:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/Line2D$Float;->y1:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/Line2D$Float;->y2:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public setLine(DDDD)V
    .locals 0

    double-to-float p1, p1

    .line 1
    iput p1, p0, Ljava/awt/geom/Line2D$Float;->x1:F

    double-to-float p1, p3

    .line 2
    iput p1, p0, Ljava/awt/geom/Line2D$Float;->y1:F

    double-to-float p1, p5

    .line 3
    iput p1, p0, Ljava/awt/geom/Line2D$Float;->x2:F

    double-to-float p1, p7

    .line 4
    iput p1, p0, Ljava/awt/geom/Line2D$Float;->y2:F

    return-void
.end method

.method public setLine(FFFF)V
    .locals 0

    .line 5
    iput p1, p0, Ljava/awt/geom/Line2D$Float;->x1:F

    .line 6
    iput p2, p0, Ljava/awt/geom/Line2D$Float;->y1:F

    .line 7
    iput p3, p0, Ljava/awt/geom/Line2D$Float;->x2:F

    .line 8
    iput p4, p0, Ljava/awt/geom/Line2D$Float;->y2:F

    return-void
.end method
