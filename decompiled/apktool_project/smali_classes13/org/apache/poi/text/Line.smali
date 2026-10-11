.class public Lorg/apache/poi/text/Line;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private degree:J

.field private endPos:I

.field private index:I

.field private paragraphEnd:Z

.field private rectangle:Ljava/awt/geom/Rectangle2D;

.field private startPos:I

.field private text:Ljava/lang/String;

.field private transform:Ljava/awt/geom/AffineTransform;

.field private words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/text/OneWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/awt/geom/AffineTransform;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/text/Line;->rectangle:Ljava/awt/geom/Rectangle2D;

    iput-object p1, p0, Lorg/apache/poi/text/Line;->transform:Ljava/awt/geom/AffineTransform;

    iput-wide p2, p0, Lorg/apache/poi/text/Line;->degree:J

    iput p4, p0, Lorg/apache/poi/text/Line;->startPos:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    return-void
.end method

.method private breakText(Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v7, v4

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/poi/text/Line;->getCharType(C)I

    move-result v8

    if-lez v8, :cond_2

    if-eq v8, v7, :cond_0

    if-ltz v5, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v3

    :cond_0
    if-gez v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    move v6, v5

    move v5, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    :goto_1
    move v7, v8

    goto :goto_2

    :cond_2
    if-ltz v5, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v3

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v7, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method private calculateOneWord(Ljava/awt/Graphics2D;Ljava/awt/geom/AffineTransform;Ljava/util/List;Lorg/apache/poi/text/Highlight;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/awt/geom/AffineTransform;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextPart;",
            ">;",
            "Lorg/apache/poi/text/Highlight;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/DrawTextPart;

    instance-of v1, v0, Lorg/apache/poi/sl/draw/DrawMathPart;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getAttributedString()Ljava/text/AttributedString;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextPart;->isPlaceholderText()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/text/Utils;->getString(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/poi/text/Utils;->removeNewlineSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/text/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lorg/apache/poi/text/Utils;->getForegroundColor(Ljava/text/AttributedCharacterIterator;)Ljava/awt/Color;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/text/Utils;->isTranslate(Ljava/awt/Color;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getX()D

    move-result-wide v1

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getY()D

    move-result-wide v3

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v13, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    invoke-interface {v15, v0, v14, v8}, Lorg/apache/poi/text/Highlight;->loadData(Lorg/apache/poi/sl/draw/DrawTextPart;Ljava/awt/geom/AffineTransform;Ljava/awt/font/FontRenderContext;)V

    invoke-direct {v7, v12}, Lorg/apache/poi/text/Line;->breakText(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p4

    move-object v3, v12

    move-object v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/text/Line;->calculateWordWidth(Ljava/util/List;Lorg/apache/poi/text/Highlight;Ljava/lang/String;Ljava/awt/geom/Point2D;II)V

    goto :goto_1

    :cond_5
    move-object/from16 v14, p2

    move-object/from16 v15, p4

    goto/16 :goto_0

    :cond_6
    move-object/from16 v15, p4

    invoke-interface {v9}, Ljava/util/List;->clear()V

    invoke-interface/range {p4 .. p4}, Lorg/apache/poi/text/Highlight;->release()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/poi/text/Line;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    return-void
.end method

.method private calculateWordWidth(Ljava/util/List;Lorg/apache/poi/text/Highlight;Ljava/lang/String;Ljava/awt/geom/Point2D;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;",
            "Lorg/apache/poi/text/Highlight;",
            "Ljava/lang/String;",
            "Ljava/awt/geom/Point2D;",
            "II)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2, v0, p5, p6}, Lorg/apache/poi/text/Highlight;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    invoke-interface {v0, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/OneWord;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p4, v1, v2, v3, v4}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    invoke-virtual {v0}, Lorg/apache/poi/text/OneWord;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sub-int/2addr p5, v1

    :cond_0
    invoke-interface {p2, p4, p5, p6}, Lorg/apache/poi/text/Highlight;->getHighlight(Ljava/awt/geom/Point2D;II)Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v0

    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p4, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    new-instance p4, Lorg/apache/poi/text/OneWord;

    invoke-virtual {p3, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lorg/apache/poi/text/Line;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {p0, p2, p5}, Lorg/apache/poi/text/Line;->transformRectangle(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/Rectangle2D;

    move-result-object p5

    iget p6, p0, Lorg/apache/poi/text/Line;->startPos:I

    iget-object v0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p6, v0

    invoke-direct {p4, p3, p5, p6}, Lorg/apache/poi/text/OneWord;-><init>(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;I)V

    iget-object p3, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p4, p3}, Lorg/apache/poi/text/OneWord;->setIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCharType(C)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/text/Utils;->isLetter(C)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private transformRectangle(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-static {p2, p1}, Lorg/apache/poi/text/Utils;->transformRectangle(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateWordBounds(Ljava/awt/Graphics2D;Ljava/awt/geom/AffineTransform;Ljava/util/List;Lorg/apache/poi/text/Highlight;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/awt/geom/AffineTransform;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextPart;",
            ">;",
            "Lorg/apache/poi/text/Highlight;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/text/Line;->calculateOneWord(Ljava/awt/Graphics2D;Ljava/awt/geom/AffineTransform;Ljava/util/List;Lorg/apache/poi/text/Highlight;)V

    iget-object p1, p0, Lorg/apache/poi/text/Line;->rectangle:Ljava/awt/geom/Rectangle2D;

    invoke-static {p0}, Lorg/apache/poi/text/Utils;->unionRectangle(Lorg/apache/poi/text/Line;)Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/poi/text/Utils;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    iget p1, p0, Lorg/apache/poi/text/Line;->startPos:I

    iget-object p2, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/poi/text/Line;->endPos:I

    return-void
.end method

.method public combineLeftText(Ljava/lang/StringBuilder;Ljava/util/List;IIZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;IIZ)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p4, :cond_0

    return v0

    :cond_0
    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    :goto_0
    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_3

    iget-object p5, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/apache/poi/text/OneWord;

    invoke-virtual {p5}, Lorg/apache/poi/text/OneWord;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/apache/poi/text/Utils;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {p5}, Lorg/apache/poi/text/OneWord;->length()I

    move-result p5

    sub-int/2addr p4, p5

    if-gtz p4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    return p4
.end method

.method public combineRightText(Ljava/lang/StringBuilder;Ljava/util/List;IIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;IIZ)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p4, :cond_0

    return v0

    :cond_0
    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    iget-object p5, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p3, p5, :cond_3

    iget-object p5, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/apache/poi/text/OneWord;

    invoke-virtual {p5}, Lorg/apache/poi/text/OneWord;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/poi/text/Utils;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {p5}, Lorg/apache/poi/text/OneWord;->length()I

    move-result p5

    sub-int/2addr p4, p5

    if-gtz p4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p4
.end method

.method public combineSelectText(Ljava/lang/StringBuilder;Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p3, p4, :cond_0

    iget-object v0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v0}, Lorg/apache/poi/text/OneWord;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/poi/text/Utils;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/poi/text/Line;

    iget-boolean v2, p0, Lorg/apache/poi/text/Line;->paragraphEnd:Z

    iget-boolean v3, p1, Lorg/apache/poi/text/Line;->paragraphEnd:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lorg/apache/poi/text/Line;->degree:J

    iget-wide v4, p1, Lorg/apache/poi/text/Line;->degree:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lorg/apache/poi/text/Line;->index:I

    iget v3, p1, Lorg/apache/poi/text/Line;->index:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/apache/poi/text/Line;->startPos:I

    iget v3, p1, Lorg/apache/poi/text/Line;->startPos:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/apache/poi/text/Line;->endPos:I

    iget v3, p1, Lorg/apache/poi/text/Line;->endPos:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/poi/text/Line;->rectangle:Ljava/awt/geom/Rectangle2D;

    iget-object v3, p1, Lorg/apache/poi/text/Line;->rectangle:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2, v3}, Ljava/awt/geom/Rectangle2D;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/text/Line;->transform:Ljava/awt/geom/AffineTransform;

    iget-object v3, p1, Lorg/apache/poi/text/Line;->transform:Ljava/awt/geom/AffineTransform;

    invoke-static {v2, v3}, Lorg/apache/poi/text/Utils;->transformEquals(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/text/Line;->text:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/text/Line;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEndPos()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/Line;->endPos:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/Line;->index:I

    return p0
.end method

.method public getPostion(I)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/Line;->startPos:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getRectangle()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Line;->rectangle:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getStartPos()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/Line;->startPos:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Line;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getWord(I)Lorg/apache/poi/text/OneWord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/text/OneWord;

    return-object p0
.end method

.method public getWordByPos(I)Lorg/apache/poi/text/OneWord;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v0}, Lorg/apache/poi/text/OneWord;->getPos()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWordIndex(Ljava/awt/geom/Point2D;)I
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/text/Line;->isHorizontal()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/text/Line;->isReverse()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_5

    iget-object v2, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v2}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    add-int/2addr v1, v3

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_4

    return v1

    :cond_2
    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    add-int/2addr v1, v3

    return v1

    :cond_3
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_b

    iget-object v4, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v4}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_7

    sub-int/2addr v2, v3

    return v2

    :cond_7
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_a

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v7

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_a

    return v2

    :cond_8
    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_9

    sub-int/2addr v2, v3

    return v2

    :cond_9
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_a

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v7

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_a

    return v2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    sub-int/2addr v1, v3

    return v1
.end method

.method public getWordIndexExact(Ljava/awt/geom/Point2D;)I
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/text/Line;->isHorizontal()Z

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/text/Line;->isReverse()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_6

    iget-object v3, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v3}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_2

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    iget-object v4, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v4}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v7

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_5

    return v3

    :cond_4
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v7

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_5

    return v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method public getWords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/text/OneWord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/poi/text/Line;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/text/Line;->rectangle:Ljava/awt/geom/Rectangle2D;

    iget-object v3, p0, Lorg/apache/poi/text/Line;->transform:Ljava/awt/geom/AffineTransform;

    iget-boolean v4, p0, Lorg/apache/poi/text/Line;->paragraphEnd:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-wide v5, p0, Lorg/apache/poi/text/Line;->degree:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, p0, Lorg/apache/poi/text/Line;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lorg/apache/poi/text/Line;->startPos:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Lorg/apache/poi/text/Line;->endPos:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isHorizontal()Z
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/text/Line;->degree:J

    invoke-static {v0, v1}, Lorg/apache/poi/text/Utils;->isHorizontal(J)Z

    move-result p0

    return p0
.end method

.method public isParagraphEnd()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/text/Line;->paragraphEnd:Z

    return p0
.end method

.method public isReverse()Z
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v0}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v1}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/text/Line;->isHorizontal()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    cmpl-double p0, v5, v0

    if-lez p0, :cond_1

    move v2, v4

    :cond_1
    return v2

    :cond_2
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    cmpl-double p0, v5, v0

    if-lez p0, :cond_3

    move v2, v4

    :cond_3
    return v2
.end method

.method public search(Lorg/apache/poi/text/SearchOptions;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->getSearchWordIndex()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/text/Line;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->reset()V

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/poi/text/SearchOptions;->setSearchWordIndex(I)Lorg/apache/poi/text/SearchOptions;

    new-instance v13, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v13}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    :goto_0
    iget-object v4, v0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, v0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v14}, Lorg/apache/poi/text/OneWord;->toCharArray()[C

    move-result-object v15

    array-length v11, v15

    move v12, v3

    :goto_1
    if-ge v12, v11, :cond_4

    aget-char v4, v15, v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->getSearchChar()C

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->isFound()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p2}, Lorg/apache/poi/text/SearchOptions;->setStartLineIndex(I)Lorg/apache/poi/text/SearchOptions;

    invoke-virtual {v1, v2}, Lorg/apache/poi/text/SearchOptions;->setStartWordIndex(I)Lorg/apache/poi/text/SearchOptions;

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/apache/poi/text/SearchOptions;->setFound(Z)Lorg/apache/poi/text/SearchOptions;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->increaseSearchIndex()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->isFinish()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p2}, Lorg/apache/poi/text/SearchOptions;->setEndLineIndex(I)Lorg/apache/poi/text/SearchOptions;

    invoke-virtual {v1, v2}, Lorg/apache/poi/text/SearchOptions;->setEndWordIndex(I)Lorg/apache/poi/text/SearchOptions;

    goto :goto_3

    :cond_2
    move/from16 v18, v11

    move/from16 v19, v12

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->reset()V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v16, 0x0

    move-object v4, v13

    move/from16 v18, v11

    move/from16 v19, v12

    move-wide/from16 v11, v16

    invoke-virtual/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D;->setFrame(DDDD)V

    :goto_2
    add-int/lit8 v12, v19, 0x1

    move/from16 v11, v18

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->isFound()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v14}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    invoke-static {v13, v4}, Lorg/apache/poi/text/Utils;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->isFinish()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->isFound()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/text/SearchOptions;->getRectangleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/Line;->index:I

    return-void
.end method

.method public setParagraphEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/text/Line;->paragraphEnd:Z

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Line;->words:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Line{degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/text/Line;->degree:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/text/Line;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/text/Line;->startPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/text/Line;->endPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paragraphEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/text/Line;->paragraphEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/text/Line;->text:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
