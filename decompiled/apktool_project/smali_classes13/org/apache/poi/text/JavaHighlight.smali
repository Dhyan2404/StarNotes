.class public Lorg/apache/poi/text/JavaHighlight;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/text/Highlight;


# instance fields
.field private frc:Ljava/awt/font/FontRenderContext;

.field private height:D

.field private textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

.field private transform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/apache/poi/text/JavaHighlight;->height:D

    return-void
.end method

.method private calculateHeight()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/text/JavaHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/text/JavaHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/DrawTextPart;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/font/TextLayout;->getCharacterCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/awt/font/TextLayout;->getLogicalHighlightShape(II)Ljava/awt/Shape;

    move-result-object v0

    invoke-interface {v0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/text/JavaHighlight;->height:D

    return-void
.end method


# virtual methods
.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/text/JavaHighlight;->height:D

    return-wide v0
.end method

.method public getHighlight(Ljava/awt/geom/Point2D;II)Ljava/awt/geom/Rectangle2D;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/poi/text/JavaHighlight;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    new-instance v1, Ljava/awt/font/TextLayout;

    iget-object v2, p0, Lorg/apache/poi/text/JavaHighlight;->frc:Ljava/awt/font/FontRenderContext;

    invoke-direct {v1, v0, v2}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    const/4 v0, 0x0

    sub-int/2addr p3, p2

    invoke-virtual {v1, v0, p3}, Ljava/awt/font/TextLayout;->getLogicalHighlightShape(II)Ljava/awt/Shape;

    move-result-object p2

    invoke-interface {p2}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/poi/text/JavaHighlight;->height:D

    move-object v0, p2

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return-object p2
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/JavaHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getAttributedString()Ljava/text/AttributedString;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public loadData(Lorg/apache/poi/sl/draw/DrawTextPart;Ljava/awt/geom/AffineTransform;Ljava/awt/font/FontRenderContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/text/JavaHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    iput-object p2, p0, Lorg/apache/poi/text/JavaHighlight;->transform:Ljava/awt/geom/AffineTransform;

    iput-object p3, p0, Lorg/apache/poi/text/JavaHighlight;->frc:Ljava/awt/font/FontRenderContext;

    invoke-direct {p0}, Lorg/apache/poi/text/JavaHighlight;->calculateHeight()V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/text/JavaHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    iput-object v0, p0, Lorg/apache/poi/text/JavaHighlight;->transform:Ljava/awt/geom/AffineTransform;

    iput-object v0, p0, Lorg/apache/poi/text/JavaHighlight;->frc:Ljava/awt/font/FontRenderContext;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/apache/poi/text/JavaHighlight;->height:D

    return-void
.end method
