.class public final Lsun/font/StrikeMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ascentX:F

.field public ascentY:F

.field public baselineX:F

.field public baselineY:F

.field public descentX:F

.field public descentY:F

.field public leadingX:F

.field public leadingY:F

.field public maxAdvanceX:F

.field public maxAdvanceY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4f000000

    .line 2
    iput v0, p0, Lsun/font/StrikeMetrics;->ascentY:F

    iput v0, p0, Lsun/font/StrikeMetrics;->ascentX:F

    const/high16 v0, -0x31000000

    .line 3
    iput v0, p0, Lsun/font/StrikeMetrics;->leadingY:F

    iput v0, p0, Lsun/font/StrikeMetrics;->leadingX:F

    iput v0, p0, Lsun/font/StrikeMetrics;->descentY:F

    iput v0, p0, Lsun/font/StrikeMetrics;->descentX:F

    .line 4
    iput v0, p0, Lsun/font/StrikeMetrics;->maxAdvanceY:F

    iput v0, p0, Lsun/font/StrikeMetrics;->maxAdvanceX:F

    iput v0, p0, Lsun/font/StrikeMetrics;->baselineX:F

    return-void
.end method

.method public constructor <init>(FFFFFFFFFF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lsun/font/StrikeMetrics;->ascentX:F

    .line 7
    iput p2, p0, Lsun/font/StrikeMetrics;->ascentY:F

    .line 8
    iput p3, p0, Lsun/font/StrikeMetrics;->descentX:F

    .line 9
    iput p4, p0, Lsun/font/StrikeMetrics;->descentY:F

    .line 10
    iput p5, p0, Lsun/font/StrikeMetrics;->baselineX:F

    .line 11
    iput p6, p0, Lsun/font/StrikeMetrics;->baselineY:F

    .line 12
    iput p7, p0, Lsun/font/StrikeMetrics;->leadingX:F

    .line 13
    iput p8, p0, Lsun/font/StrikeMetrics;->leadingY:F

    .line 14
    iput p9, p0, Lsun/font/StrikeMetrics;->maxAdvanceX:F

    .line 15
    iput p10, p0, Lsun/font/StrikeMetrics;->maxAdvanceY:F

    return-void
.end method


# virtual methods
.method public convertToUserSpace(Ljava/awt/geom/AffineTransform;)V
    .locals 2

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Float;-><init>()V

    iget v1, p0, Lsun/font/StrikeMetrics;->ascentX:F

    iput v1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iget v1, p0, Lsun/font/StrikeMetrics;->ascentY:F

    iput v1, v0, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {p1, v0, v0}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget v1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iput v1, p0, Lsun/font/StrikeMetrics;->ascentX:F

    iget v1, v0, Ljava/awt/geom/Point2D$Float;->y:F

    iput v1, p0, Lsun/font/StrikeMetrics;->ascentY:F

    iget v1, p0, Lsun/font/StrikeMetrics;->descentX:F

    iput v1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iget v1, p0, Lsun/font/StrikeMetrics;->descentY:F

    iput v1, v0, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {p1, v0, v0}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget v1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iput v1, p0, Lsun/font/StrikeMetrics;->descentX:F

    iget v1, v0, Ljava/awt/geom/Point2D$Float;->y:F

    iput v1, p0, Lsun/font/StrikeMetrics;->descentY:F

    iget v1, p0, Lsun/font/StrikeMetrics;->baselineX:F

    iput v1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iget v1, p0, Lsun/font/StrikeMetrics;->baselineY:F

    iput v1, v0, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {p1, v0, v0}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget v1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iput v1, p0, Lsun/font/StrikeMetrics;->baselineX:F

    iget v1, v0, Ljava/awt/geom/Point2D$Float;->y:F

    iput v1, p0, Lsun/font/StrikeMetrics;->baselineY:F

    iget v1, p0, Lsun/font/StrikeMetrics;->leadingX:F

    iput v1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iget v1, p0, Lsun/font/StrikeMetrics;->leadingY:F

    iput v1, v0, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {p1, v0, v0}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget v1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iput v1, p0, Lsun/font/StrikeMetrics;->leadingX:F

    iget v1, v0, Ljava/awt/geom/Point2D$Float;->y:F

    iput v1, p0, Lsun/font/StrikeMetrics;->leadingY:F

    iget v1, p0, Lsun/font/StrikeMetrics;->maxAdvanceX:F

    iput v1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iget v1, p0, Lsun/font/StrikeMetrics;->maxAdvanceY:F

    iput v1, v0, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {p1, v0, v0}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget p1, v0, Ljava/awt/geom/Point2D$Float;->x:F

    iput p1, p0, Lsun/font/StrikeMetrics;->maxAdvanceX:F

    iget p1, v0, Ljava/awt/geom/Point2D$Float;->y:F

    iput p1, p0, Lsun/font/StrikeMetrics;->maxAdvanceY:F

    return-void
.end method

.method public getAscent()F
    .locals 0

    iget p0, p0, Lsun/font/StrikeMetrics;->ascentY:F

    neg-float p0, p0

    return p0
.end method

.method public getDescent()F
    .locals 0

    iget p0, p0, Lsun/font/StrikeMetrics;->descentY:F

    return p0
.end method

.method public getLeading()F
    .locals 0

    iget p0, p0, Lsun/font/StrikeMetrics;->leadingY:F

    return p0
.end method

.method public getMaxAdvance()F
    .locals 0

    iget p0, p0, Lsun/font/StrikeMetrics;->maxAdvanceX:F

    return p0
.end method

.method public merge(Lsun/font/StrikeMetrics;)V
    .locals 2

    if-eqz p1, :cond_9

    iget v0, p1, Lsun/font/StrikeMetrics;->ascentX:F

    iget v1, p0, Lsun/font/StrikeMetrics;->ascentX:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput v0, p0, Lsun/font/StrikeMetrics;->ascentX:F

    :cond_0
    iget v0, p1, Lsun/font/StrikeMetrics;->ascentY:F

    iget v1, p0, Lsun/font/StrikeMetrics;->ascentY:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iput v0, p0, Lsun/font/StrikeMetrics;->ascentY:F

    :cond_1
    iget v0, p1, Lsun/font/StrikeMetrics;->descentX:F

    iget v1, p0, Lsun/font/StrikeMetrics;->descentX:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iput v0, p0, Lsun/font/StrikeMetrics;->descentX:F

    :cond_2
    iget v0, p1, Lsun/font/StrikeMetrics;->descentY:F

    iget v1, p0, Lsun/font/StrikeMetrics;->descentY:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iput v0, p0, Lsun/font/StrikeMetrics;->descentY:F

    :cond_3
    iget v0, p1, Lsun/font/StrikeMetrics;->baselineX:F

    iget v1, p0, Lsun/font/StrikeMetrics;->baselineX:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    iput v0, p0, Lsun/font/StrikeMetrics;->baselineX:F

    :cond_4
    iget v0, p1, Lsun/font/StrikeMetrics;->baselineY:F

    iget v1, p0, Lsun/font/StrikeMetrics;->baselineY:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    iput v0, p0, Lsun/font/StrikeMetrics;->baselineY:F

    :cond_5
    iget v0, p1, Lsun/font/StrikeMetrics;->leadingX:F

    iget v1, p0, Lsun/font/StrikeMetrics;->leadingX:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    iput v0, p0, Lsun/font/StrikeMetrics;->leadingX:F

    :cond_6
    iget v0, p1, Lsun/font/StrikeMetrics;->leadingY:F

    iget v1, p0, Lsun/font/StrikeMetrics;->leadingY:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    iput v0, p0, Lsun/font/StrikeMetrics;->leadingY:F

    :cond_7
    iget v0, p1, Lsun/font/StrikeMetrics;->maxAdvanceX:F

    iget v1, p0, Lsun/font/StrikeMetrics;->maxAdvanceX:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    iput v0, p0, Lsun/font/StrikeMetrics;->maxAdvanceX:F

    :cond_8
    iget p1, p1, Lsun/font/StrikeMetrics;->maxAdvanceY:F

    iget v0, p0, Lsun/font/StrikeMetrics;->maxAdvanceY:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    iput p1, p0, Lsun/font/StrikeMetrics;->maxAdvanceY:F

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ascent:x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/font/StrikeMetrics;->ascentX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/font/StrikeMetrics;->ascentY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " descent:x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/font/StrikeMetrics;->descentX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/font/StrikeMetrics;->descentY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " baseline:x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/font/StrikeMetrics;->baselineX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/font/StrikeMetrics;->baselineY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " leading:x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/font/StrikeMetrics;->leadingX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/font/StrikeMetrics;->leadingY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " maxAdvance:x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/font/StrikeMetrics;->maxAdvanceX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lsun/font/StrikeMetrics;->maxAdvanceY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
