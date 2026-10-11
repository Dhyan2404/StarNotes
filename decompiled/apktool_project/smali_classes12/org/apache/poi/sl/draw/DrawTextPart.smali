.class public Lorg/apache/poi/sl/draw/DrawTextPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# static fields
.field public static final METRICS_12:[F


# instance fields
.field protected fontMetrics:[F

.field protected fontSize:F

.field protected layout:Ljava/awt/font/TextLayout;

.field protected str:Ljava/text/AttributedString;

.field protected x:D

.field protected y:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTextPart;->METRICS_12:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x412f2c00
        0x4015d000
        0x3f028000
        0x41c00000    # 24.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;Ljava/awt/font/FontRenderContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontSize:F

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->layout:Ljava/awt/font/TextLayout;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->str:Ljava/text/AttributedString;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getMaxFontSize()V

    invoke-direct {p0, p3}, Lorg/apache/poi/sl/draw/DrawTextPart;->calculateFontMetrics(Ljava/awt/font/FontRenderContext;)V

    return-void
.end method

.method private calculateFontMetrics(Ljava/awt/font/FontRenderContext;)V
    .locals 4

    const/4 p1, 0x4

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontMetrics:[F

    iget v0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontSize:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontMetrics:[F

    sget-object v3, Lorg/apache/poi/sl/draw/DrawTextPart;->METRICS_12:[F

    aget v3, v3, v1

    mul-float/2addr v3, v0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private replaceForegroundPaintWithBlack(Ljava/text/AttributedString;)V
    .locals 4

    sget-object p0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    filled-new-array {p0}, [Ljava/awt/font/TextAttribute;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    :goto_0
    const v1, 0xffff

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    sget-object v1, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->str:Ljava/text/AttributedString;

    if-eqz v0, :cond_2

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->disableDraw(Ljava/awt/Graphics2D;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->isPlaceholderText()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->y:D

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontMetrics:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->TEXT_RENDERING_MODE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->layout:Ljava/awt/font/TextLayout;

    iget-wide v3, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->x:D

    double-to-float p0, v3

    double-to-float v0, v0

    invoke-virtual {v2, p1, p0, v0}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->str:Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->x:D

    double-to-float v3, v3

    double-to-float v4, v0

    invoke-virtual {p1, v2, v3, v4}, Ljava/awt/Graphics2D;->drawString(Ljava/text/AttributedCharacterIterator;FF)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->str:Ljava/text/AttributedString;

    invoke-direct {p0, v2}, Lorg/apache/poi/sl/draw/DrawTextPart;->replaceForegroundPaintWithBlack(Ljava/text/AttributedString;)V

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->str:Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->x:D

    double-to-float p0, v3

    double-to-float v0, v0

    invoke-virtual {p1, v2, p0, v0}, Ljava/awt/Graphics2D;->drawString(Ljava/text/AttributedCharacterIterator;FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public getAscent()F
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontMetrics:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getAttributedString()Ljava/text/AttributedString;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->str:Ljava/text/AttributedString;

    return-object p0
.end method

.method public getDescent()F
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontMetrics:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getFontMetrics()[F
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontMetrics:[F

    return-object p0
.end method

.method public getFontSize()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontSize:F

    return p0
.end method

.method public getHeight()F
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontMetrics:[F

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    double-to-float p0, v0

    return p0
.end method

.method public getLayout()Ljava/awt/font/TextLayout;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->layout:Ljava/awt/font/TextLayout;

    return-object p0
.end method

.method public getLeading()F
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontMetrics:[F

    const/4 v0, 0x2

    aget v0, p0, v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v2

    :cond_0
    double-to-float p0, v0

    return p0
.end method

.method public getMaxFontSize()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->str:Ljava/text/AttributedString;

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    :goto_0
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    sget-object v5, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    if-ne v4, v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    if-eqz v3, :cond_0

    iget v4, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontSize:F

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->fontSize:F

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->str:Ljava/text/AttributedString;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    :goto_0
    const v2, 0xffff

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()F
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->layout:Ljava/awt/font/TextLayout;

    invoke-virtual {p0}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p0

    return p0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->y:D

    return-wide v0
.end method

.method public isPlaceholderText()Z
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->str:Ljava/text/AttributedString;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/sl/draw/PlaceholderTextAttribute;->instance:Lorg/apache/poi/sl/draw/PlaceholderTextAttribute;

    invoke-interface {p0, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setPosition(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->x:D

    iput-wide p3, p0, Lorg/apache/poi/sl/draw/DrawTextPart;->y:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
