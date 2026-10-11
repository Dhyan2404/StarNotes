.class public final Ljava/awt/font/TextMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static EST_LINES:F = 2.1f

.field private static wantStats:Z


# instance fields
.field private charIter:Ljava/awt/font/CharArrayIterator;

.field private collectStats:Z

.field private fBaseline:B

.field private fBaselineOffsets:[F

.field private fBidi:Ljava/text/Bidi;

.field private fChars:[C

.field private fComponentLimit:I

.field private fComponentStart:I

.field private fComponents:[Lsun/font/TextLineComponent;

.field private fFrc:Ljava/awt/font/FontRenderContext;

.field private fIsDirectionLTR:Z

.field private fJustifyRatio:F

.field private fLevels:[B

.field private fLineBreak:Ljava/text/BreakIterator;

.field private fParagraph:Ljava/awt/font/StyledParagraph;

.field private fStart:I

.field private formattedChars:I

.field private haveLayoutWindow:Z

.field layoutCharCount:I

.field layoutCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fLineBreak:Ljava/text/BreakIterator;

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->charIter:Ljava/awt/font/CharArrayIterator;

    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/font/TextMeasurer;->layoutCount:I

    iput v0, p0, Ljava/awt/font/TextMeasurer;->layoutCharCount:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ljava/awt/font/TextMeasurer;->fJustifyRatio:F

    iput v0, p0, Ljava/awt/font/TextMeasurer;->formattedChars:I

    iput-boolean v0, p0, Ljava/awt/font/TextMeasurer;->collectStats:Z

    iput-object p2, p0, Ljava/awt/font/TextMeasurer;->fFrc:Ljava/awt/font/FontRenderContext;

    invoke-direct {p0, p1}, Ljava/awt/font/TextMeasurer;->initAll(Ljava/text/AttributedCharacterIterator;)V

    return-void
.end method

.method private calcLineBreak(IF)I
    .locals 8

    iget v0, p0, Ljava/awt/font/TextMeasurer;->fComponentStart:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-interface {v2}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v2

    add-int/2addr v2, v0

    if-le v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    move v2, p1

    move v3, p2

    :goto_2
    iget-object v4, p0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;

    array-length v5, v4

    if-ge v1, v5, :cond_3

    aget-object v4, v4, v1

    invoke-interface {v4}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v5

    sub-int/2addr v2, v0

    invoke-interface {v4, v2, v3}, Lsun/font/TextLineComponent;->getLineBreakIndex(IF)I

    move-result v6

    if-ne v6, v5, :cond_2

    iget-object v7, p0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;

    array-length v7, v7

    if-ge v1, v7, :cond_2

    invoke-interface {v4, v2, v6}, Lsun/font/TextLineComponent;->getAdvanceBetween(II)F

    move-result v2

    sub-float/2addr v3, v2

    add-int v2, v0, v5

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_2

    :cond_2
    add-int/2addr v0, v6

    return v0

    :cond_3
    iget v0, p0, Ljava/awt/font/TextMeasurer;->fComponentLimit:I

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    array-length v2, v1

    if-ge v0, v2, :cond_4

    array-length v0, v1

    invoke-direct {p0, p1, v0}, Ljava/awt/font/TextMeasurer;->generateComponents(II)V

    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextMeasurer;->calcLineBreak(IF)I

    move-result p0

    return p0

    :cond_4
    array-length p0, v1

    return p0
.end method

.method private ensureComponents(II)V
    .locals 1

    iget v0, p0, Ljava/awt/font/TextMeasurer;->fComponentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/awt/font/TextMeasurer;->fComponentLimit:I

    if-le p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextMeasurer;->generateComponents(II)V

    :cond_1
    return-void
.end method

.method private generateComponents(II)V
    .locals 8

    iget-boolean v0, p0, Ljava/awt/font/TextMeasurer;->collectStats:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/awt/font/TextMeasurer;->formattedChars:I

    sub-int v1, p2, p1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/awt/font/TextMeasurer;->formattedChars:I

    :cond_0
    new-instance v7, Lsun/font/TextLabelFactory;

    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fFrc:Ljava/awt/font/FontRenderContext;

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    iget-object v2, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Lsun/font/TextLabelFactory;-><init>(Ljava/awt/font/FontRenderContext;[CLjava/text/Bidi;I)V

    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lsun/font/BidiUtils;->getLevels(Ljava/text/Bidi;)[B

    move-result-object v0

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fLevels:[B

    invoke-static {v0}, Lsun/font/BidiUtils;->createVisualToLogicalMap([B)[I

    move-result-object v0

    invoke-static {v0}, Lsun/font/BidiUtils;->createInverseMap([I)[I

    move-result-object v0

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    invoke-virtual {v1}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v1

    iput-boolean v1, p0, Ljava/awt/font/TextMeasurer;->fIsDirectionLTR:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fLevels:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/awt/font/TextMeasurer;->fIsDirectionLTR:Z

    :goto_0
    move-object v5, v0

    :try_start_0
    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fParagraph:Ljava/awt/font/StyledParagraph;

    iget-object v2, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    iget-object v6, p0, Ljava/awt/font/TextMeasurer;->fLevels:[B

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v7}, Ljava/awt/font/TextLine;->getComponents(Ljava/awt/font/StyledParagraph;[CII[I[BLsun/font/TextLabelFactory;)[Lsun/font/TextLineComponent;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iput p1, p0, Ljava/awt/font/TextMeasurer;->fComponentStart:I

    iput p2, p0, Ljava/awt/font/TextMeasurer;->fComponentLimit:I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startingAt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; endingAt="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fComponentLimit="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/font/TextMeasurer;->fComponentLimit:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v0
.end method

.method private initAll(Ljava/text/AttributedCharacterIterator;)V
    .locals 5

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    iput v0, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget v1, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    sub-int/2addr v0, v1

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const v3, 0xffff

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    add-int/lit8 v4, v2, 0x1

    aput-char v0, v3, v2

    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    new-instance v0, Ljava/text/Bidi;

    invoke-direct {v0, p1}, Ljava/text/Bidi;-><init>(Ljava/text/AttributedCharacterIterator;)V

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    :cond_1
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsun/font/AttributeValues;->getNumericShaping(Ljava/util/Map;)Ljava/awt/font/NumericShaper;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    array-length v4, v3

    invoke-virtual {v2, v3, v1, v4}, Ljava/awt/font/NumericShaper;->shape([CII)V

    :cond_2
    new-instance v2, Ljava/awt/font/StyledParagraph;

    iget-object v3, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    invoke-direct {v2, p1, v3}, Ljava/awt/font/StyledParagraph;-><init>(Ljava/text/AttributedCharacterIterator;[C)V

    iput-object v2, p0, Ljava/awt/font/TextMeasurer;->fParagraph:Ljava/awt/font/StyledParagraph;

    invoke-static {v0}, Lsun/font/AttributeValues;->getJustification(Ljava/util/Map;)F

    move-result v2

    iput v2, p0, Ljava/awt/font/TextMeasurer;->fJustifyRatio:F

    invoke-static {p1}, Ljava/awt/font/TextLine;->advanceToFirstFont(Ljava/text/AttributedCharacterIterator;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Ljava/awt/font/TextLine;->getFontAtCurrentPos(Ljava/text/AttributedCharacterIterator;)Ljava/awt/Font;

    move-result-object v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ljava/awt/font/TextMeasurer;->fFrc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/awt/Font;->getLineMetrics([CIILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/font/LineMetrics;->getBaselineIndex()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljava/awt/font/TextMeasurer;->fBaseline:B

    invoke-virtual {p1}, Ljava/awt/font/LineMetrics;->getBaselineOffsets()[F

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/TextMeasurer;->fBaselineOffsets:[F

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/font/GraphicAttribute;

    invoke-static {p1}, Ljava/awt/font/TextLayout;->getBaselineFromGraphic(Ljava/awt/font/GraphicAttribute;)B

    move-result p1

    iput-byte p1, p0, Ljava/awt/font/TextMeasurer;->fBaseline:B

    new-instance p1, Ljava/util/Hashtable;

    const/4 v0, 0x5

    const v2, 0x3f666666    # 0.9f

    invoke-direct {p1, v0, v2}, Ljava/util/Hashtable;-><init>(IF)V

    new-instance v0, Ljava/awt/Font;

    invoke-direct {v0, p1}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    const-string p1, " "

    iget-object v2, p0, Ljava/awt/font/TextMeasurer;->fFrc:Ljava/awt/font/FontRenderContext;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v3, v2}, Ljava/awt/Font;->getLineMetrics(Ljava/lang/String;IILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/font/LineMetrics;->getBaselineOffsets()[F

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/TextMeasurer;->fBaselineOffsets:[F

    :goto_1
    iget-object p1, p0, Ljava/awt/font/TextMeasurer;->fBaselineOffsets:[F

    iget-byte v0, p0, Ljava/awt/font/TextMeasurer;->fBaseline:B

    invoke-static {p1, v0}, Ljava/awt/font/TextLine;->getNormalizedOffsets([FB)[F

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/TextMeasurer;->fBaselineOffsets:[F

    invoke-direct {p0}, Ljava/awt/font/TextMeasurer;->invalidateComponents()V

    return-void
.end method

.method private invalidateComponents()V
    .locals 1

    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    array-length v0, v0

    iput v0, p0, Ljava/awt/font/TextMeasurer;->fComponentLimit:I

    iput v0, p0, Ljava/awt/font/TextMeasurer;->fComponentStart:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/awt/font/TextMeasurer;->haveLayoutWindow:Z

    return-void
.end method

.method private makeComponentsOnRange(II)[Lsun/font/TextLineComponent;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p2}, Ljava/awt/font/TextMeasurer;->trailingCdWhitespaceStart(II)I

    move-result v3

    iget v4, v0, Ljava/awt/font/TextMeasurer;->fComponentStart:I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;

    array-length v8, v7

    if-ge v6, v8, :cond_1

    aget-object v7, v7, v6

    invoke-interface {v7}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v7

    add-int/2addr v7, v4

    if-le v7, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v7, 0x1

    move v11, v4

    move v10, v5

    move v9, v6

    move v8, v7

    :goto_2
    if-eqz v8, :cond_4

    iget-object v12, v0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;

    aget-object v12, v12, v9

    invoke-interface {v12}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-le v3, v13, :cond_2

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ge v3, v13, :cond_2

    move v10, v7

    :cond_2
    if-lt v12, v2, :cond_3

    move v8, v5

    goto :goto_3

    :cond_3
    move v11, v12

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    sub-int/2addr v9, v6

    if-eqz v10, :cond_5

    add-int/lit8 v9, v9, 0x1

    :cond_5
    new-array v8, v9, [Lsun/font/TextLineComponent;

    if-ne v3, v1, :cond_6

    iget-boolean v3, v0, Ljava/awt/font/TextMeasurer;->fIsDirectionLTR:Z

    xor-int/2addr v3, v7

    move v9, v3

    move v3, v2

    goto :goto_4

    :cond_6
    const/4 v9, 0x2

    :goto_4
    if-ge v1, v2, :cond_9

    iget-object v10, v0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;

    aget-object v10, v10, v6

    invoke-interface {v10}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v13, v5, 0x1

    iget-object v14, v0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;

    aget-object v14, v14, v6

    sub-int v15, v11, v4

    sub-int v7, v12, v4

    invoke-interface {v14, v15, v7, v9}, Lsun/font/TextLineComponent;->getSubset(III)Lsun/font/TextLineComponent;

    move-result-object v7

    aput-object v7, v8, v5

    sub-int/2addr v12, v11

    add-int/2addr v1, v12

    if-ne v1, v3, :cond_7

    iget-boolean v3, v0, Ljava/awt/font/TextMeasurer;->fIsDirectionLTR:Z

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    move v9, v3

    move v3, v2

    goto :goto_5

    :cond_7
    const/4 v5, 0x1

    :goto_5
    if-ne v1, v10, :cond_8

    add-int/lit8 v6, v6, 0x1

    move v4, v10

    :cond_8
    move v7, v5

    move v5, v13

    goto :goto_4

    :cond_9
    return-object v8
.end method

.method private makeLayoutWindow(I)V
    .locals 4

    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    array-length v0, v0

    iget v1, p0, Ljava/awt/font/TextMeasurer;->layoutCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    iget-boolean v3, p0, Ljava/awt/font/TextMeasurer;->haveLayoutWindow:Z

    if-nez v3, :cond_0

    iget v0, p0, Ljava/awt/font/TextMeasurer;->layoutCharCount:I

    div-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Ljava/awt/font/TextMeasurer;->EST_LINES:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-gtz p1, :cond_1

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_5

    :cond_1
    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->charIter:Ljava/awt/font/CharArrayIterator;

    if-nez v1, :cond_2

    new-instance v1, Ljava/awt/font/CharArrayIterator;

    iget-object v3, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    invoke-direct {v1, v3}, Ljava/awt/font/CharArrayIterator;-><init>([C)V

    iput-object v1, p0, Ljava/awt/font/TextMeasurer;->charIter:Ljava/awt/font/CharArrayIterator;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    invoke-virtual {v1, v3}, Ljava/awt/font/CharArrayIterator;->reset([C)V

    :goto_0
    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fLineBreak:Ljava/text/BreakIterator;

    if-nez v1, :cond_3

    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object v1

    iput-object v1, p0, Ljava/awt/font/TextMeasurer;->fLineBreak:Ljava/text/BreakIterator;

    :cond_3
    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fLineBreak:Ljava/text/BreakIterator;

    iget-object v3, p0, Ljava/awt/font/TextMeasurer;->charIter:Ljava/awt/font/CharArrayIterator;

    invoke-virtual {v1, v3}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    if-lez p1, :cond_4

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fLineBreak:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fLineBreak:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    :cond_4
    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fLineBreak:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fLineBreak:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    :cond_5
    invoke-direct {p0, p1, v0}, Ljava/awt/font/TextMeasurer;->ensureComponents(II)V

    iput-boolean v2, p0, Ljava/awt/font/TextMeasurer;->haveLayoutWindow:Z

    return-void
.end method

.method private makeTextLineOnRange(II)Ljava/awt/font/TextLine;
    .locals 11

    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    move-result-object v0

    invoke-static {v0}, Lsun/font/BidiUtils;->getLevels(Ljava/text/Bidi;)[B

    move-result-object v0

    invoke-static {v0}, Lsun/font/BidiUtils;->createVisualToLogicalMap([B)[I

    move-result-object v1

    invoke-static {v1}, Lsun/font/BidiUtils;->createInverseMap([I)[I

    move-result-object v1

    move-object v9, v0

    move-object v8, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v8, v0

    move-object v9, v8

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextMeasurer;->makeComponentsOnRange(II)[Lsun/font/TextLineComponent;

    move-result-object v3

    new-instance v0, Ljava/awt/font/TextLine;

    iget-object v2, p0, Ljava/awt/font/TextMeasurer;->fFrc:Ljava/awt/font/FontRenderContext;

    iget-object v4, p0, Ljava/awt/font/TextMeasurer;->fBaselineOffsets:[F

    iget-object v5, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    iget-boolean v10, p0, Ljava/awt/font/TextMeasurer;->fIsDirectionLTR:Z

    move-object v1, v0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v10}, Ljava/awt/font/TextLine;-><init>(Ljava/awt/font/FontRenderContext;[Lsun/font/TextLineComponent;[F[CII[I[BZ)V

    return-object v0
.end method

.method private printStats()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formattedChars: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/font/TextMeasurer;->formattedChars:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/awt/font/TextMeasurer;->collectStats:Z

    return-void
.end method

.method private trailingCdWhitespaceStart(II)I
    .locals 3

    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fLevels:[B

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ljava/awt/font/TextMeasurer;->fIsDirectionLTR:Z

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_2

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fLevels:[B

    aget-byte v1, v1, p2

    rem-int/lit8 v1, v1, 0x2

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    aget-char v1, v1, p2

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_2
    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/font/TextMeasurer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Lsun/font/TextLineComponent;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lsun/font/TextLineComponent;

    iput-object p0, v0, Ljava/awt/font/TextMeasurer;->fComponents:[Lsun/font/TextLineComponent;

    :cond_0
    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0
.end method

.method public deleteChar(Ljava/text/AttributedCharacterIterator;I)V
    .locals 6

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    iput v0, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget v1, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    sub-int v1, v0, v1

    iget-object v2, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1}, Ljava/awt/font/TextMeasurer;->initAll(Ljava/text/AttributedCharacterIterator;)V

    :cond_0
    iget v1, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    sub-int v2, v0, v1

    new-array v2, v2, [C

    sub-int v3, p2, v1

    iget-object v4, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    sub-int v1, p2, v1

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v0, p2

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/Bidi;

    invoke-direct {v0, p1}, Ljava/text/Bidi;-><init>(Ljava/text/AttributedCharacterIterator;)V

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    :cond_1
    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fParagraph:Ljava/awt/font/StyledParagraph;

    invoke-static {p1, v0, p2, v1}, Ljava/awt/font/StyledParagraph;->deleteChar(Ljava/text/AttributedCharacterIterator;[CILjava/awt/font/StyledParagraph;)Ljava/awt/font/StyledParagraph;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/TextMeasurer;->fParagraph:Ljava/awt/font/StyledParagraph;

    invoke-direct {p0}, Ljava/awt/font/TextMeasurer;->invalidateComponents()V

    return-void
.end method

.method public getAdvanceBetween(II)F
    .locals 1

    iget v0, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextMeasurer;->ensureComponents(II)V

    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextMeasurer;->makeTextLineOnRange(II)Ljava/awt/font/TextLine;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getMetrics()Ljava/awt/font/TextLine$TextLineMetrics;

    move-result-object p0

    iget p0, p0, Ljava/awt/font/TextLine$TextLineMetrics;->advance:F

    return p0
.end method

.method public getChars()[C
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    return-object p0
.end method

.method public getLayout(II)Ljava/awt/font/TextLayout;
    .locals 3

    iget v0, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    sub-int v1, p1, v0

    sub-int v0, p2, v0

    invoke-direct {p0, v1, v0}, Ljava/awt/font/TextMeasurer;->ensureComponents(II)V

    invoke-direct {p0, v1, v0}, Ljava/awt/font/TextMeasurer;->makeTextLineOnRange(II)Ljava/awt/font/TextLine;

    move-result-object v1

    iget-object v2, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Ljava/awt/font/TextMeasurer;->layoutCharCount:I

    sub-int/2addr p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Ljava/awt/font/TextMeasurer;->layoutCharCount:I

    iget p1, p0, Ljava/awt/font/TextMeasurer;->layoutCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/awt/font/TextMeasurer;->layoutCount:I

    :cond_0
    new-instance p1, Ljava/awt/font/TextLayout;

    iget-byte p2, p0, Ljava/awt/font/TextMeasurer;->fBaseline:B

    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fBaselineOffsets:[F

    iget p0, p0, Ljava/awt/font/TextMeasurer;->fJustifyRatio:F

    invoke-direct {p1, v1, p2, v0, p0}, Ljava/awt/font/TextLayout;-><init>(Ljava/awt/font/TextLine;B[FF)V

    return-object p1
.end method

.method public getLineBreakIndex(IF)I
    .locals 1

    iget v0, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    sub-int/2addr p1, v0

    iget-boolean v0, p0, Ljava/awt/font/TextMeasurer;->haveLayoutWindow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/awt/font/TextMeasurer;->fComponentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/awt/font/TextMeasurer;->fComponentLimit:I

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/awt/font/TextMeasurer;->makeLayoutWindow(I)V

    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextMeasurer;->calcLineBreak(IF)I

    move-result p1

    iget p0, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    add-int/2addr p1, p0

    return p1
.end method

.method public insertChar(Ljava/text/AttributedCharacterIterator;I)V
    .locals 6

    iget-boolean v0, p0, Ljava/awt/font/TextMeasurer;->collectStats:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/awt/font/TextMeasurer;->printStats()V

    :cond_0
    sget-boolean v0, Ljava/awt/font/TextMeasurer;->wantStats:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ljava/awt/font/TextMeasurer;->collectStats:Z

    :cond_1
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    iput v0, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget v2, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    sub-int v2, v0, v2

    iget-object v3, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    array-length v3, v3

    add-int/2addr v3, v1

    if-eq v2, v3, :cond_2

    invoke-direct {p0, p1}, Ljava/awt/font/TextMeasurer;->initAll(Ljava/text/AttributedCharacterIterator;)V

    :cond_2
    iget v2, p0, Ljava/awt/font/TextMeasurer;->fStart:I

    sub-int v3, v0, v2

    new-array v3, v3, [C

    sub-int v2, p2, v2

    iget-object v4, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    aput-char v4, v3, v2

    iget-object v4, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v0, p2

    sub-int/2addr v0, v1

    invoke-static {v4, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    if-nez v0, :cond_3

    invoke-static {v3, v2, v5}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/text/Bidi;

    invoke-direct {v0, p1}, Ljava/text/Bidi;-><init>(Ljava/text/AttributedCharacterIterator;)V

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/font/TextMeasurer;->fBidi:Ljava/text/Bidi;

    :cond_4
    iget-object v0, p0, Ljava/awt/font/TextMeasurer;->fChars:[C

    iget-object v1, p0, Ljava/awt/font/TextMeasurer;->fParagraph:Ljava/awt/font/StyledParagraph;

    invoke-static {p1, v0, p2, v1}, Ljava/awt/font/StyledParagraph;->insertChar(Ljava/text/AttributedCharacterIterator;[CILjava/awt/font/StyledParagraph;)Ljava/awt/font/StyledParagraph;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/TextMeasurer;->fParagraph:Ljava/awt/font/StyledParagraph;

    invoke-direct {p0}, Ljava/awt/font/TextMeasurer;->invalidateComponents()V

    return-void
.end method
