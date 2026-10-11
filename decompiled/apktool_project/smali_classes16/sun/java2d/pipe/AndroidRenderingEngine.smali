.class public Lsun/java2d/pipe/AndroidRenderingEngine;
.super Lsun/java2d/pipe/RenderingEngine;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/pipe/RenderingEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public createStrokedShape(Ljava/awt/Shape;FIIF[FF)Ljava/awt/Shape;
    .locals 0

    new-instance p0, Ljava/awt/geom/GeneralPath;

    invoke-direct {p0, p1}, Ljava/awt/geom/GeneralPath;-><init>(Ljava/awt/Shape;)V

    new-instance p3, Ljava/awt/geom/AffineTransform;

    invoke-direct {p3}, Ljava/awt/geom/AffineTransform;-><init>()V

    neg-float p4, p2

    float-to-double p4, p4

    invoke-virtual {p3, p4, p5, p4, p5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {p3, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p0, p4, p5}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p2, p4

    float-to-double p6, p2

    invoke-virtual {p3, p6, p7, p6, p7}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {p3, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    return-object p0
.end method

.method public getAATileGenerator(DDDDDDDDLsun/java2d/pipe/Region;[I)Lsun/java2d/pipe/AATileGenerator;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAATileGenerator(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;Lsun/java2d/pipe/Region;Ljava/awt/BasicStroke;ZZ[I)Lsun/java2d/pipe/AATileGenerator;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMinimumAAPenSize()F
    .locals 0

    const p0, 0x3e4ccccd    # 0.2f

    return p0
.end method

.method public strokeTo(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;Ljava/awt/BasicStroke;ZZZLsun/awt/geom/PathConsumer2D;)V
    .locals 0

    return-void
.end method
