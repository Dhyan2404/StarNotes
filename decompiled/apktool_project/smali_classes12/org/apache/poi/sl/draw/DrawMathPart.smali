.class public Lorg/apache/poi/sl/draw/DrawMathPart;
.super Lorg/apache/poi/sl/draw/DrawTextPart;
.source "SourceFile"


# instance fields
.field private bounds:Ljava/awt/geom/Rectangle2D;

.field private latex:Lorg/apache/poi/latex/Latex;

.field private mathJc:Lorg/apache/poi/common/MathJc;

.field private render:Lorg/apache/poi/latex/LatexRender;


# direct methods
.method public constructor <init>(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;Ljava/awt/font/FontRenderContext;FLorg/apache/poi/common/MathJc;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/sl/draw/DrawTextPart;-><init>(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;Ljava/awt/font/FontRenderContext;)V

    iput p4, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontSize:F

    iput-object p5, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->mathJc:Lorg/apache/poi/common/MathJc;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawMathPart;->getRender()Lorg/apache/poi/latex/LatexRender;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->render:Lorg/apache/poi/latex/LatexRender;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/poi/latex/Latex;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/awt/Insets;

    const/4 p5, 0x2

    const/4 v0, 0x0

    invoke-direct {p3, p5, v0, p5, v0}, Ljava/awt/Insets;-><init>(IIII)V

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/poi/latex/Latex;-><init>(Ljava/lang/String;Ljava/awt/Insets;F)V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->latex:Lorg/apache/poi/latex/Latex;

    iget-object p2, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->render:Lorg/apache/poi/latex/LatexRender;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/latex/LatexRender;->loadImage(Lorg/apache/poi/latex/Latex;Ljava/awt/geom/Rectangle2D;)V

    iget-object p1, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->render:Lorg/apache/poi/latex/LatexRender;

    invoke-virtual {p1}, Lorg/apache/poi/latex/LatexRender;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->bounds:Ljava/awt/geom/Rectangle2D;

    :cond_0
    return-void
.end method

.method private getRender()Lorg/apache/poi/latex/LatexRender;
    .locals 1

    const-class p0, Lorg/apache/poi/latex/LatexRender;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/latex/LatexRender;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 4

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->disableDraw(Ljava/awt/Graphics2D;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->render:Lorg/apache/poi/latex/LatexRender;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->x:D

    iget-wide v2, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->y:D

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->render:Lorg/apache/poi/latex/LatexRender;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/latex/LatexRender;->drawImage(Ljava/awt/Graphics2D;F)Z

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->x:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->y:D

    neg-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAscent()F
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getDescent()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHeight()F
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getLeading()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMathJc()Lorg/apache/poi/common/MathJc;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->mathJc:Lorg/apache/poi/common/MathJc;

    return-object p0
.end method

.method public getWidth()F
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawMathPart;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
