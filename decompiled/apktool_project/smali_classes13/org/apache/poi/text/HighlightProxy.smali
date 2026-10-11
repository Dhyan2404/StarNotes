.class public Lorg/apache/poi/text/HighlightProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/text/Highlight;


# instance fields
.field private activeHighlight:Lorg/apache/poi/text/Highlight;

.field private androidHighlight:Lorg/apache/poi/text/AndroidHighlight;

.field private hbHighlight:Lorg/apache/poi/text/HBHighlight;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/text/AndroidHighlight;

    invoke-direct {v0}, Lorg/apache/poi/text/AndroidHighlight;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/text/HighlightProxy;->androidHighlight:Lorg/apache/poi/text/AndroidHighlight;

    new-instance v0, Lorg/apache/poi/text/HBHighlight;

    invoke-direct {v0}, Lorg/apache/poi/text/HBHighlight;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/text/HighlightProxy;->hbHighlight:Lorg/apache/poi/text/HBHighlight;

    return-void
.end method


# virtual methods
.method public getHeight()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/text/HighlightProxy;->activeHighlight:Lorg/apache/poi/text/Highlight;

    invoke-interface {p0}, Lorg/apache/poi/text/Highlight;->getHeight()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHighlight(Ljava/awt/geom/Point2D;II)Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/HighlightProxy;->activeHighlight:Lorg/apache/poi/text/Highlight;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/poi/text/Highlight;->getHighlight(Ljava/awt/geom/Point2D;II)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/HighlightProxy;->activeHighlight:Lorg/apache/poi/text/Highlight;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/poi/text/Highlight;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public loadData(Lorg/apache/poi/sl/draw/DrawTextPart;Ljava/awt/geom/AffineTransform;Ljava/awt/font/FontRenderContext;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/text/HighlightProxy;->release()V

    invoke-static {}, Lcom/trans/android/hb/HBUtils;->enableHBDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/text/HighlightProxy;->hbHighlight:Lorg/apache/poi/text/HBHighlight;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/text/HighlightProxy;->androidHighlight:Lorg/apache/poi/text/AndroidHighlight;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/text/HighlightProxy;->activeHighlight:Lorg/apache/poi/text/Highlight;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/text/Highlight;->loadData(Lorg/apache/poi/sl/draw/DrawTextPart;Ljava/awt/geom/AffineTransform;Ljava/awt/font/FontRenderContext;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/text/HighlightProxy;->androidHighlight:Lorg/apache/poi/text/AndroidHighlight;

    invoke-virtual {v0}, Lorg/apache/poi/text/AndroidHighlight;->release()V

    iget-object p0, p0, Lorg/apache/poi/text/HighlightProxy;->hbHighlight:Lorg/apache/poi/text/HBHighlight;

    invoke-virtual {p0}, Lorg/apache/poi/text/HBHighlight;->release()V

    return-void
.end method
