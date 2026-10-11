.class public Lorg/apache/poi/text/AndroidHighlight;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/text/Highlight;


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/awt/geom/Rectangle2D;",
            ">;"
        }
    .end annotation
.end field

.field private dy:D

.field private height:D

.field private textPart:Lorg/apache/poi/sl/draw/DrawTextPart;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/text/AndroidHighlight;->cache:Ljava/util/Map;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/apache/poi/text/AndroidHighlight;->height:D

    return-void
.end method

.method private createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;
    .locals 8

    new-instance p0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p0
.end method

.method private getKey(II)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMetrics(II)Ljava/awt/geom/Point2D;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/text/AndroidHighlight;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    invoke-static {p1}, Lcom/trans/android/util/BridgeUtils;->convertCharacterIterator(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/trans/android/util/BridgeUtils;->collectAttributeData(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, p1}, Lcom/trans/android/util/BridgeUtils;->setSpannableWithAttributeData(Landroid/text/Spannable;Ljava/util/List;)V

    sget-object p2, Ljava/awt/Font;->DEFAULT_FONT:Ljava/awt/Font;

    invoke-static {p1, p2}, Lcom/trans/android/util/BridgeUtils;->getFontFromAttributedData(Ljava/util/List;Ljava/awt/Font;)Ljava/awt/Font;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/text/AndroidHighlight;->getPaint(Ljava/awt/Font;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p2

    iget-wide v1, p0, Lorg/apache/poi/text/AndroidHighlight;->height:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p2

    float-to-int v1, v1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/poi/text/AndroidHighlight;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, p1

    float-to-double v1, v1

    iput-wide v1, p0, Lorg/apache/poi/text/AndroidHighlight;->dy:D

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result p1

    int-to-double v0, p1

    iput-wide v0, p0, Lorg/apache/poi/text/AndroidHighlight;->height:D

    :cond_0
    new-instance p1, Ljava/awt/geom/Point2D$Double;

    float-to-double v0, p2

    iget-wide v2, p0, Lorg/apache/poi/text/AndroidHighlight;->height:D

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object p1
.end method

.method private getPaint(Ljava/awt/Font;)Landroid/text/TextPaint;
    .locals 0

    invoke-static {p1}, Lcom/onyx/common/util/PaintFactory;->create(Ljava/awt/Font;)Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method private getTextPartMetrics()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/text/AndroidHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getAttributedString()Ljava/text/AttributedString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/text/AndroidHighlight;->getMetrics(II)Ljava/awt/geom/Point2D;

    return-void
.end method


# virtual methods
.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/text/AndroidHighlight;->height:D

    return-wide v0
.end method

.method public getHighlight(Ljava/awt/geom/Point2D;II)Ljava/awt/geom/Rectangle2D;
    .locals 11

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/text/AndroidHighlight;->getKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/text/AndroidHighlight;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/geom/Rectangle2D;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/text/AndroidHighlight;->getMetrics(II)Ljava/awt/geom/Point2D;

    move-result-object p2

    new-instance p3, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v8

    move-object v1, p3

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iget-object v1, p0, Lorg/apache/poi/text/AndroidHighlight;->cache:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/poi/text/AndroidHighlight;->dy:D

    add-double v5, v0, p0

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v7

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v9

    move-object v2, p3

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p3

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/text/AndroidHighlight;->getHighlight(Ljava/awt/geom/Point2D;II)Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/poi/text/AndroidHighlight;->getHighlight(Ljava/awt/geom/Point2D;II)Ljava/awt/geom/Rectangle2D;

    move-result-object p3

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/poi/text/AndroidHighlight;->dy:D

    add-double/2addr v3, v5

    invoke-virtual {p3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide p1

    sub-double/2addr v5, p1

    iget-wide v7, p0, Lorg/apache/poi/text/AndroidHighlight;->height:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/AndroidHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getAttributedString()Ljava/text/AttributedString;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public loadData(Lorg/apache/poi/sl/draw/DrawTextPart;Ljava/awt/geom/AffineTransform;Ljava/awt/font/FontRenderContext;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/text/AndroidHighlight;->release()V

    iput-object p1, p0, Lorg/apache/poi/text/AndroidHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-direct {p0}, Lorg/apache/poi/text/AndroidHighlight;->getTextPartMetrics()V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/text/AndroidHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    iget-object v0, p0, Lorg/apache/poi/text/AndroidHighlight;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/apache/poi/text/AndroidHighlight;->height:D

    return-void
.end method
