.class final Lsun/font/Underline$StandardUnderline;
.super Lsun/font/Underline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/Underline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StandardUnderline"
.end annotation


# instance fields
.field private cachedStroke:Ljava/awt/BasicStroke;

.field private dashPattern:[F

.field private shift:F

.field private thicknessMultiplier:F

.field private useThickness:Z


# direct methods
.method public constructor <init>(FF[FZ)V
    .locals 0

    invoke-direct {p0}, Lsun/font/Underline;-><init>()V

    iput p1, p0, Lsun/font/Underline$StandardUnderline;->shift:F

    iput p2, p0, Lsun/font/Underline$StandardUnderline;->thicknessMultiplier:F

    iput-object p3, p0, Lsun/font/Underline$StandardUnderline;->dashPattern:[F

    iput-boolean p4, p0, Lsun/font/Underline$StandardUnderline;->useThickness:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lsun/font/Underline$StandardUnderline;->cachedStroke:Ljava/awt/BasicStroke;

    return-void
.end method

.method private createStroke(F)Ljava/awt/BasicStroke;
    .locals 7

    iget-object v5, p0, Lsun/font/Underline$StandardUnderline;->dashPattern:[F

    if-nez v5, :cond_0

    new-instance p0, Ljava/awt/BasicStroke;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljava/awt/BasicStroke;-><init>(FII)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/awt/BasicStroke;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    return-object p0
.end method

.method private getLineThickness(F)F
    .locals 1

    iget-boolean v0, p0, Lsun/font/Underline$StandardUnderline;->useThickness:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lsun/font/Underline$StandardUnderline;->thicknessMultiplier:F

    mul-float/2addr p1, p0

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    iget p0, p0, Lsun/font/Underline$StandardUnderline;->thicknessMultiplier:F

    mul-float/2addr p0, p1

    return p0
.end method

.method private getStroke(F)Ljava/awt/Stroke;
    .locals 2

    invoke-direct {p0, p1}, Lsun/font/Underline$StandardUnderline;->getLineThickness(F)F

    move-result p1

    iget-object v0, p0, Lsun/font/Underline$StandardUnderline;->cachedStroke:Ljava/awt/BasicStroke;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lsun/font/Underline$StandardUnderline;->createStroke(F)Ljava/awt/BasicStroke;

    move-result-object v0

    iput-object v0, p0, Lsun/font/Underline$StandardUnderline;->cachedStroke:Ljava/awt/BasicStroke;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public drawUnderline(Ljava/awt/Graphics2D;FFFF)V
    .locals 2

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getStroke()Ljava/awt/Stroke;

    move-result-object v0

    invoke-direct {p0, p2}, Lsun/font/Underline$StandardUnderline;->getStroke(F)Ljava/awt/Stroke;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    new-instance p2, Ljava/awt/geom/Line2D$Float;

    iget p0, p0, Lsun/font/Underline$StandardUnderline;->shift:F

    add-float v1, p5, p0

    add-float/2addr p5, p0

    invoke-direct {p2, p3, v1, p4, p5}, Ljava/awt/geom/Line2D$Float;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    return-void
.end method

.method public getLowerDrawLimit(F)F
    .locals 1

    iget v0, p0, Lsun/font/Underline$StandardUnderline;->shift:F

    invoke-direct {p0, p1}, Lsun/font/Underline$StandardUnderline;->getLineThickness(F)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public getUnderlineShape(FFFF)Ljava/awt/Shape;
    .locals 2

    invoke-direct {p0, p1}, Lsun/font/Underline$StandardUnderline;->getStroke(F)Ljava/awt/Stroke;

    move-result-object p1

    new-instance v0, Ljava/awt/geom/Line2D$Float;

    iget p0, p0, Lsun/font/Underline$StandardUnderline;->shift:F

    add-float v1, p4, p0

    add-float/2addr p4, p0

    invoke-direct {v0, p2, v1, p3, p4}, Ljava/awt/geom/Line2D$Float;-><init>(FFFF)V

    invoke-interface {p1, v0}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method
