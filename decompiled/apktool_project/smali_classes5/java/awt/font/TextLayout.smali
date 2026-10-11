.class public final Ljava/awt/font/TextLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/font/TextLayout$CaretPolicy;
    }
.end annotation


# static fields
.field private static final ALREADY_JUSTIFIED:F = -53.9f

.field public static final DEFAULT_CARET_POLICY:Ljava/awt/font/TextLayout$CaretPolicy;

.field private static dx:F

.field private static dy:F


# instance fields
.field private baseline:B

.field private baselineOffsets:[F

.field private boundsRect:Ljava/awt/geom/Rectangle2D;

.field private cacheIsValid:Z

.field private caretsInLigaturesAreAllowed:Z

.field private characterCount:I

.field private hashCodeCache:I

.field private isVerticalLine:Z

.field private justifyRatio:F

.field private lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

.field private naturalBounds:Ljava/awt/geom/Rectangle2D;

.field private textLine:Ljava/awt/font/TextLine;

.field private visibleAdvance:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/awt/font/TextLayout$CaretPolicy;

    invoke-direct {v0}, Ljava/awt/font/TextLayout$CaretPolicy;-><init>()V

    sput-object v0, Ljava/awt/font/TextLayout;->DEFAULT_CARET_POLICY:Ljava/awt/font/TextLayout$CaretPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/awt/font/TextLine;B[FF)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    .line 61
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->cacheIsValid:Z

    .line 62
    iput-object v1, p0, Ljava/awt/font/TextLayout;->naturalBounds:Ljava/awt/geom/Rectangle2D;

    .line 63
    iput-object v1, p0, Ljava/awt/font/TextLayout;->boundsRect:Ljava/awt/geom/Rectangle2D;

    .line 64
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->caretsInLigaturesAreAllowed:Z

    .line 65
    invoke-virtual {p1}, Ljava/awt/font/TextLine;->characterCount()I

    move-result v0

    iput v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    .line 66
    iput-byte p2, p0, Ljava/awt/font/TextLayout;->baseline:B

    .line 67
    iput-object p3, p0, Ljava/awt/font/TextLayout;->baselineOffsets:[F

    .line 68
    iput-object p1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    .line 69
    iput p4, p0, Ljava/awt/font/TextLayout;->justifyRatio:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    .line 4
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->cacheIsValid:Z

    .line 5
    iput-object v1, p0, Ljava/awt/font/TextLayout;->naturalBounds:Ljava/awt/geom/Rectangle2D;

    .line 6
    iput-object v1, p0, Ljava/awt/font/TextLayout;->boundsRect:Ljava/awt/geom/Rectangle2D;

    .line 7
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->caretsInLigaturesAreAllowed:Z

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {p2}, Ljava/awt/Font;->hasLayoutAttributes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {p2}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 12
    array-length v3, v2

    invoke-static {p2, v2, v0, v3}, Ljava/awt/font/TextLayout;->sameBaselineUpTo(Ljava/awt/Font;[CII)I

    move-result v0

    array-length v3, v2

    if-ne v0, v3, :cond_1

    .line 13
    invoke-direct {p0, v2, p2, v1, p3}, Ljava/awt/font/TextLayout;->fastInit([CLjava/awt/Font;Ljava/util/Map;Ljava/awt/font/FontRenderContext;)V

    goto :goto_1

    .line 14
    :cond_1
    new-instance v0, Ljava/text/AttributedString;

    if-nez v1, :cond_2

    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {v0, p1, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    :goto_0
    sget-object p1, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    invoke-virtual {v0, p1, p2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    invoke-direct {p0, p1, v2, p3}, Ljava/awt/font/TextLayout;->standardInit(Ljava/text/AttributedCharacterIterator;[CLjava/awt/font/FontRenderContext;)V

    :goto_1
    return-void

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zero length string passed to TextLayout constructor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null string passed to TextLayout constructor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null font passed to TextLayout constructor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/awt/font/FontRenderContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;",
            "Ljava/awt/font/FontRenderContext;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    .line 23
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->cacheIsValid:Z

    .line 24
    iput-object v1, p0, Ljava/awt/font/TextLayout;->naturalBounds:Ljava/awt/geom/Rectangle2D;

    .line 25
    iput-object v1, p0, Ljava/awt/font/TextLayout;->boundsRect:Ljava/awt/geom/Rectangle2D;

    .line 26
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->caretsInLigaturesAreAllowed:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 29
    array-length v2, v1

    invoke-static {v1, v0, v2, p2}, Ljava/awt/font/TextLayout;->singleFont([CIILjava/util/Map;)Ljava/awt/Font;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0, v1, v0, p2, p3}, Ljava/awt/font/TextLayout;->fastInit([CLjava/awt/Font;Ljava/util/Map;Ljava/awt/font/FontRenderContext;)V

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, p1, p2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    invoke-direct {p0, p1, v1, p3}, Ljava/awt/font/TextLayout;->standardInit(Ljava/text/AttributedCharacterIterator;[CLjava/awt/font/FontRenderContext;)V

    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zero length string passed to TextLayout constructor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null map passed to TextLayout constructor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null string passed to TextLayout constructor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V
    .locals 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    .line 39
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->cacheIsValid:Z

    .line 40
    iput-object v1, p0, Ljava/awt/font/TextLayout;->naturalBounds:Ljava/awt/geom/Rectangle2D;

    .line 41
    iput-object v1, p0, Ljava/awt/font/TextLayout;->boundsRect:Ljava/awt/geom/Rectangle2D;

    .line 42
    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->caretsInLigaturesAreAllowed:Z

    if-eqz p1, :cond_3

    .line 43
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    .line 44
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    if-eq v1, v2, :cond_2

    sub-int v1, v2, v1

    .line 45
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    .line 46
    new-array v3, v1, [C

    .line 47
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v4

    move v5, v0

    :goto_0
    const v6, 0xffff

    if-eq v4, v6, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 48
    aput-char v4, v3, v5

    .line 49
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v4

    move v5, v6

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    .line 51
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 52
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 53
    invoke-static {v3, v0, v1, v2}, Ljava/awt/font/TextLayout;->singleFont([CIILjava/util/Map;)Ljava/awt/Font;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0, v3, v0, v2, p2}, Ljava/awt/font/TextLayout;->fastInit([CLjava/awt/Font;Ljava/util/Map;Ljava/awt/font/FontRenderContext;)V

    return-void

    .line 55
    :cond_1
    invoke-direct {p0, p1, v3, p2}, Ljava/awt/font/TextLayout;->standardInit(Ljava/text/AttributedCharacterIterator;[CLjava/awt/font/FontRenderContext;)V

    return-void

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zero length iterator passed to TextLayout constructor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null iterator passed to TextLayout constructor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Ljava/awt/font/TextLayout;Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextLayout;->getStrongHit(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0
.end method

.method private boundingShape([D[D)Ljava/awt/geom/GeneralPath;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/awt/font/TextLayout;->pathToShape([DZLsun/font/LayoutPathImpl;)Ljava/awt/geom/GeneralPath;

    move-result-object v0

    iget-boolean p0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p0, :cond_3

    aget-wide v4, p1, v3

    array-length p0, p1

    sub-int/2addr p0, v3

    aget-wide p0, p1, p0

    cmpl-double p0, v4, p0

    if-lez p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    aget-wide v4, p2, v3

    array-length p1, p2

    sub-int/2addr p1, v3

    aget-wide v6, p2, p1

    cmpl-double p1, v4, v6

    if-lez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-ne p0, p1, :cond_2

    goto :goto_4

    :cond_2
    move v3, v1

    goto :goto_4

    :cond_3
    aget-wide v4, p1, v1

    array-length p0, p1

    sub-int/2addr p0, v2

    aget-wide p0, p1, p0

    cmpl-double p0, v4, p0

    if-lez p0, :cond_4

    move p0, v3

    goto :goto_2

    :cond_4
    move p0, v1

    :goto_2
    aget-wide v4, p2, v1

    array-length p1, p2

    sub-int/2addr p1, v2

    aget-wide v6, p2, p1

    cmpl-double p1, v4, v6

    if-lez p1, :cond_5

    move p1, v3

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    if-ne p0, p1, :cond_2

    :goto_4
    if-eqz v3, :cond_6

    array-length p0, p2

    add-int/lit8 v1, p0, -0x2

    const/4 v2, -0x2

    move p0, v2

    goto :goto_5

    :cond_6
    array-length p0, p2

    move v8, v2

    move v2, p0

    move p0, v8

    :goto_5
    if-eq v1, v2, :cond_7

    aget-wide v3, p2, v1

    double-to-float p1, v3

    add-int/lit8 v3, v1, 0x1

    aget-wide v3, p2, v3

    double-to-float v3, v3

    invoke-virtual {v0, p1, v3}, Ljava/awt/geom/Path2D$Float;->lineTo(FF)V

    add-int/2addr v1, p0

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/awt/geom/Path2D;->closePath()V

    return-object v0
.end method

.method private buildCache()V
    .locals 7

    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0}, Ljava/awt/font/TextLine;->getMetrics()Ljava/awt/font/TextLine$TextLineMetrics;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    sub-int/2addr v0, v3

    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    iget-object v5, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v5, v0}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result v5

    iget-object v6, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v6, v5}, Ljava/awt/font/TextLine;->isCharSpace(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v5, p0, Ljava/awt/font/TextLayout;->characterCount:I

    sub-int/2addr v5, v3

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    iget v0, v0, Ljava/awt/font/TextLine$TextLineMetrics;->advance:F

    iput v0, p0, Ljava/awt/font/TextLayout;->visibleAdvance:F

    goto :goto_4

    :cond_2
    if-ne v0, v4, :cond_3

    iput v1, p0, Ljava/awt/font/TextLayout;->visibleAdvance:F

    goto :goto_4

    :cond_3
    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, v0}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result v0

    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, v0}, Ljava/awt/font/TextLine;->getCharLinePosition(I)F

    move-result v1

    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4, v0}, Ljava/awt/font/TextLine;->getCharAdvance(I)F

    move-result v0

    add-float/2addr v1, v0

    iput v1, p0, Ljava/awt/font/TextLayout;->visibleAdvance:F

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_2
    iget v4, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-eq v0, v4, :cond_6

    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4, v0}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result v4

    iget-object v5, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v5, v4}, Ljava/awt/font/TextLine;->isCharSpace(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget v4, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne v0, v4, :cond_7

    iput v1, p0, Ljava/awt/font/TextLayout;->visibleAdvance:F

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    iget-object v0, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    iget v0, v0, Ljava/awt/font/TextLine$TextLineMetrics;->advance:F

    iput v0, p0, Ljava/awt/font/TextLayout;->visibleAdvance:F

    goto :goto_4

    :cond_8
    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, v0}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result v0

    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, v0}, Ljava/awt/font/TextLine;->getCharLinePosition(I)F

    move-result v0

    iget-object v1, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    iget v1, v1, Ljava/awt/font/TextLine$TextLineMetrics;->advance:F

    sub-float/2addr v1, v0

    iput v1, p0, Ljava/awt/font/TextLayout;->visibleAdvance:F

    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/font/TextLayout;->naturalBounds:Ljava/awt/geom/Rectangle2D;

    iput-object v0, p0, Ljava/awt/font/TextLayout;->boundsRect:Ljava/awt/geom/Rectangle2D;

    iput v2, p0, Ljava/awt/font/TextLayout;->hashCodeCache:I

    iput-boolean v3, p0, Ljava/awt/font/TextLayout;->cacheIsValid:Z

    return-void
.end method

.method private caretBoundingShape(IILjava/awt/geom/Rectangle2D;)Ljava/awt/geom/GeneralPath;
    .locals 2

    if-le p1, p2, :cond_0

    move v1, p2

    move p2, p1

    move p1, v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Ljava/awt/font/TextLayout;->getCaretPath(ILjava/awt/geom/Rectangle2D;Z)[D

    move-result-object p1

    invoke-direct {p0, p2, p3, v0}, Ljava/awt/font/TextLayout;->getCaretPath(ILjava/awt/geom/Rectangle2D;Z)[D

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextLayout;->boundingShape([D[D)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    return-object p0
.end method

.method private caretIsValid(I)Z
    .locals 3

    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0, p1}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result v0

    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v2, v0}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result v0

    iget-object p1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p1, v0}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0, v0}, Ljava/awt/font/TextLine;->caretAtOffsetIsValid(I)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private caretToHit(I)Ljava/awt/font/TextHitInfo;
    .locals 1

    if-eqz p1, :cond_2

    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0, p1}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result p1

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/awt/font/TextHitInfo;->leading(I)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/awt/font/TextHitInfo;->trailing(I)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result v0

    if-ne p1, v0, :cond_4

    iget p0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    invoke-static {p0}, Ljava/awt/font/TextHitInfo;->leading(I)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/awt/font/TextHitInfo;->trailing(I)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0
.end method

.method private caretToPointDistance([FFF)F
    .locals 1

    iget-boolean p0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    if-eqz p0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-eqz p0, :cond_1

    neg-float p3, p2

    :cond_1
    const/4 p0, 0x0

    aget p0, p1, p0

    sub-float/2addr v0, p0

    const/4 p0, 0x1

    aget p0, p1, p0

    mul-float/2addr p3, p0

    add-float/2addr v0, p3

    return v0
.end method

.method private checkTextHit(Ljava/awt/font/TextHitInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->getInsertionIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->getInsertionIndex()I

    move-result p1

    iget p0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-gt p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TextHitInfo is out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TextHitInfo is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ensureCache()V
    .locals 1

    iget-boolean v0, p0, Ljava/awt/font/TextLayout;->cacheIsValid:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->buildCache()V

    :cond_0
    return-void
.end method

.method private fastInit([CLjava/awt/Font;Ljava/util/Map;Ljava/awt/font/FontRenderContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/awt/Font;",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;",
            "Ljava/awt/font/FontRenderContext;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1, p4}, Ljava/awt/Font;->getLineMetrics([CIILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object v0

    invoke-static {v0}, Lsun/font/CoreMetrics;->get(Ljava/awt/font/LineMetrics;)Lsun/font/CoreMetrics;

    move-result-object v0

    iget v1, v0, Lsun/font/CoreMetrics;->baselineIndex:I

    int-to-byte v1, v1

    if-nez p3, :cond_0

    iput-byte v1, p0, Ljava/awt/font/TextLayout;->baseline:B

    iget-object v1, v0, Lsun/font/CoreMetrics;->baselineOffsets:[F

    iput-object v1, p0, Ljava/awt/font/TextLayout;->baselineOffsets:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ljava/awt/font/TextLayout;->justifyRatio:F

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v0, p3, p1}, Ljava/awt/font/TextLayout;->paragraphInit(BLsun/font/CoreMetrics;Ljava/util/Map;[C)V

    :goto_0
    array-length v1, p1

    iput v1, p0, Ljava/awt/font/TextLayout;->characterCount:I

    invoke-static {p4, p1, p2, v0, p3}, Ljava/awt/font/TextLine;->fastCreateTextLine(Ljava/awt/font/FontRenderContext;[CLjava/awt/Font;Lsun/font/CoreMetrics;Ljava/util/Map;)Ljava/awt/font/TextLine;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    return-void
.end method

.method public static getBaselineFromGraphic(Ljava/awt/font/GraphicAttribute;)B
    .locals 1

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAlignment()I

    move-result p0

    int-to-byte p0, p0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCaretInfo(ILjava/awt/geom/Rectangle2D;[F)[F
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1
    iget v1, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne p1, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v2, v1}, Ljava/awt/font/TextLine;->getCharAngle(I)F

    move-result v2

    .line 4
    iget-object v3, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v3, v1}, Ljava/awt/font/TextLine;->getCharLinePosition(I)F

    move-result v3

    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    .line 5
    invoke-virtual {v4, v1}, Ljava/awt/font/TextLine;->getCharAdvance(I)F

    move-result v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_1

    .line 6
    iget-object v5, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v5, v1}, Ljava/awt/font/TextLine;->getCharShift(I)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    .line 7
    iget-object v5, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v5, v1}, Ljava/awt/font/TextLine;->getCharAscent(I)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    .line 8
    iget-object v6, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v6, v1}, Ljava/awt/font/TextLine;->getCharDescent(I)F

    move-result v1

    mul-float/2addr v2, v1

    sub-float/2addr v3, v2

    move v1, v3

    move v3, v5

    goto :goto_0

    :cond_1
    move v1, v3

    .line 9
    :goto_0
    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v2, p1}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result p1

    .line 10
    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v2, p1}, Ljava/awt/font/TextLine;->getCharAngle(I)F

    move-result v2

    .line 11
    iget-object v5, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v5, p1}, Ljava/awt/font/TextLine;->getCharLinePosition(I)F

    move-result v5

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    .line 12
    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4, p1}, Ljava/awt/font/TextLine;->getCharShift(I)F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    .line 13
    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4, p1}, Ljava/awt/font/TextLine;->getCharAscent(I)F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v5

    .line 14
    iget-object v6, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v6, p1}, Ljava/awt/font/TextLine;->getCharDescent(I)F

    move-result p1

    mul-float/2addr v2, p1

    sub-float/2addr v5, v2

    move p1, v5

    move v5, v4

    goto :goto_3

    :cond_2
    move p1, v5

    goto :goto_3

    .line 15
    :cond_3
    :goto_1
    iget v1, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne p1, v1, :cond_4

    .line 16
    iget-object p1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result p1

    .line 17
    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, p1}, Ljava/awt/font/TextLine;->getCharLinePosition(I)F

    move-result v1

    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    .line 18
    invoke-virtual {v2, p1}, Ljava/awt/font/TextLine;->getCharAdvance(I)F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_2

    .line 19
    :cond_4
    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, p1}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result p1

    .line 20
    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, p1}, Ljava/awt/font/TextLine;->getCharLinePosition(I)F

    move-result v1

    .line 21
    :goto_2
    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v2, p1}, Ljava/awt/font/TextLine;->getCharAngle(I)F

    move-result v2

    .line 22
    iget-object v3, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v3, p1}, Ljava/awt/font/TextLine;->getCharShift(I)F

    move-result v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 23
    iget-object v3, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v3, p1}, Ljava/awt/font/TextLine;->getCharAscent(I)F

    move-result v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    .line 24
    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4, p1}, Ljava/awt/font/TextLine;->getCharDescent(I)F

    move-result p1

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    move p1, v1

    move v5, v3

    :goto_3
    add-float/2addr v3, v5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    add-float/2addr v1, p1

    div-float/2addr v1, v2

    if-nez p3, :cond_5

    const/4 p1, 0x2

    new-array p3, p1, [F

    .line 25
    :cond_5
    iget-boolean p0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    sub-float p0, v3, v1

    float-to-double v1, p0

    .line 26
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    div-double/2addr v1, v4

    double-to-float p0, v1

    aput p0, p3, v0

    float-to-double v0, v3

    float-to-double v2, p0

    .line 27
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    aput p0, p3, p1

    goto :goto_4

    :cond_6
    sub-float/2addr v3, v1

    float-to-double v2, v3

    .line 28
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float p0, v2

    aput p0, p3, v0

    float-to-double v0, v1

    float-to-double v2, p0

    .line 29
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    aput p0, p3, p1

    :goto_4
    return-object p3
.end method

.method private getCaretInfoTestInternal(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)[F
    .locals 13

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    const/4 v0, 0x6

    new-array v0, v0, [F

    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result v1

    invoke-direct {p0, v1, p2, v0}, Ljava/awt/font/TextLayout;->getCaretInfo(ILjava/awt/geom/Rectangle2D;[F)[F

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->getCharIndex()I

    move-result p2

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->isLeadingEdge()Z

    move-result p1

    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result v1

    invoke-virtual {p0}, Ljava/awt/font/TextLayout;->isVertical()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, -0x1

    if-eq p2, v4, :cond_5

    iget v5, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne p2, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, p2}, Ljava/awt/font/TextLine;->getCoreMetricsAt(I)Lsun/font/CoreMetrics;

    move-result-object v1

    iget v3, v1, Lsun/font/CoreMetrics;->italicAngle:F

    float-to-double v5, v3

    iget-object v3, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v3, p2, p1}, Ljava/awt/font/TextLine;->getCharLinePosition(IZ)F

    move-result p1

    float-to-double p1, p1

    iget v3, v1, Lsun/font/CoreMetrics;->baselineIndex:I

    if-gez v3, :cond_3

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getMetrics()Ljava/awt/font/TextLine$TextLineMetrics;

    move-result-object p0

    if-eqz v2, :cond_2

    iget v2, v1, Lsun/font/CoreMetrics;->baselineIndex:I

    if-ne v2, v4, :cond_1

    iget p0, p0, Ljava/awt/font/TextLine$TextLineMetrics;->ascent:F

    neg-float p0, p0

    float-to-double v2, p0

    iget p0, v1, Lsun/font/CoreMetrics;->height:F

    float-to-double v4, p0

    add-double/2addr v4, v2

    move-wide v6, v4

    goto :goto_0

    :cond_1
    iget p0, p0, Ljava/awt/font/TextLine$TextLineMetrics;->descent:F

    float-to-double v2, p0

    iget p0, v1, Lsun/font/CoreMetrics;->height:F

    float-to-double v4, p0

    sub-double v4, v2, v4

    move-wide v6, v2

    move-wide v2, v4

    :goto_0
    move-wide v4, p1

    goto/16 :goto_7

    :cond_2
    iget v1, p0, Ljava/awt/font/TextLine$TextLineMetrics;->descent:F

    float-to-double v1, v1

    iget p0, p0, Ljava/awt/font/TextLine$TextLineMetrics;->ascent:F

    :goto_1
    float-to-double v3, p0

    move-wide v6, p1

    move-wide v4, v3

    move-wide p1, v1

    move-wide v2, v6

    goto/16 :goto_7

    :cond_3
    iget-object p0, p0, Ljava/awt/font/TextLayout;->baselineOffsets:[F

    aget p0, p0, v3

    if-eqz v2, :cond_4

    iget v2, v1, Lsun/font/CoreMetrics;->ssOffset:F

    float-to-double v2, v2

    mul-double/2addr v2, v5

    add-double/2addr p1, v2

    iget v2, v1, Lsun/font/CoreMetrics;->ascent:F

    float-to-double v3, v2

    mul-double/2addr v3, v5

    add-double/2addr v3, p1

    iget v1, v1, Lsun/font/CoreMetrics;->descent:F

    float-to-double v7, v1

    mul-double/2addr v5, v7

    sub-double/2addr p1, v5

    sub-float v2, p0, v2

    float-to-double v5, v2

    add-float/2addr p0, v1

    float-to-double v1, p0

    move-wide v9, v1

    move-wide v11, v3

    move-wide v2, v5

    move-wide v4, p1

    move-wide v6, v9

    move-wide p1, v11

    goto :goto_7

    :cond_4
    iget v2, v1, Lsun/font/CoreMetrics;->ssOffset:F

    float-to-double v2, v2

    mul-double/2addr v2, v5

    sub-double/2addr p1, v2

    iget v2, v1, Lsun/font/CoreMetrics;->ascent:F

    float-to-double v3, v2

    mul-double/2addr v3, v5

    add-double/2addr v3, p1

    iget v1, v1, Lsun/font/CoreMetrics;->descent:F

    float-to-double v7, v1

    mul-double/2addr v5, v7

    sub-double v6, p1, v5

    add-float/2addr v2, p0

    float-to-double p1, v2

    add-float/2addr p0, v1

    float-to-double v1, p0

    move-wide v9, v1

    move-wide v2, v3

    move-wide v4, v9

    goto :goto_7

    :cond_5
    :goto_2
    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getMetrics()Ljava/awt/font/TextLine$TextLineMetrics;

    move-result-object p0

    const/4 p1, 0x0

    if-ne p2, v4, :cond_6

    move p2, v3

    goto :goto_3

    :cond_6
    move p2, p1

    :goto_3
    if-ne v1, p2, :cond_7

    goto :goto_4

    :cond_7
    move v3, p1

    :goto_4
    const-wide/16 p1, 0x0

    if-eqz v2, :cond_9

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    iget p1, p0, Ljava/awt/font/TextLine$TextLineMetrics;->advance:F

    float-to-double p1, p1

    :goto_5
    iget v1, p0, Ljava/awt/font/TextLine$TextLineMetrics;->ascent:F

    neg-float v1, v1

    float-to-double v1, v1

    iget p0, p0, Ljava/awt/font/TextLine$TextLineMetrics;->descent:F

    float-to-double v3, p0

    move-wide v6, v3

    move-wide v4, p1

    move-wide v2, v1

    goto :goto_7

    :cond_9
    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    iget p1, p0, Ljava/awt/font/TextLine$TextLineMetrics;->advance:F

    float-to-double p1, p1

    :goto_6
    iget v1, p0, Ljava/awt/font/TextLine$TextLineMetrics;->descent:F

    float-to-double v1, v1

    iget p0, p0, Ljava/awt/font/TextLine$TextLineMetrics;->ascent:F

    goto :goto_1

    :goto_7
    const/4 p0, 0x2

    double-to-float p1, p1

    aput p1, v0, p0

    const/4 p0, 0x3

    double-to-float p1, v2

    aput p1, v0, p0

    const/4 p0, 0x4

    double-to-float p1, v4

    aput p1, v0, p0

    const/4 p0, 0x5

    double-to-float p1, v6

    aput p1, v0, p0

    return-object v0
.end method

.method private getCaretPath(ILjava/awt/geom/Rectangle2D;Z)[D
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    .line 3
    invoke-direct {v0, v2, v3, v1}, Ljava/awt/font/TextLayout;->getCaretInfo(ILjava/awt/geom/Rectangle2D;[F)[F

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    aget v4, v1, v2

    float-to-double v4, v4

    const/4 v6, 0x1

    .line 5
    aget v1, v1, v6

    float-to-double v7, v1

    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v9

    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v11

    add-double/2addr v11, v9

    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v13

    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v15

    add-double/2addr v15, v13

    .line 10
    iget-boolean v0, v0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    const-wide/16 v17, 0x0

    const-wide v19, -0x3f5774d1eb851eb8L    # -3141.59

    const-wide v21, -0x3ffa666666666666L    # -2.7

    if-eqz v0, :cond_8

    cmpl-double v0, v7, v17

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v27, v9

    move-wide v9, v11

    move-wide/from16 v11, v27

    :goto_0
    mul-double v23, v9, v7

    add-double v23, v4, v23

    mul-double v25, v11, v7

    add-double v4, v4, v25

    if-eqz p3, :cond_7

    cmpg-double v1, v23, v13

    if-gez v1, :cond_4

    cmpg-double v0, v7, v17

    if-lez v0, :cond_3

    cmpg-double v0, v4, v13

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    sub-double v0, v13, v4

    div-double/2addr v0, v7

    add-double/2addr v0, v11

    cmpl-double v3, v4, v15

    move-wide/from16 v19, v0

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move-wide v15, v4

    :goto_1
    move v0, v6

    move-wide/from16 v21, v13

    goto/16 :goto_9

    :cond_3
    :goto_2
    move v0, v2

    move-wide v15, v13

    goto/16 :goto_9

    :cond_4
    cmpl-double v1, v4, v15

    if-lez v1, :cond_7

    if-gez v0, :cond_6

    cmpl-double v0, v23, v15

    if-ltz v0, :cond_5

    goto :goto_3

    :cond_5
    sub-double v0, v15, v11

    div-double/2addr v0, v7

    add-double/2addr v0, v9

    move-wide/from16 v19, v0

    move v0, v6

    move-wide/from16 v21, v15

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v2

    move-wide v13, v15

    goto/16 :goto_9

    :cond_7
    move v0, v2

    move-wide v15, v4

    :goto_4
    move-wide/from16 v13, v23

    goto/16 :goto_9

    :cond_8
    cmpl-double v0, v7, v17

    if-ltz v0, :cond_9

    move-wide/from16 v27, v13

    move-wide v13, v15

    move-wide/from16 v15, v27

    :cond_9
    mul-double v23, v13, v7

    sub-double v23, v4, v23

    mul-double v25, v15, v7

    sub-double v4, v4, v25

    if-eqz p3, :cond_10

    cmpg-double v1, v23, v9

    if-gez v1, :cond_d

    cmpg-double v0, v7, v17

    if-lez v0, :cond_c

    cmpg-double v0, v4, v9

    if-gtz v0, :cond_a

    goto :goto_6

    :cond_a
    sub-double v0, v9, v4

    div-double/2addr v0, v7

    sub-double v0, v15, v0

    cmpl-double v3, v4, v11

    move-wide/from16 v21, v0

    if-lez v3, :cond_b

    goto :goto_5

    :cond_b
    move-wide v11, v4

    :goto_5
    move v0, v6

    move-wide/from16 v19, v9

    goto :goto_9

    :cond_c
    :goto_6
    move v0, v2

    move-wide v11, v9

    goto :goto_9

    :cond_d
    cmpl-double v1, v4, v11

    if-lez v1, :cond_10

    if-gez v0, :cond_f

    cmpl-double v0, v23, v11

    if-ltz v0, :cond_e

    goto :goto_7

    :cond_e
    sub-double v0, v11, v23

    div-double/2addr v0, v7

    sub-double v0, v13, v0

    move-wide/from16 v21, v0

    move v0, v6

    move-wide/from16 v19, v11

    goto :goto_8

    :cond_f
    :goto_7
    move v0, v2

    move-wide v9, v11

    goto :goto_9

    :cond_10
    move v0, v2

    move-wide v11, v4

    :goto_8
    move-wide/from16 v9, v23

    :goto_9
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz v0, :cond_11

    const/4 v0, 0x6

    new-array v0, v0, [D

    aput-wide v9, v0, v2

    aput-wide v13, v0, v6

    aput-wide v19, v0, v3

    aput-wide v21, v0, v1

    aput-wide v11, v0, v4

    const/4 v1, 0x5

    aput-wide v15, v0, v1

    goto :goto_a

    :cond_11
    new-array v0, v4, [D

    aput-wide v9, v0, v2

    aput-wide v13, v0, v6

    aput-wide v11, v0, v3

    aput-wide v15, v0, v1

    :goto_a
    return-object v0
.end method

.method private getCaretPath(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)[D
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/awt/font/TextLayout;->getCaretInfo(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)[F

    move-result-object p0

    const/4 p1, 0x4

    new-array p2, p1, [D

    const/4 v0, 0x2

    .line 2
    aget v1, p0, v0

    float-to-double v1, v1

    const/4 v3, 0x0

    aput-wide v1, p2, v3

    const/4 v1, 0x3

    aget v2, p0, v1

    float-to-double v2, v2

    const/4 v4, 0x1

    aput-wide v2, p2, v4

    aget p1, p0, p1

    float-to-double v2, p1

    aput-wide v2, p2, v0

    const/4 p1, 0x5

    aget p0, p0, p1

    float-to-double p0, p0

    aput-wide p0, p2, v1

    return-object p2
.end method

.method private getNaturalBounds()Ljava/awt/geom/Rectangle2D;
    .locals 1

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget-object v0, p0, Ljava/awt/font/TextLayout;->naturalBounds:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0}, Ljava/awt/font/TextLine;->getItalicBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/font/TextLayout;->naturalBounds:Ljava/awt/geom/Rectangle2D;

    :cond_0
    iget-object p0, p0, Ljava/awt/font/TextLayout;->naturalBounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method private final getStrongHit(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;
    .locals 2

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->getCharIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/awt/font/TextLayout;->getCharacterLevel(I)B

    move-result v0

    invoke-virtual {p2}, Ljava/awt/font/TextHitInfo;->getCharIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/awt/font/TextLayout;->getCharacterLevel(I)B

    move-result p0

    if-ne v0, p0, :cond_1

    invoke-virtual {p2}, Ljava/awt/font/TextHitInfo;->isLeadingEdge()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->isLeadingEdge()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    return-object p1

    :cond_1
    if-ge v0, p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private hitToCaret(Ljava/awt/font/TextHitInfo;)I
    .locals 3

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->getCharIndex()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    iget-object p1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p1}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Ljava/awt/font/TextLayout;->characterCount:I

    :goto_0
    return v1

    :cond_1
    iget v2, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-lt v0, v2, :cond_3

    iget-object p1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p1}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result p1

    if-eqz p1, :cond_2

    iget v1, p0, Ljava/awt/font/TextLayout;->characterCount:I

    :cond_2
    return v1

    :cond_3
    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, v0}, Ljava/awt/font/TextLine;->logicalToVisual(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->isLeadingEdge()Z

    move-result p1

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0, v0}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result p0

    if-eq p1, p0, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    return v1
.end method

.method private leftShape(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/GeneralPath;
    .locals 10

    iget-boolean v0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-array v0, v3, [D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    aput-wide v6, v0, v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    aput-wide v6, v0, v4

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    add-double/2addr v6, v8

    aput-wide v6, v0, v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v3, [D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    aput-wide v6, v0, v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    add-double/2addr v6, v8

    aput-wide v6, v0, v4

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    aput-wide v6, v0, v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    aput-wide v2, v0, v1

    :goto_0
    invoke-direct {p0, v5, p1, v4}, Ljava/awt/font/TextLayout;->getCaretPath(ILjava/awt/geom/Rectangle2D;Z)[D

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/awt/font/TextLayout;->boundingShape([D[D)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    return-object p0
.end method

.method private paragraphInit(BLsun/font/CoreMetrics;Ljava/util/Map;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Lsun/font/CoreMetrics;",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;[C)V"
        }
    .end annotation

    iput-byte p1, p0, Ljava/awt/font/TextLayout;->baseline:B

    iget-object p2, p2, Lsun/font/CoreMetrics;->baselineOffsets:[F

    invoke-static {p2, p1}, Ljava/awt/font/TextLine;->getNormalizedOffsets([FB)[F

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/TextLayout;->baselineOffsets:[F

    invoke-static {p3}, Lsun/font/AttributeValues;->getJustification(Ljava/util/Map;)F

    move-result p1

    iput p1, p0, Ljava/awt/font/TextLayout;->justifyRatio:F

    invoke-static {p3}, Lsun/font/AttributeValues;->getNumericShaping(Ljava/util/Map;)Ljava/awt/font/NumericShaper;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p4

    const/4 p2, 0x0

    invoke-virtual {p0, p4, p2, p1}, Ljava/awt/font/NumericShaper;->shape([CII)V

    :cond_0
    return-void
.end method

.method private static pathToShape([DZLsun/font/LayoutPathImpl;)Ljava/awt/geom/GeneralPath;
    .locals 5

    new-instance v0, Ljava/awt/geom/GeneralPath;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/awt/geom/GeneralPath;-><init>(II)V

    aget-wide v1, p0, v2

    double-to-float v1, v1

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/Path2D$Float;->moveTo(FF)V

    const/4 v1, 0x2

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-wide v2, p0, v1

    double-to-float v2, v2

    add-int/lit8 v3, v1, 0x1

    aget-wide v3, p0, v3

    double-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/awt/geom/Path2D$Float;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Lsun/font/LayoutPathImpl;->mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/awt/geom/GeneralPath;

    :cond_2
    return-object v0
.end method

.method private rightShape(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/GeneralPath;
    .locals 10

    iget-boolean v0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    new-array v0, v4, [D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    aput-wide v6, v0, v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    add-double/2addr v3, v6

    aput-wide v3, v0, v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    add-double/2addr v3, v6

    aput-wide v3, v0, v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    add-double/2addr v2, v6

    aput-wide v2, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v4, [D

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    add-double/2addr v6, v8

    aput-wide v6, v0, v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    add-double/2addr v3, v6

    aput-wide v3, v0, v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    add-double/2addr v3, v6

    aput-wide v3, v0, v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    aput-wide v2, v0, v1

    :goto_0
    iget v1, p0, Ljava/awt/font/TextLayout;->characterCount:I

    invoke-direct {p0, v1, p1, v5}, Ljava/awt/font/TextLayout;->getCaretPath(ILjava/awt/geom/Rectangle2D;Z)[D

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/awt/font/TextLayout;->boundingShape([D[D)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    return-object p0
.end method

.method private static sameBaselineUpTo(Ljava/awt/Font;[CII)I
    .locals 0

    return p3
.end method

.method private static singleFont([CIILjava/util/Map;)Ljava/awt/Font;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)",
            "Ljava/awt/Font;"
        }
    .end annotation

    sget-object v0, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Font;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    sget-object v2, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Ljava/awt/Font;->getFont(Ljava/util/Map;)Ljava/awt/Font;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/awt/Font;->canDisplayUpTo([CII)I

    move-result p3

    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    return-object v1

    :cond_1
    invoke-static {}, Lsun/font/FontResolver;->getInstance()Lsun/font/FontResolver;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lsun/text/CodePointIterator;->create([CII)Lsun/text/CodePointIterator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/font/FontResolver;->nextFontRunIndex(Lsun/text/CodePointIterator;)I

    move-result v4

    invoke-virtual {v3}, Lsun/text/CodePointIterator;->charIndex()I

    move-result v3

    if-ne v3, p2, :cond_2

    invoke-virtual {v2, v4, p3}, Lsun/font/FontResolver;->getFont(ILjava/util/Map;)Ljava/awt/Font;

    move-result-object v0

    :cond_2
    invoke-static {v0, p0, p1, p2}, Ljava/awt/font/TextLayout;->sameBaselineUpTo(Ljava/awt/Font;[CII)I

    move-result p0

    if-eq p0, p2, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private standardInit(Ljava/text/AttributedCharacterIterator;[CLjava/awt/font/FontRenderContext;)V
    .locals 4

    array-length v0, p2

    iput v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/awt/font/TextLine;->advanceToFirstFont(Ljava/text/AttributedCharacterIterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/awt/font/TextLine;->getFontAtCurrentPos(Ljava/text/AttributedCharacterIterator;)Ljava/awt/Font;

    move-result-object v1

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, p2, v2, v3, p3}, Ljava/awt/Font;->getLineMetrics([CIILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object v1

    invoke-static {v1}, Lsun/font/CoreMetrics;->get(Ljava/awt/font/LineMetrics;)Lsun/font/CoreMetrics;

    move-result-object v1

    iget v2, v1, Lsun/font/CoreMetrics;->baselineIndex:I

    int-to-byte v2, v2

    invoke-direct {p0, v2, v1, v0, p2}, Ljava/awt/font/TextLayout;->paragraphInit(BLsun/font/CoreMetrics;Ljava/util/Map;[C)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/font/GraphicAttribute;

    invoke-static {v1}, Ljava/awt/font/TextLayout;->getBaselineFromGraphic(Ljava/awt/font/GraphicAttribute;)B

    move-result v2

    invoke-static {v1}, Lsun/font/GraphicComponent;->createCoreMetrics(Ljava/awt/font/GraphicAttribute;)Lsun/font/CoreMetrics;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0, p2}, Ljava/awt/font/TextLayout;->paragraphInit(BLsun/font/CoreMetrics;Ljava/util/Map;[C)V

    :goto_0
    iget-object v0, p0, Ljava/awt/font/TextLayout;->baselineOffsets:[F

    invoke-static {p3, p1, p2, v0}, Ljava/awt/font/TextLine;->standardCreateTextLine(Ljava/awt/font/FontRenderContext;Ljava/text/AttributedCharacterIterator;[C[F)Ljava/awt/font/TextLine;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/awt/InternalError;

    invoke-direct {v0, p0}, Ljava/awt/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public draw(Ljava/awt/Graphics2D;FF)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    sget v0, Ljava/awt/font/TextLayout;->dx:F

    sub-float/2addr p2, v0

    sget v0, Ljava/awt/font/TextLayout;->dy:F

    sub-float/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/font/TextLine;->draw(Ljava/awt/Graphics2D;FF)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null Graphics2D passed to TextLayout.draw()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/awt/font/TextLayout;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_1
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    .line 3
    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    iget-object p1, p1, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/awt/font/TextLayout;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/font/TextLayout;

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLayout;->equals(Ljava/awt/font/TextLayout;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAdvance()F
    .locals 0

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget-object p0, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    iget p0, p0, Ljava/awt/font/TextLine$TextLineMetrics;->advance:F

    return p0
.end method

.method public getAscent()F
    .locals 0

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget-object p0, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    iget p0, p0, Ljava/awt/font/TextLine$TextLineMetrics;->ascent:F

    return p0
.end method

.method public getBaseline()B
    .locals 0

    iget-byte p0, p0, Ljava/awt/font/TextLayout;->baseline:B

    return p0
.end method

.method public getBaselineOffsets()[F
    .locals 3

    iget-object p0, p0, Ljava/awt/font/TextLayout;->baselineOffsets:[F

    array-length v0, p0

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getBlackBoxBounds(II)Ljava/awt/Shape;
    .locals 4

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    if-le p1, p2, :cond_0

    move v3, p2

    move p2, p1

    move p1, v3

    :cond_0
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-gt p2, v0, :cond_6

    new-instance v0, Ljava/awt/geom/GeneralPath;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/awt/geom/GeneralPath;-><init>(I)V

    iget v1, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ge p1, v1, :cond_2

    :goto_0
    if-ge p1, p2, :cond_2

    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, p1}, Ljava/awt/font/TextLine;->getCharBounds(I)Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    sget p1, Ljava/awt/font/TextLayout;->dx:F

    const/4 p2, 0x0

    cmpl-float v1, p1, p2

    if-nez v1, :cond_3

    sget v1, Ljava/awt/font/TextLayout;->dy:F

    cmpl-float p2, v1, p2

    if-eqz p2, :cond_4

    :cond_3
    float-to-double p1, p1

    sget v1, Ljava/awt/font/TextLayout;->dy:F

    float-to-double v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/awt/geom/GeneralPath;

    :cond_4
    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getLayoutPath()Lsun/font/LayoutPathImpl;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v0}, Lsun/font/LayoutPathImpl;->mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/awt/geom/GeneralPath;

    :cond_5
    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid range passed to TextLayout.getBlackBoxBounds()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 10

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget-object v0, p0, Ljava/awt/font/TextLayout;->boundsRect:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_2

    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0}, Ljava/awt/font/TextLine;->getVisualBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    sget v1, Ljava/awt/font/TextLayout;->dx:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    sget v1, Ljava/awt/font/TextLayout;->dy:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    sget v3, Ljava/awt/font/TextLayout;->dx:F

    float-to-double v3, v3

    sub-double v2, v1, v3

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    sget v1, Ljava/awt/font/TextLayout;->dy:F

    float-to-double v6, v1

    sub-double/2addr v4, v6

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    :cond_1
    iput-object v0, p0, Ljava/awt/font/TextLayout;->boundsRect:Ljava/awt/geom/Rectangle2D;

    :cond_2
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Float;-><init>()V

    iget-object p0, p0, Ljava/awt/font/TextLayout;->boundsRect:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0, p0}, Ljava/awt/geom/Rectangle2D;->setRect(Ljava/awt/geom/Rectangle2D;)V

    return-object v0
.end method

.method public getCaretInfo(Ljava/awt/font/TextHitInfo;)[F
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->getNaturalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/awt/font/TextLayout;->getCaretInfo(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)[F

    move-result-object p0

    return-object p0
.end method

.method public getCaretInfo(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)[F
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    .line 31
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextLayout;->getCaretInfoTestInternal(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)[F

    move-result-object p0

    return-object p0
.end method

.method public getCaretShape(Ljava/awt/font/TextHitInfo;)Ljava/awt/Shape;
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->getNaturalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/awt/font/TextLayout;->getCaretShape(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getCaretShape(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)Ljava/awt/Shape;
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    .line 2
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextLayout;->getCaretPath(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)[D

    move-result-object p1

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getLayoutPath()Lsun/font/LayoutPathImpl;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p2, p0}, Ljava/awt/font/TextLayout;->pathToShape([DZLsun/font/LayoutPathImpl;)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null Rectangle2D passed to TextLayout.getCaret()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCaretShapes(I)[Ljava/awt/Shape;
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->getNaturalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    sget-object v1, Ljava/awt/font/TextLayout;->DEFAULT_CARET_POLICY:Ljava/awt/font/TextLayout$CaretPolicy;

    invoke-virtual {p0, p1, v0, v1}, Ljava/awt/font/TextLayout;->getCaretShapes(ILjava/awt/geom/Rectangle2D;Ljava/awt/font/TextLayout$CaretPolicy;)[Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getCaretShapes(ILjava/awt/geom/Rectangle2D;)[Ljava/awt/Shape;
    .locals 1

    .line 15
    sget-object v0, Ljava/awt/font/TextLayout;->DEFAULT_CARET_POLICY:Ljava/awt/font/TextLayout$CaretPolicy;

    invoke-virtual {p0, p1, p2, v0}, Ljava/awt/font/TextLayout;->getCaretShapes(ILjava/awt/geom/Rectangle2D;Ljava/awt/font/TextLayout$CaretPolicy;)[Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getCaretShapes(ILjava/awt/geom/Rectangle2D;Ljava/awt/font/TextLayout$CaretPolicy;)[Ljava/awt/Shape;
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    if-ltz p1, :cond_4

    .line 2
    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-gt p1, v0, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/awt/Shape;

    .line 3
    invoke-static {p1}, Ljava/awt/font/TextHitInfo;->afterOffset(I)Ljava/awt/font/TextHitInfo;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result v1

    .line 5
    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v2}, Ljava/awt/font/TextLine;->getLayoutPath()Lsun/font/LayoutPathImpl;

    move-result-object v2

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextLayout;->getCaretPath(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)[D

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Ljava/awt/font/TextLayout;->pathToShape([DZLsun/font/LayoutPathImpl;)Ljava/awt/geom/GeneralPath;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->getOtherHit()Ljava/awt/font/TextHitInfo;

    move-result-object v5

    .line 8
    invoke-direct {p0, v5}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result v6

    if-ne v1, v6, :cond_0

    aput-object v3, v0, v4

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, v5, p2}, Ljava/awt/font/TextLayout;->getCaretPath(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)[D

    move-result-object p2

    invoke-static {p2, v4, v2}, Ljava/awt/font/TextLayout;->pathToShape([DZLsun/font/LayoutPathImpl;)Ljava/awt/geom/GeneralPath;

    move-result-object p2

    .line 10
    invoke-virtual {p3, p1, v5, p0}, Ljava/awt/font/TextLayout$CaretPolicy;->getStrongCaret(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextLayout;)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Ljava/awt/font/TextHitInfo;->equals(Ljava/awt/font/TextHitInfo;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    aput-object v3, v0, v4

    aput-object p2, v0, p1

    goto :goto_0

    :cond_1
    aput-object p2, v0, v4

    aput-object v3, v0, p1

    :goto_0
    return-object v0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null CaretPolicy passed to TextLayout.getCaretShapes()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null Rectangle2D passed to TextLayout.getCaretShapes()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offset out of bounds in TextLayout.getCaretShapes()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCharacterCount()I
    .locals 0

    iget p0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    return p0
.end method

.method public getCharacterLevel(I)B
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_2

    iget v1, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-gt p1, v1, :cond_2

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    if-eq p1, v0, :cond_1

    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->getCharLevel(I)B

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Index is out of range in getCharacterLevel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDescent()F
    .locals 0

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget-object p0, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    iget p0, p0, Ljava/awt/font/TextLine$TextLineMetrics;->descent:F

    return p0
.end method

.method public getJustifiedLayout(F)Ljava/awt/font/TextLayout;
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_3

    iget v0, p0, Ljava/awt/font/TextLayout;->justifyRatio:F

    const v1, -0x3da86666    # -53.9f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/awt/font/TextLine;->isCharWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    iget v3, p0, Ljava/awt/font/TextLayout;->justifyRatio:F

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4, v0}, Ljava/awt/font/TextLine;->getJustifiedLine(FFII)Ljava/awt/font/TextLine;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/awt/font/TextLayout;

    iget-byte v2, p0, Ljava/awt/font/TextLayout;->baseline:B

    iget-object p0, p0, Ljava/awt/font/TextLayout;->baselineOffsets:[F

    invoke-direct {v0, p1, v2, p0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/awt/font/TextLine;B[FF)V

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Can\'t justify again."

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "justificationWidth <= 0 passed to TextLayout.getJustifiedLayout()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLayoutPath()Ljava/awt/font/LayoutPath;
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getLayoutPath()Lsun/font/LayoutPathImpl;

    move-result-object p0

    return-object p0
.end method

.method public getLeading()F
    .locals 0

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget-object p0, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    iget p0, p0, Ljava/awt/font/TextLine$TextLineMetrics;->leading:F

    return p0
.end method

.method public getLogicalHighlightShape(II)Ljava/awt/Shape;
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->getNaturalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/awt/font/TextLayout;->getLogicalHighlightShape(IILjava/awt/geom/Rectangle2D;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getLogicalHighlightShape(IILjava/awt/geom/Rectangle2D;)Ljava/awt/Shape;
    .locals 10

    if-eqz p3, :cond_f

    .line 1
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    if-le p1, p2, :cond_0

    move v9, p2

    move p2, p1

    move p1, v9

    :cond_0
    if-ltz p1, :cond_e

    .line 2
    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-gt p2, v0, :cond_e

    .line 3
    new-instance v0, Ljava/awt/geom/GeneralPath;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/geom/GeneralPath;-><init>(I)V

    const/16 v2, 0xa

    new-array v3, v2, [I

    const/4 v4, 0x1

    if-ge p1, p2, :cond_5

    move v6, p1

    move v5, v1

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 4
    invoke-static {v6}, Ljava/awt/font/TextHitInfo;->leading(I)Ljava/awt/font/TextHitInfo;

    move-result-object v8

    invoke-direct {p0, v8}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result v8

    aput v8, v3, v5

    .line 5
    iget-object v5, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v5, v6}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result v5

    :cond_2
    add-int/2addr v6, v4

    if-ge v6, p2, :cond_3

    .line 6
    iget-object v8, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v8, v6}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result v8

    if-eq v8, v5, :cond_2

    :cond_3
    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v8, v6, -0x1

    .line 7
    invoke-static {v8}, Ljava/awt/font/TextHitInfo;->trailing(I)Ljava/awt/font/TextHitInfo;

    move-result-object v8

    invoke-direct {p0, v8}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result v8

    aput v8, v3, v7

    .line 8
    array-length v7, v3

    if-ne v5, v7, :cond_4

    .line 9
    array-length v7, v3

    add-int/2addr v7, v2

    new-array v7, v7, [I

    .line 10
    invoke-static {v3, v1, v7, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    :cond_4
    if-lt v6, p2, :cond_1

    goto :goto_0

    .line 11
    :cond_5
    invoke-static {p1}, Ljava/awt/font/TextHitInfo;->leading(I)Ljava/awt/font/TextHitInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result v2

    aput v2, v3, v4

    aput v2, v3, v1

    const/4 v5, 0x2

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_6

    .line 12
    aget v4, v3, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, v3, v6

    invoke-direct {p0, v4, v6, p3}, Ljava/awt/font/TextLayout;->caretBoundingShape(IILjava/awt/geom/Rectangle2D;)Ljava/awt/geom/GeneralPath;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_6
    if-eq p1, p2, :cond_c

    .line 13
    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v2}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v2}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne p2, v2, :cond_9

    .line 14
    :cond_8
    invoke-direct {p0, p3}, Ljava/awt/font/TextLayout;->leftShape(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/GeneralPath;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/awt/geom/Path2D;->getBounds()Ljava/awt/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    .line 17
    :cond_9
    iget-object v2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v2}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-eq p2, v2, :cond_b

    :cond_a
    iget-object p2, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    .line 18
    invoke-virtual {p2}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result p2

    if-nez p2, :cond_c

    if-nez p1, :cond_c

    .line 19
    :cond_b
    invoke-direct {p0, p3}, Ljava/awt/font/TextLayout;->rightShape(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/GeneralPath;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/awt/geom/Path2D;->getBounds()Ljava/awt/Rectangle;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    .line 21
    invoke-virtual {v0, p1, v1}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    .line 22
    :cond_c
    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getLayoutPath()Lsun/font/LayoutPathImpl;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 23
    invoke-virtual {p0, v0}, Lsun/font/LayoutPathImpl;->mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/awt/geom/GeneralPath;

    :cond_d
    return-object v0

    .line 24
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Range is invalid in TextLayout.getLogicalHighlightShape()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null Rectangle2D passed to TextLayout.getLogicalHighlightShape()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLogicalRangesForVisualSelection(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;)[I
    .locals 5

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    invoke-direct {p0, p2}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    new-array v0, v0, [Z

    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result p1

    invoke-direct {p0, p2}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result p2

    if-le p1, p2, :cond_0

    move v4, p2

    move p2, p1

    move p1, v4

    :cond_0
    if-ge p1, p2, :cond_1

    :goto_0
    if-ge p1, p2, :cond_1

    iget-object v1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1, p1}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move p2, p1

    move v1, p2

    move v2, v1

    :goto_1
    iget v3, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ge p2, v3, :cond_3

    aget-boolean v3, v0, p2

    if-eq v3, v2, :cond_2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    mul-int/lit8 v1, v1, 0x2

    new-array p2, v1, [I

    move v1, p1

    move v2, v1

    :goto_2
    iget v3, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ge p1, v3, :cond_5

    aget-boolean v3, v0, p1

    if-eq v3, v1, :cond_4

    add-int/lit8 v3, v2, 0x1

    aput p1, p2, v2

    xor-int/lit8 v1, v1, 0x1

    move v2, v3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    aput v3, p2, v2

    :cond_6
    return-object p2
.end method

.method public getNextLeftHit(I)Ljava/awt/font/TextHitInfo;
    .locals 1

    .line 14
    sget-object v0, Ljava/awt/font/TextLayout;->DEFAULT_CARET_POLICY:Ljava/awt/font/TextLayout$CaretPolicy;

    invoke-virtual {p0, p1, v0}, Ljava/awt/font/TextLayout;->getNextLeftHit(ILjava/awt/font/TextLayout$CaretPolicy;)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNextLeftHit(ILjava/awt/font/TextLayout$CaretPolicy;)Ljava/awt/font/TextHitInfo;
    .locals 1

    if-eqz p2, :cond_2

    if-ltz p1, :cond_1

    .line 6
    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-gt p1, v0, :cond_1

    .line 7
    invoke-static {p1}, Ljava/awt/font/TextHitInfo;->afterOffset(I)Ljava/awt/font/TextHitInfo;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->getOtherHit()Ljava/awt/font/TextHitInfo;

    move-result-object v0

    .line 9
    invoke-virtual {p2, p1, v0, p0}, Ljava/awt/font/TextLayout$CaretPolicy;->getStrongCaret(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextLayout;)Ljava/awt/font/TextHitInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLayout;->getNextLeftHit(Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Ljava/awt/font/TextLayout;->getVisualOtherHit(Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;

    move-result-object v0

    .line 11
    invoke-virtual {p2, v0, p1, p0}, Ljava/awt/font/TextLayout$CaretPolicy;->getStrongCaret(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextLayout;)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offset out of bounds in TextLayout.getNextLeftHit()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null CaretPolicy passed to TextLayout.getNextLeftHit()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNextLeftHit(Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    .line 2
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    .line 3
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 4
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->caretIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->caretToHit(I)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNextRightHit(I)Ljava/awt/font/TextHitInfo;
    .locals 1

    .line 15
    sget-object v0, Ljava/awt/font/TextLayout;->DEFAULT_CARET_POLICY:Ljava/awt/font/TextLayout$CaretPolicy;

    invoke-virtual {p0, p1, v0}, Ljava/awt/font/TextLayout;->getNextRightHit(ILjava/awt/font/TextLayout$CaretPolicy;)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNextRightHit(ILjava/awt/font/TextLayout$CaretPolicy;)Ljava/awt/font/TextHitInfo;
    .locals 1

    if-ltz p1, :cond_2

    .line 7
    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-gt p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 8
    invoke-static {p1}, Ljava/awt/font/TextHitInfo;->afterOffset(I)Ljava/awt/font/TextHitInfo;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->getOtherHit()Ljava/awt/font/TextHitInfo;

    move-result-object v0

    .line 10
    invoke-virtual {p2, p1, v0, p0}, Ljava/awt/font/TextLayout$CaretPolicy;->getStrongCaret(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextLayout;)Ljava/awt/font/TextHitInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLayout;->getNextRightHit(Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Ljava/awt/font/TextLayout;->getVisualOtherHit(Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;

    move-result-object v0

    .line 12
    invoke-virtual {p2, v0, p1, p0}, Ljava/awt/font/TextLayout$CaretPolicy;->getStrongCaret(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextLayout;)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null CaretPolicy passed to TextLayout.getNextRightHit()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offset out of bounds in TextLayout.getNextRightHit()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNextRightHit(Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    .line 2
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    .line 3
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result p1

    .line 4
    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->caretIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->caretToHit(I)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0
.end method

.method public getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;
    .locals 1

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0, p1}, Ljava/awt/font/TextLine;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object p1

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getLayoutPath()Lsun/font/LayoutPathImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lsun/font/LayoutPathImpl;->mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/font/TextLine;->getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getTextLineForTesting()Ljava/awt/font/TextLine;
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    return-object p0
.end method

.method public getVisibleAdvance()F
    .locals 0

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget p0, p0, Ljava/awt/font/TextLayout;->visibleAdvance:F

    return p0
.end method

.method public getVisualHighlightShape(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;)Ljava/awt/Shape;
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->getNaturalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/awt/font/TextLayout;->getVisualHighlightShape(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getVisualHighlightShape(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Rectangle2D;)Ljava/awt/Shape;
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    .line 2
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    .line 3
    invoke-direct {p0, p2}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    if-eqz p3, :cond_5

    .line 4
    new-instance v0, Ljava/awt/geom/GeneralPath;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/geom/GeneralPath;-><init>(I)V

    .line 5
    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result p1

    .line 6
    invoke-direct {p0, p2}, Ljava/awt/font/TextLayout;->hitToCaret(Ljava/awt/font/TextHitInfo;)I

    move-result p2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/TextLayout;->caretBoundingShape(IILjava/awt/geom/Rectangle2D;)Ljava/awt/geom/GeneralPath;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 8
    :cond_0
    invoke-direct {p0, p3}, Ljava/awt/font/TextLayout;->leftShape(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/GeneralPath;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/awt/geom/Path2D;->getBounds()Ljava/awt/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    .line 11
    :cond_1
    iget v2, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-eq p1, v2, :cond_2

    if-ne p2, v2, :cond_3

    .line 12
    :cond_2
    invoke-direct {p0, p3}, Ljava/awt/font/TextLayout;->rightShape(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/GeneralPath;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/awt/geom/Path2D;->getBounds()Ljava/awt/Rectangle;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 14
    invoke-virtual {v0, p1, v1}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    .line 15
    :cond_3
    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getLayoutPath()Lsun/font/LayoutPathImpl;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 16
    invoke-virtual {p0, v0}, Lsun/font/LayoutPathImpl;->mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/awt/geom/GeneralPath;

    :cond_4
    return-object v0

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null Rectangle2D passed to TextLayout.getVisualHighlightShape()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVisualOtherHit(Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;
    .locals 6

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->getCharIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    iget v4, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4, v0}, Ljava/awt/font/TextLine;->logicalToVisual(I)I

    move-result v4

    iget-object v5, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v5, v0}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result v0

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->isLeadingEdge()Z

    move-result p1

    if-ne v0, p1, :cond_1

    add-int/2addr v4, v3

    move p1, v1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v2

    move p1, v2

    :goto_0
    if-le v4, v3, :cond_2

    iget v0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0, v4}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result v0

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0, v0}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result p0

    if-ne p1, p0, :cond_a

    move v1, v2

    goto :goto_6

    :cond_2
    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result v0

    if-ne p1, v0, :cond_3

    iget v3, p0, Ljava/awt/font/TextLayout;->characterCount:I

    :cond_3
    iget p0, p0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ne v3, p0, :cond_4

    move v1, v2

    :cond_4
    move v0, v3

    goto :goto_6

    :cond_5
    :goto_1
    iget-object p1, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p1}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result p1

    if-ne v0, v3, :cond_6

    move v4, v2

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_2
    if-ne p1, v4, :cond_7

    move p1, v1

    goto :goto_3

    :cond_7
    iget p1, p0, Ljava/awt/font/TextLayout;->characterCount:I

    sub-int/2addr p1, v2

    :goto_3
    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4, p1}, Ljava/awt/font/TextLine;->visualToLogical(I)I

    move-result p1

    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result v4

    if-ne v0, v3, :cond_8

    move v1, v2

    :cond_8
    if-ne v4, v1, :cond_9

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result p0

    :goto_4
    move v1, p0

    goto :goto_5

    :cond_9
    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result p0

    xor-int/2addr p0, v2

    goto :goto_4

    :goto_5
    move v0, p1

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    invoke-static {v0}, Ljava/awt/font/TextHitInfo;->leading(I)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    goto :goto_7

    :cond_b
    invoke-static {v0}, Ljava/awt/font/TextHitInfo;->trailing(I)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    :goto_7
    return-object p0
.end method

.method public handleJustify(F)V
    .locals 0

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/awt/font/TextLayout;->hashCodeCache:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget-object v0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v0}, Ljava/awt/font/TextLine;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/awt/font/TextLayout;->hashCodeCache:I

    :cond_0
    iget p0, p0, Ljava/awt/font/TextLayout;->hashCodeCache:I

    return p0
.end method

.method public hitTestChar(FF)Ljava/awt/font/TextHitInfo;
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->getNaturalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/awt/font/TextLayout;->hitTestChar(FFLjava/awt/geom/Rectangle2D;)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0
.end method

.method public hitTestChar(FFLjava/awt/geom/Rectangle2D;)Ljava/awt/font/TextHitInfo;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v1}, Ljava/awt/font/TextLine;->getLayoutPath()Lsun/font/LayoutPathImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Ljava/awt/geom/Point2D$Float;

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v2, v3, v4}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    .line 3
    invoke-virtual {v1, v2, v2}, Ljava/awt/font/LayoutPath;->pointToPath(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Z

    .line 4
    iget v1, v2, Ljava/awt/geom/Point2D$Float;->x:F

    .line 5
    iget v2, v2, Ljava/awt/geom/Point2D$Float;->y:F

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    move/from16 v4, p2

    move v1, v3

    move v2, v4

    .line 6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/font/TextLayout;->isVertical()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    float-to-double v6, v2

    .line 7
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v8

    cmpg-double v3, v6, v8

    if-gez v3, :cond_1

    .line 8
    invoke-static {v5}, Ljava/awt/font/TextHitInfo;->leading(I)Ljava/awt/font/TextHitInfo;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v8

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_6

    .line 10
    iget v0, v0, Ljava/awt/font/TextLayout;->characterCount:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/awt/font/TextHitInfo;->trailing(I)Ljava/awt/font/TextHitInfo;

    move-result-object v0

    return-object v0

    :cond_2
    float-to-double v6, v1

    .line 11
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v8

    cmpg-double v3, v6, v8

    if-gez v3, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Ljava/awt/font/TextLayout;->isLeftToRight()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v5}, Ljava/awt/font/TextHitInfo;->leading(I)Ljava/awt/font/TextHitInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget v0, v0, Ljava/awt/font/TextLayout;->characterCount:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/awt/font/TextHitInfo;->trailing(I)Ljava/awt/font/TextHitInfo;

    move-result-object v0

    :goto_1
    return-object v0

    .line 13
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v8

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_6

    .line 14
    invoke-virtual/range {p0 .. p0}, Ljava/awt/font/TextLayout;->isLeftToRight()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v0, v0, Ljava/awt/font/TextLayout;->characterCount:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/awt/font/TextHitInfo;->trailing(I)Ljava/awt/font/TextHitInfo;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {v5}, Ljava/awt/font/TextHitInfo;->leading(I)Ljava/awt/font/TextHitInfo;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_6
    const/4 v6, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v9, 0x0

    move v4, v5

    move v15, v4

    move v10, v6

    move v11, v10

    move-wide v12, v7

    move-object v14, v9

    const/4 v5, -0x1

    move v7, v11

    move v8, v7

    move v9, v8

    .line 15
    :goto_3
    iget v3, v0, Ljava/awt/font/TextLayout;->characterCount:I

    if-ge v15, v3, :cond_d

    .line 16
    iget-object v3, v0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v3, v15}, Ljava/awt/font/TextLine;->caretAtOffsetIsValid(I)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_7

    :cond_7
    const/4 v3, -0x1

    if-ne v5, v3, :cond_8

    move v5, v15

    .line 17
    :cond_8
    iget-object v3, v0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v3, v15}, Ljava/awt/font/TextLine;->getCoreMetricsAt(I)Lsun/font/CoreMetrics;

    move-result-object v3

    const/high16 v16, 0x40000000    # 2.0f

    if-eq v3, v14, :cond_b

    .line 18
    iget v9, v3, Lsun/font/CoreMetrics;->baselineIndex:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    .line 19
    iget-object v9, v0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v9}, Ljava/awt/font/TextLine;->getMetrics()Ljava/awt/font/TextLine$TextLineMetrics;

    move-result-object v9

    iget v9, v9, Ljava/awt/font/TextLine$TextLineMetrics;->ascent:F

    iget v10, v3, Lsun/font/CoreMetrics;->ascent:F

    sub-float/2addr v9, v10

    neg-float v9, v9

    iget v10, v3, Lsun/font/CoreMetrics;->ssOffset:F

    :goto_4
    add-float/2addr v9, v10

    goto :goto_5

    :cond_9
    const/4 v10, -0x2

    if-ne v9, v10, :cond_a

    .line 20
    iget-object v9, v0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v9}, Ljava/awt/font/TextLine;->getMetrics()Ljava/awt/font/TextLine$TextLineMetrics;

    move-result-object v9

    iget v9, v9, Ljava/awt/font/TextLine$TextLineMetrics;->descent:F

    iget v10, v3, Lsun/font/CoreMetrics;->descent:F

    sub-float/2addr v9, v10

    iget v10, v3, Lsun/font/CoreMetrics;->ssOffset:F

    goto :goto_4

    .line 21
    :cond_a
    iget-object v9, v0, Ljava/awt/font/TextLayout;->baselineOffsets:[F

    invoke-virtual {v3, v9}, Lsun/font/CoreMetrics;->effectiveBaselineOffset([F)F

    move-result v9

    iget v10, v3, Lsun/font/CoreMetrics;->ssOffset:F

    goto :goto_4

    .line 22
    :goto_5
    iget v10, v3, Lsun/font/CoreMetrics;->descent:F

    iget v11, v3, Lsun/font/CoreMetrics;->ascent:F

    sub-float/2addr v10, v11

    div-float v10, v10, v16

    sub-float/2addr v10, v9

    .line 23
    iget v11, v3, Lsun/font/CoreMetrics;->italicAngle:F

    mul-float/2addr v11, v10

    add-float/2addr v9, v10

    sub-float v10, v9, v2

    mul-float/2addr v10, v10

    move-object v14, v3

    move/from16 v17, v5

    move/from16 v20, v11

    move v11, v10

    move/from16 v10, v20

    goto :goto_6

    :cond_b
    move/from16 v17, v5

    .line 24
    :goto_6
    iget-object v5, v0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v5, v15}, Ljava/awt/font/TextLine;->getCharXPosition(I)F

    move-result v5

    move/from16 v18, v9

    .line 25
    iget-object v9, v0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v9, v15}, Ljava/awt/font/TextLine;->getCharAdvance(I)F

    move-result v9

    div-float v9, v9, v16

    sub-float/2addr v9, v10

    add-float/2addr v5, v9

    sub-float v9, v5, v1

    const/high16 v16, 0x40800000    # 4.0f

    mul-float v16, v16, v9

    mul-float v16, v16, v9

    add-float v9, v16, v11

    move/from16 v16, v10

    float-to-double v9, v9

    .line 26
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    cmpg-double v19, v9, v12

    if-gez v19, :cond_c

    .line 27
    iget v3, v3, Lsun/font/CoreMetrics;->italicAngle:F

    move v8, v3

    move v6, v5

    move-wide v12, v9

    move v4, v15

    move/from16 v10, v16

    move/from16 v7, v18

    move v9, v7

    const/4 v5, -0x1

    goto :goto_7

    :cond_c
    move/from16 v10, v16

    move/from16 v5, v17

    move/from16 v9, v18

    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    :cond_d
    sub-float/2addr v2, v7

    mul-float/2addr v2, v8

    sub-float/2addr v6, v2

    cmpg-float v1, v1, v6

    if-gez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 28
    :goto_8
    iget-object v2, v0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v2, v4}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result v2

    if-ne v2, v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :goto_9
    const/4 v2, -0x1

    if-ne v5, v2, :cond_10

    .line 29
    iget v5, v0, Ljava/awt/font/TextLayout;->characterCount:I

    :cond_10
    if-eqz v1, :cond_11

    .line 30
    invoke-static {v4}, Ljava/awt/font/TextHitInfo;->leading(I)Ljava/awt/font/TextHitInfo;

    move-result-object v0

    goto :goto_a

    :cond_11
    const/4 v0, 0x1

    sub-int/2addr v5, v0

    .line 31
    invoke-static {v5}, Ljava/awt/font/TextHitInfo;->trailing(I)Ljava/awt/font/TextHitInfo;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public hitToPoint(Ljava/awt/font/TextHitInfo;Ljava/awt/geom/Point2D;)V
    .locals 9

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_5

    :cond_0
    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    invoke-direct {p0, p1}, Ljava/awt/font/TextLayout;->checkTextHit(Ljava/awt/font/TextHitInfo;)V

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->getCharIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/font/TextHitInfo;->isLeadingEdge()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4}, Ljava/awt/font/TextLine;->characterCount()I

    move-result v4

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v3, v0}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result v3

    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4, v0, p1}, Ljava/awt/font/TextLine;->getCharLinePosition(IZ)F

    move-result v4

    iget-object v5, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v5, v0}, Ljava/awt/font/TextLine;->getCharYPosition(I)F

    move-result v0

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v4, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {v4}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result v4

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    const/4 v3, 0x0

    if-ne v4, v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Ljava/awt/font/TextLayout;->lineMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    iget v0, v0, Ljava/awt/font/TextLine$TextLineMetrics;->advance:F

    :goto_2
    move v8, v4

    move v4, v0

    move v0, v3

    move v3, v8

    :goto_3
    float-to-double v4, v4

    float-to-double v6, v0

    invoke-virtual {p2, v4, v5, v6, v7}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getLayoutPath()Lsun/font/LayoutPathImpl;

    move-result-object p0

    if-eqz p0, :cond_6

    if-eq v3, p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-virtual {p0, p2, v1, p2}, Ljava/awt/font/LayoutPath;->pathToPoint(Ljava/awt/geom/Point2D;ZLjava/awt/geom/Point2D;)V

    :cond_6
    return-void

    :cond_7
    :goto_5
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_8

    const-string p1, "hit"

    goto :goto_6

    :cond_8
    const-string p1, "point"

    :goto_6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isLeftToRight()Z
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->isDirectionLTR()Z

    move-result p0

    return p0
.end method

.method public isVertical()Z
    .locals 0

    iget-boolean p0, p0, Ljava/awt/font/TextLayout;->isVerticalLine:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Ljava/awt/font/TextLayout;->ensureCache()V

    iget-object p0, p0, Ljava/awt/font/TextLayout;->textLine:Ljava/awt/font/TextLine;

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
