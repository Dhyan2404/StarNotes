.class Lsun/font/Underline$IMGrayUnderline;
.super Lsun/font/Underline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/Underline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMGrayUnderline"
.end annotation


# instance fields
.field private stroke:Ljava/awt/BasicStroke;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lsun/font/Underline;-><init>()V

    new-instance v7, Ljava/awt/BasicStroke;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v0, 0x2

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    iput-object v7, p0, Lsun/font/Underline$IMGrayUnderline;->stroke:Ljava/awt/BasicStroke;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public drawUnderline(Ljava/awt/Graphics2D;FFFF)V
    .locals 0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getStroke()Ljava/awt/Stroke;

    move-result-object p2

    iget-object p0, p0, Lsun/font/Underline$IMGrayUnderline;->stroke:Ljava/awt/BasicStroke;

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    new-instance p0, Ljava/awt/geom/Line2D$Float;

    invoke-direct {p0, p3, p5, p4, p5}, Ljava/awt/geom/Line2D$Float;-><init>(FFFF)V

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    iget p3, p0, Ljava/awt/geom/Line2D$Float;->y1:F

    const/high16 p4, 0x3f800000    # 1.0f

    add-float/2addr p3, p4

    iput p3, p0, Ljava/awt/geom/Line2D$Float;->y1:F

    iget p3, p0, Ljava/awt/geom/Line2D$Float;->y2:F

    add-float/2addr p3, p4

    iput p3, p0, Ljava/awt/geom/Line2D$Float;->y2:F

    iget p3, p0, Ljava/awt/geom/Line2D$Float;->x1:F

    add-float/2addr p3, p4

    iput p3, p0, Ljava/awt/geom/Line2D$Float;->x1:F

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    return-void
.end method

.method public getLowerDrawLimit(F)F
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    return p0
.end method

.method public getUnderlineShape(FFFF)Ljava/awt/Shape;
    .locals 1

    new-instance p1, Ljava/awt/geom/GeneralPath;

    invoke-direct {p1}, Ljava/awt/geom/GeneralPath;-><init>()V

    new-instance v0, Ljava/awt/geom/Line2D$Float;

    invoke-direct {v0, p2, p4, p3, p4}, Ljava/awt/geom/Line2D$Float;-><init>(FFFF)V

    iget-object p2, p0, Lsun/font/Underline$IMGrayUnderline;->stroke:Ljava/awt/BasicStroke;

    invoke-virtual {p2, v0}, Ljava/awt/BasicStroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    iget p2, v0, Ljava/awt/geom/Line2D$Float;->y1:F

    const/high16 p4, 0x3f800000    # 1.0f

    add-float/2addr p2, p4

    iput p2, v0, Ljava/awt/geom/Line2D$Float;->y1:F

    iget p2, v0, Ljava/awt/geom/Line2D$Float;->y2:F

    add-float/2addr p2, p4

    iput p2, v0, Ljava/awt/geom/Line2D$Float;->y2:F

    iget p2, v0, Ljava/awt/geom/Line2D$Float;->x1:F

    add-float/2addr p2, p4

    iput p2, v0, Ljava/awt/geom/Line2D$Float;->x1:F

    iget-object p0, p0, Lsun/font/Underline$IMGrayUnderline;->stroke:Ljava/awt/BasicStroke;

    invoke-virtual {p0, v0}, Ljava/awt/BasicStroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    return-object p1
.end method
