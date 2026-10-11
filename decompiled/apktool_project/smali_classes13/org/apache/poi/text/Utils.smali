.class public Lorg/apache/poi/text/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDegree(Ljava/awt/geom/AffineTransform;)J
    .locals 11

    const/4 v0, 0x6

    new-array v0, v0, [D

    invoke-virtual {p0, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    const/4 v1, 0x3

    aget-wide v8, v0, v1

    const/4 v10, 0x1

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getForegroundColor(Ljava/text/AttributedCharacterIterator;)Ljava/awt/Color;
    .locals 1

    sget-object v0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/awt/Color;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/awt/Color;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getHighlight()Lorg/apache/poi/text/Highlight;
    .locals 2

    const-class v0, Lorg/apache/poi/text/Highlight;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Highlight;

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/text/JavaHighlight;

    invoke-direct {v0}, Lorg/apache/poi/text/JavaHighlight;-><init>()V

    return-object v0
.end method

.method public static getString(Ljava/text/CharacterIterator;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Ljava/text/CharacterIterator;->first()C

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    aput-char v3, v1, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isHorizontal(J)Z
    .locals 2

    const-wide/16 v0, 0x5a

    div-long/2addr p0, v0

    const-wide/16 v0, 0x2

    rem-long/2addr p0, v0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLetter(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/text/Utils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isRightAngle(J)Z
    .locals 2

    const-wide/16 v0, 0x5a

    rem-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTranslate(I)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTranslate(Ljava/awt/Color;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static removeNewlineSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/text/Utils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\r\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static transformEquals(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static transformRectangle(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa0

    const/16 v4, 0x20

    if-ge v2, v0, :cond_2

    aget-char v5, v1, v2

    if-le v5, v4, :cond_1

    if-ne v5, v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_4

    add-int/lit8 v5, v0, -0x1

    aget-char v5, v1, v5

    if-le v5, v4, :cond_3

    aget-char v5, v1, v2

    if-ne v5, v3, :cond_4

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    if-gtz v2, :cond_5

    array-length v1, v1

    if-ge v0, v1, :cond_6

    :cond_5
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/awt/geom/Rectangle2D;->setRect(Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p0, p0}, Ljava/awt/geom/Rectangle2D;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    :goto_0
    return-void
.end method

.method public static unionRectangle(Ljava/util/List;)Ljava/awt/geom/Rectangle2D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/text/Line;",
            ">;)",
            "Ljava/awt/geom/Rectangle2D;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/text/Line;

    .line 3
    invoke-virtual {v1}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/text/Utils;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static unionRectangle(Lorg/apache/poi/text/Line;)Ljava/awt/geom/Rectangle2D;
    .locals 2

    .line 4
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/text/Line;->getWords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/text/OneWord;

    .line 6
    invoke-virtual {v1}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/text/Utils;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
