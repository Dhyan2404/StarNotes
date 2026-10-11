.class Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineRect"
.end annotation


# instance fields
.field final l:Lorg/apache/poi/hslf/usermodel/HSLFLine;

.field final lx1:D

.field final lx2:D

.field final ly1:D

.field final ly2:D


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFLine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->l:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->lx1:D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->lx2:D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->ly1:D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->ly2:D

    return-void
.end method


# virtual methods
.method public bottomFit(DDDD)I
    .locals 0

    iget-wide p5, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->lx1:D

    sub-double/2addr p1, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iget-wide p5, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->ly1:D

    sub-double p5, p7, p5

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p5

    add-double/2addr p1, p5

    iget-wide p5, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->lx2:D

    sub-double/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    iget-wide p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->ly2:D

    sub-double/2addr p7, p3

    invoke-static {p7, p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    double-to-int p0, p1

    return p0
.end method

.method public leftFit(DDDD)I
    .locals 2

    iget-wide p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->lx1:D

    sub-double p3, p1, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    iget-wide v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->ly1:D

    sub-double/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p5

    add-double/2addr p3, p5

    iget-wide p5, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->lx2:D

    sub-double/2addr p1, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    add-double/2addr p3, p1

    iget-wide p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->ly2:D

    sub-double/2addr p7, p0

    invoke-static {p7, p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    add-double/2addr p3, p0

    double-to-int p0, p3

    return p0
.end method

.method public rightFit(DDDD)I
    .locals 2

    iget-wide p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->lx1:D

    sub-double p1, p3, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->ly1:D

    sub-double/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p5

    add-double/2addr p1, p5

    iget-wide p5, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->lx2:D

    sub-double/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    iget-wide p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->ly2:D

    sub-double/2addr p7, p3

    invoke-static {p7, p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    double-to-int p0, p1

    return p0
.end method

.method public topFit(DDDD)I
    .locals 0

    iget-wide p7, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->lx1:D

    sub-double/2addr p1, p7

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iget-wide p7, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->ly1:D

    sub-double p7, p5, p7

    invoke-static {p7, p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide p7

    add-double/2addr p1, p7

    iget-wide p7, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->lx2:D

    sub-double/2addr p3, p7

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    iget-wide p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->ly2:D

    sub-double/2addr p5, p3

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    double-to-int p0, p1

    return p0
.end method
