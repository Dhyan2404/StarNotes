.class Lsun/font/ExtendedTextSourceLabel;
.super Lsun/font/ExtendedTextLabel;
.source "SourceFile"

# interfaces
.implements Lsun/font/Decoration$Label;


# static fields
.field private static final advx:I = 0x2

.field private static final advy:I = 0x3

.field private static final numvals:I = 0x8

.field private static final posx:I = 0x0

.field private static final posy:I = 0x1

.field private static final vish:I = 0x7

.field private static final visw:I = 0x6

.field private static final visx:I = 0x4

.field private static final visy:I = 0x5


# instance fields
.field ab:Ljava/awt/geom/Rectangle2D;

.field private baseTX:Ljava/awt/geom/AffineTransform;

.field charinfo:[F

.field private cm:Lsun/font/CoreMetrics;

.field private decorator:Lsun/font/Decoration;

.field private font:Ljava/awt/Font;

.field gv:Lsun/font/StandardGlyphVector;

.field ib:Ljava/awt/geom/Rectangle2D;

.field lb:Ljava/awt/geom/Rectangle2D;

.field source:Lsun/font/TextSource;

.field vb:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>(Lsun/font/TextSource;Lsun/font/Decoration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/font/ExtendedTextLabel;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    .line 3
    iput-object p2, p0, Lsun/font/ExtendedTextSourceLabel;->decorator:Lsun/font/Decoration;

    .line 4
    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->finishInit()V

    return-void
.end method

.method public constructor <init>(Lsun/font/TextSource;Lsun/font/ExtendedTextSourceLabel;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lsun/font/ExtendedTextLabel;-><init>()V

    .line 6
    iput-object p1, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    .line 7
    iget-object p1, p2, Lsun/font/ExtendedTextSourceLabel;->decorator:Lsun/font/Decoration;

    iput-object p1, p0, Lsun/font/ExtendedTextSourceLabel;->decorator:Lsun/font/Decoration;

    .line 8
    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->finishInit()V

    return-void
.end method

.method private finishInit()V
    .locals 5

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getFont()Ljava/awt/Font;

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->font:Ljava/awt/Font;

    invoke-virtual {v0}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsun/font/AttributeValues;->getBaselineTransform(Ljava/util/Map;)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    iput-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->baseTX:Ljava/awt/geom/AffineTransform;

    if-nez v1, :cond_0

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getCoreMetrics()Lsun/font/CoreMetrics;

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->cm:Lsun/font/CoreMetrics;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lsun/font/AttributeValues;->getCharTransform(Ljava/util/Map;)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    :cond_1
    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->font:Ljava/awt/Font;

    invoke-virtual {v1, v0}, Ljava/awt/Font;->deriveFont(Ljava/awt/geom/AffineTransform;)Ljava/awt/Font;

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->font:Ljava/awt/Font;

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v1}, Lsun/font/TextSource;->getChars()[C

    move-result-object v1

    iget-object v2, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v2}, Lsun/font/TextSource;->getStart()I

    move-result v2

    iget-object v3, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v3}, Lsun/font/TextSource;->getStart()I

    move-result v3

    iget-object v4, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v4}, Lsun/font/TextSource;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v4}, Lsun/font/TextSource;->getFRC()Ljava/awt/font/FontRenderContext;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/Font;->getLineMetrics([CIILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object v0

    invoke-static {v0}, Lsun/font/CoreMetrics;->get(Ljava/awt/font/LineMetrics;)Lsun/font/CoreMetrics;

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->cm:Lsun/font/CoreMetrics;

    :goto_0
    return-void
.end method

.method private final getCharinfo()[F
    .locals 1

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->charinfo:[F

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/ExtendedTextSourceLabel;->createCharinfo()[F

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->charinfo:[F

    :cond_0
    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->charinfo:[F

    return-object p0
.end method

.method private final getGV()Lsun/font/StandardGlyphVector;
    .locals 1

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->gv:Lsun/font/StandardGlyphVector;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/ExtendedTextSourceLabel;->createGV()Lsun/font/StandardGlyphVector;

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->gv:Lsun/font/StandardGlyphVector;

    :cond_0
    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->gv:Lsun/font/StandardGlyphVector;

    return-object p0
.end method

.method private validate(I)V
    .locals 3

    const-string v0, "index "

    if-ltz p1, :cond_1

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v1}, Lsun/font/TextSource;->getLength()I

    move-result v1

    if-ge p1, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {p0}, Lsun/font/TextSource;->getLength()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public applyJustificationDeltas([FI[Z)Lsun/font/TextLineComponent;
    .locals 11

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getCharinfo()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    aput-boolean v1, p3, v1

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getGV()Lsun/font/StandardGlyphVector;

    move-result-object p3

    invoke-virtual {p3}, Lsun/font/StandardGlyphVector;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsun/font/StandardGlyphVector;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lsun/font/StandardGlyphVector;->getGlyphPositions([F)[F

    move-result-object v2

    invoke-virtual {p3}, Lsun/font/StandardGlyphVector;->getNumGlyphs()I

    move-result v3

    iget-object v4, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v4}, Lsun/font/TextSource;->getChars()[C

    move-result-object v4

    iget-object v5, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v5}, Lsun/font/TextSource;->getStart()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lsun/font/ExtendedTextSourceLabel;->v2l(I)I

    move-result v7

    add-int/2addr v7, v5

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_0

    mul-int/lit8 v7, v1, 0x2

    aget v8, v2, v7

    add-float/2addr v8, v6

    aput v8, v2, v7

    add-int/2addr v7, p2

    aget v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    aget v7, p1, v7

    add-float/2addr v8, v7

    mul-int/lit8 v7, v1, 0x8

    add-int/lit8 v9, v7, 0x0

    aget v10, v0, v9

    add-float/2addr v10, v6

    aput v10, v0, v9

    add-int/lit8 v9, v7, 0x4

    aget v10, v0, v9

    add-float/2addr v10, v6

    aput v10, v0, v9

    add-int/lit8 v7, v7, 0x2

    aget v9, v0, v7

    add-float/2addr v9, v8

    aput v9, v0, v7

    add-float/2addr v6, v8

    goto :goto_1

    :cond_0
    mul-int/lit8 v7, v1, 0x2

    add-int v8, p2, v7

    aget v9, p1, v8

    add-float/2addr v6, v9

    aget v9, v2, v7

    add-float/2addr v9, v6

    aput v9, v2, v7

    mul-int/lit8 v7, v1, 0x8

    add-int/lit8 v9, v7, 0x0

    aget v10, v0, v9

    add-float/2addr v10, v6

    aput v10, v0, v9

    add-int/lit8 v7, v7, 0x4

    aget v9, v0, v7

    add-float/2addr v9, v6

    aput v9, v0, v7

    add-int/lit8 v8, v8, 0x1

    aget v7, p1, v8

    add-float/2addr v6, v7

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v3, v3, 0x2

    aget p1, v2, v3

    add-float/2addr p1, v6

    aput p1, v2, v3

    invoke-virtual {p3, v2}, Lsun/font/StandardGlyphVector;->setGlyphPositions([F)V

    new-instance p1, Lsun/font/ExtendedTextSourceLabel;

    iget-object p2, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->decorator:Lsun/font/Decoration;

    invoke-direct {p1, p2, p0}, Lsun/font/ExtendedTextSourceLabel;-><init>(Lsun/font/TextSource;Lsun/font/Decoration;)V

    iput-object p3, p1, Lsun/font/ExtendedTextSourceLabel;->gv:Lsun/font/StandardGlyphVector;

    iput-object v0, p1, Lsun/font/ExtendedTextSourceLabel;->charinfo:[F

    return-object p1
.end method

.method public caretAtOffsetIsValid(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v1}, Lsun/font/TextSource;->getLength()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v1}, Lsun/font/TextSource;->getChars()[C

    move-result-object v1

    iget-object v2, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v2}, Lsun/font/TextSource;->getStart()I

    move-result v2

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa

    if-eq v1, v2, :cond_5

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->l2v(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getCharinfo()[F

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    array-length v2, p0

    if-lt p1, v2, :cond_2

    goto :goto_1

    :cond_2
    aget p0, p0, p1

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    return v0
.end method

.method public createAlignBounds()Ljava/awt/geom/Rectangle2D;
    .locals 8

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getCharinfo()[F

    move-result-object v0

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->cm:Lsun/font/CoreMetrics;

    iget v2, v1, Lsun/font/CoreMetrics;->ascent:F

    neg-float v3, v2

    iget v1, v1, Lsun/font/CoreMetrics;->descent:F

    add-float/2addr v2, v1

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->charinfo:[F

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {p0}, Lsun/font/TextSource;->getLayoutFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    array-length v5, v0

    add-int/lit8 v5, v5, -0x8

    if-eqz p0, :cond_2

    :goto_1
    if-lez v5, :cond_2

    add-int/lit8 v6, v5, 0x6

    aget v6, v0, v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, -0x8

    goto :goto_1

    :cond_2
    if-ltz v5, :cond_5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_4

    add-int/lit8 v7, v6, 0x2

    aget v7, v0, v7

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_3

    if-nez p0, :cond_4

    add-int/lit8 v7, v6, 0x6

    aget v7, v0, v7

    cmpl-float v7, v7, v4

    if-nez v7, :cond_4

    :cond_3
    add-int/lit8 v6, v6, 0x8

    goto :goto_2

    :cond_4
    add-int/2addr v6, v1

    aget p0, v0, v6

    invoke-static {v4, p0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 p0, v5, 0x0

    aget p0, v0, p0

    add-int/lit8 v5, v5, 0x2

    aget v0, v0, v5

    add-float/2addr p0, v0

    sub-float/2addr p0, v4

    goto :goto_3

    :cond_5
    move p0, v4

    :goto_3
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {v0, v4, v3, p0, v2}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0

    :cond_6
    :goto_4
    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {p0, v4, v3, v4, v2}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object p0
.end method

.method public createCharinfo()[F
    .locals 29

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lsun/font/ExtendedTextSourceLabel;->getGV()Lsun/font/StandardGlyphVector;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Lsun/font/StandardGlyphVector;->getGlyphInfo()[F

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v5, v1, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v3

    :goto_0
    invoke-virtual {v2}, Lsun/font/StandardGlyphVector;->getNumGlyphs()I

    move-result v4

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4, v3}, Lsun/font/StandardGlyphVector;->getGlyphCharIndices(II[I)[I

    move-result-object v2

    aget v3, v2, v5

    iget-object v1, v1, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v1}, Lsun/font/TextSource;->getLayoutFlags()I

    move-result v1

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    const/16 v6, 0x8

    if-nez v1, :cond_2

    add-int/lit8 v4, v4, -0x1

    aget v7, v2, v4

    array-length v7, v0

    sub-int/2addr v7, v6

    array-length v8, v0

    sub-int/2addr v8, v6

    const/4 v6, -0x1

    const/4 v9, -0x8

    move v10, v8

    move v8, v7

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v3

    move v8, v5

    move v10, v8

    move v9, v6

    move v6, v4

    move v4, v10

    :goto_2
    const/4 v11, 0x0

    move v12, v5

    move v13, v12

    move v14, v11

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_3
    if-eq v4, v6, :cond_10

    aget v20, v2, v4

    add-int/2addr v4, v7

    add-int/2addr v10, v9

    move/from16 v21, v5

    move/from16 v22, v21

    move/from16 v3, v20

    move v5, v3

    :goto_4
    if-eq v4, v6, :cond_8

    add-int/lit8 v23, v10, 0x2

    aget v23, v0, v23

    cmpl-float v24, v23, v11

    if-eqz v24, :cond_4

    if-ne v3, v13, :cond_4

    aget v11, v2, v4

    if-le v11, v5, :cond_4

    sub-int v11, v5, v3

    move/from16 v25, v6

    move/from16 v6, v21

    if-le v11, v6, :cond_3

    goto :goto_5

    :cond_3
    move/from16 v27, v1

    move/from16 v26, v12

    goto/16 :goto_9

    :cond_4
    move/from16 v25, v6

    move/from16 v6, v21

    :goto_5
    if-nez v22, :cond_5

    sub-int v11, v10, v9

    add-int/lit8 v14, v11, 0x0

    aget v14, v0, v14

    add-int/lit8 v15, v11, 0x2

    aget v15, v0, v15

    add-float/2addr v15, v14

    add-int/lit8 v16, v11, 0x4

    aget v16, v0, v16

    add-int/lit8 v17, v11, 0x5

    aget v17, v0, v17

    add-int/lit8 v18, v11, 0x6

    aget v18, v0, v18

    add-float v18, v16, v18

    add-int/lit8 v11, v11, 0x7

    aget v11, v0, v11

    add-float v19, v17, v11

    move/from16 v27, v1

    move/from16 v26, v12

    move/from16 v21, v13

    move/from16 v11, v16

    move/from16 v13, v17

    move/from16 v12, v18

    move/from16 v1, v19

    const/16 v22, 0x1

    goto :goto_6

    :cond_5
    move/from16 v27, v1

    move/from16 v26, v12

    move/from16 v21, v13

    move/from16 v11, v16

    move/from16 v13, v17

    move/from16 v12, v18

    move/from16 v1, v19

    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/16 v16, 0x0

    cmpl-float v17, v23, v16

    if-eqz v17, :cond_6

    add-int/lit8 v16, v10, 0x0

    move/from16 v17, v6

    aget v6, v0, v16

    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v14

    add-float v6, v6, v23

    invoke-static {v15, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move v15, v6

    goto :goto_7

    :cond_6
    move/from16 v17, v6

    :goto_7
    add-int/lit8 v6, v10, 0x6

    aget v6, v0, v6

    const/16 v16, 0x0

    cmpl-float v18, v6, v16

    if-eqz v18, :cond_7

    add-int/lit8 v16, v10, 0x4

    move/from16 v18, v14

    aget v14, v0, v16

    add-int/lit8 v16, v10, 0x5

    move/from16 v19, v15

    aget v15, v0, v16

    invoke-static {v11, v14}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v13

    add-float/2addr v14, v6

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v12, v10, 0x7

    aget v12, v0, v12

    add-float/2addr v15, v12

    invoke-static {v1, v15}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move/from16 v16, v11

    goto :goto_8

    :cond_7
    move/from16 v18, v14

    move/from16 v19, v15

    move/from16 v16, v11

    move v6, v12

    :goto_8
    aget v11, v2, v4

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v11, v2, v4

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v7

    add-int/2addr v10, v9

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v12, v26

    const/4 v11, 0x0

    move/from16 v19, v1

    move/from16 v18, v6

    move/from16 v6, v25

    move/from16 v1, v27

    move/from16 v28, v17

    move/from16 v17, v13

    move/from16 v13, v21

    move/from16 v21, v28

    goto/16 :goto_4

    :cond_8
    move/from16 v27, v1

    move/from16 v25, v6

    move/from16 v26, v12

    move/from16 v6, v21

    :goto_9
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v1, v8, 0x1

    const/4 v11, 0x0

    aput v11, v0, v1

    add-int/lit8 v1, v8, 0x3

    aput v11, v0, v1

    if-eqz v22, :cond_e

    add-int/lit8 v1, v8, 0x0

    aput v14, v0, v1

    add-int/lit8 v1, v8, 0x2

    sub-float v11, v15, v14

    aput v11, v0, v1

    add-int/lit8 v1, v8, 0x4

    aput v16, v0, v1

    add-int/lit8 v1, v8, 0x5

    aput v17, v0, v1

    add-int/lit8 v1, v8, 0x6

    sub-float v11, v18, v16

    aput v11, v0, v1

    add-int/lit8 v1, v8, 0x7

    sub-float v12, v19, v17

    aput v12, v0, v1

    sub-int v1, v5, v3

    if-ge v1, v6, :cond_9

    const/16 v26, 0x1

    :cond_9
    if-ge v3, v5, :cond_d

    if-nez v27, :cond_a

    move v15, v14

    :cond_a
    div-int/lit8 v1, v8, 0x8

    :goto_a
    if-ge v3, v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v8, v9

    if-ltz v8, :cond_b

    array-length v1, v0

    :cond_b
    add-int/lit8 v1, v8, 0x0

    aput v15, v0, v1

    add-int/lit8 v1, v8, 0x1

    const/4 v6, 0x0

    aput v6, v0, v1

    add-int/lit8 v1, v8, 0x2

    aput v6, v0, v1

    add-int/lit8 v1, v8, 0x3

    aput v6, v0, v1

    add-int/lit8 v1, v8, 0x4

    aput v16, v0, v1

    add-int/lit8 v1, v8, 0x5

    aput v17, v0, v1

    add-int/lit8 v1, v8, 0x6

    aput v11, v0, v1

    add-int/lit8 v1, v8, 0x7

    aput v12, v0, v1

    goto :goto_a

    :cond_c
    const/4 v6, 0x0

    move/from16 v18, v11

    move/from16 v19, v12

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    if-eqz v26, :cond_f

    sub-int v1, v10, v9

    add-int/lit8 v3, v8, 0x0

    add-int/lit8 v5, v1, 0x0

    aget v5, v0, v5

    aput v5, v0, v3

    add-int/lit8 v3, v8, 0x2

    add-int/lit8 v5, v1, 0x2

    aget v5, v0, v5

    aput v5, v0, v3

    add-int/lit8 v3, v8, 0x4

    add-int/lit8 v5, v1, 0x4

    aget v5, v0, v5

    aput v5, v0, v3

    add-int/lit8 v3, v8, 0x5

    add-int/lit8 v5, v1, 0x5

    aget v5, v0, v5

    aput v5, v0, v3

    add-int/lit8 v3, v8, 0x6

    add-int/lit8 v5, v1, 0x6

    aget v5, v0, v5

    aput v5, v0, v3

    add-int/lit8 v3, v8, 0x7

    add-int/lit8 v1, v1, 0x7

    aget v1, v0, v1

    aput v1, v0, v3

    :cond_f
    :goto_b
    move/from16 v12, v26

    add-int/2addr v8, v9

    move v11, v6

    move/from16 v6, v25

    move/from16 v1, v27

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_10
    move/from16 v27, v1

    move/from16 v26, v12

    if-eqz v26, :cond_11

    if-nez v27, :cond_11

    sub-int/2addr v8, v9

    array-length v1, v0

    sub-int/2addr v1, v8

    const/4 v2, 0x0

    invoke-static {v0, v8, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    return-object v0
.end method

.method public createGV()Lsun/font/StandardGlyphVector;
    .locals 9

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getFRC()Ljava/awt/font/FontRenderContext;

    move-result-object v3

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getLayoutFlags()I

    move-result v7

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getChars()[C

    move-result-object v4

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getStart()I

    move-result v5

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getLength()I

    move-result v6

    const/4 v0, 0x0

    invoke-static {v0}, Lsun/font/GlyphLayout;->get(Lsun/font/GlyphLayout$LayoutEngineFactory;)Lsun/font/GlyphLayout;

    move-result-object v0

    iget-object v2, p0, Lsun/font/ExtendedTextSourceLabel;->font:Ljava/awt/Font;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lsun/font/GlyphLayout;->layout(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[CIIILsun/font/AndroidGlyphVector;)Lsun/font/AndroidGlyphVector;

    move-result-object v1

    iput-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->gv:Lsun/font/StandardGlyphVector;

    invoke-static {v0}, Lsun/font/GlyphLayout;->done(Lsun/font/GlyphLayout;)V

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->gv:Lsun/font/StandardGlyphVector;

    return-object p0
.end method

.method public createItalicBounds()Ljava/awt/geom/Rectangle2D;
    .locals 6

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->cm:Lsun/font/CoreMetrics;

    iget v0, v0, Lsun/font/CoreMetrics;->italicAngle:F

    invoke-virtual {p0}, Lsun/font/ExtendedTextSourceLabel;->getLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lsun/font/ExtendedTextSourceLabel;->cm:Lsun/font/CoreMetrics;

    iget v3, v3, Lsun/font/CoreMetrics;->ascent:F

    neg-float v3, v3

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v4

    double-to-float v1, v4

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->cm:Lsun/font/CoreMetrics;

    iget v4, p0, Lsun/font/CoreMetrics;->descent:F

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_1

    if-lez v5, :cond_0

    iget p0, p0, Lsun/font/CoreMetrics;->ssOffset:F

    sub-float v5, v4, p0

    mul-float/2addr v5, v0

    sub-float/2addr v2, v5

    sub-float p0, v3, p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lsun/font/CoreMetrics;->ssOffset:F

    sub-float v5, v3, p0

    mul-float/2addr v5, v0

    sub-float/2addr v2, v5

    sub-float p0, v4, p0

    :goto_0
    mul-float/2addr v0, p0

    sub-float/2addr v1, v0

    :cond_1
    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    sub-float/2addr v1, v2

    sub-float/2addr v4, v3

    invoke-direct {p0, v2, v3, v1, v4}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object p0
.end method

.method public createLogicalBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getGV()Lsun/font/StandardGlyphVector;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector;->getLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public draw(Ljava/awt/Graphics2D;FF)V
    .locals 1

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->decorator:Lsun/font/Decoration;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/font/Decoration;->drawTextAndDecorations(Lsun/font/Decoration$Label;Ljava/awt/Graphics2D;FF)V

    return-void
.end method

.method public getAdvance()F
    .locals 2

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/ExtendedTextSourceLabel;->createLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    :cond_0
    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getAdvanceBetween(II)F
    .locals 4

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getCharinfo()[F

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->l2v(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x2

    array-length v3, v0

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    aget v2, v0, v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public getAlignBounds(FF)Ljava/awt/geom/Rectangle2D;
    .locals 5

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/ExtendedTextSourceLabel;->createAlignBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    float-to-double v3, p1

    add-double/2addr v1, v3

    double-to-float p1, v1

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    float-to-double v3, p2

    add-double/2addr v1, v3

    double-to-float p2, v1

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->ab:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-direct {v0, p1, p2, v1, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getBaselineTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->baseTX:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public getCharAdvance(I)F
    .locals 1

    invoke-direct {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->validate(I)V

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getCharinfo()[F

    move-result-object v0

    invoke-virtual {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->l2v(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x2

    if-eqz v0, :cond_1

    array-length p1, v0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    aget p0, v0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCharVisualBounds(IFF)Ljava/awt/geom/Rectangle2D;
    .locals 10

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->decorator:Lsun/font/Decoration;

    invoke-virtual {v0, p0, p1}, Lsun/font/Decoration;->getCharVisualBounds(Lsun/font/Decoration$Label;I)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    if-nez v0, :cond_0

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    float-to-double p1, p2

    add-double v2, v0, p1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide p1

    float-to-double v0, p3

    add-double v4, p1, v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    :cond_1
    return-object p0
.end method

.method public getCharX(I)F
    .locals 1

    invoke-direct {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->validate(I)V

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getCharinfo()[F

    move-result-object v0

    invoke-virtual {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->l2v(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x0

    if-eqz v0, :cond_1

    array-length p1, v0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    aget p0, v0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCharY(I)F
    .locals 1

    invoke-direct {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->validate(I)V

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getCharinfo()[F

    move-result-object v0

    invoke-virtual {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->l2v(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x1

    if-eqz v0, :cond_1

    array-length p1, v0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    aget p0, v0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCoreMetrics()Lsun/font/CoreMetrics;
    .locals 0

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->cm:Lsun/font/CoreMetrics;

    return-object p0
.end method

.method public getItalicBounds(FF)Ljava/awt/geom/Rectangle2D;
    .locals 5

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/ExtendedTextSourceLabel;->createItalicBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    float-to-double v3, p1

    add-double/2addr v1, v3

    double-to-float p1, v1

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    float-to-double v3, p2

    add-double/2addr v1, v3

    double-to-float p2, v1

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->ib:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-direct {v0, p1, p2, v1, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getJustificationInfos([Ljava/awt/font/GlyphJustificationInfo;III)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct/range {p0 .. p0}, Lsun/font/ExtendedTextSourceLabel;->getGV()Lsun/font/StandardGlyphVector;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lsun/font/ExtendedTextSourceLabel;->getCharinfo()[F

    move-result-object v3

    invoke-virtual {v2}, Lsun/font/StandardGlyphVector;->getFont()Ljava/awt/Font;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/Font;->getSize2D()F

    move-result v4

    new-instance v15, Ljava/awt/font/GlyphJustificationInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Ljava/awt/font/GlyphJustificationInfo;-><init>(FZIFFZIFF)V

    new-instance v16, Ljava/awt/font/GlyphJustificationInfo;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/high16 v5, 0x40800000    # 4.0f

    div-float v14, v4, v5

    move-object/from16 v5, v16

    move v6, v4

    move v10, v4

    invoke-direct/range {v5 .. v14}, Ljava/awt/font/GlyphJustificationInfo;-><init>(FZIFFZIFF)V

    new-instance v17, Ljava/awt/font/GlyphJustificationInfo;

    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v14, 0x0

    move-object/from16 v5, v17

    move v9, v4

    invoke-direct/range {v5 .. v14}, Ljava/awt/font/GlyphJustificationInfo;-><init>(FZIFFZIFF)V

    iget-object v4, v0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v4}, Lsun/font/TextSource;->getChars()[C

    move-result-object v4

    iget-object v5, v0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v5}, Lsun/font/TextSource;->getStart()I

    move-result v5

    invoke-virtual {v2}, Lsun/font/StandardGlyphVector;->getNumGlyphs()I

    move-result v2

    iget-object v6, v0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v6}, Lsun/font/TextSource;->getLayoutFlags()I

    move-result v6

    and-int/2addr v6, v7

    const/4 v8, 0x0

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    if-nez p3, :cond_2

    iget-object v6, v0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v6}, Lsun/font/TextSource;->getLength()I

    move-result v6

    if-eq v1, v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    move v1, v8

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    move v6, v1

    move/from16 v1, p3

    goto :goto_2

    :cond_3
    sub-int v1, v2, v1

    sub-int v6, v2, p3

    :goto_2
    if-ge v8, v2, :cond_b

    if-lt v8, v1, :cond_a

    if-ge v8, v6, :cond_a

    mul-int/lit8 v7, v8, 0x8

    add-int/lit8 v7, v7, 0x2

    aget v7, v3, v7

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v8}, Lsun/font/ExtendedTextSourceLabel;->v2l(I)I

    move-result v7

    add-int/2addr v7, v5

    aget-char v7, v4, v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object/from16 v7, v16

    goto :goto_4

    :cond_5
    const/16 v9, 0x4e00

    if-lt v7, v9, :cond_6

    const v9, 0xa000

    if-lt v7, v9, :cond_8

    :cond_6
    const v9, 0xac00

    if-lt v7, v9, :cond_7

    const v9, 0xd7b0

    if-lt v7, v9, :cond_8

    :cond_7
    const v9, 0xf900

    if-lt v7, v9, :cond_9

    const v9, 0xfb00

    if-ge v7, v9, :cond_9

    :cond_8
    move-object/from16 v7, v17

    goto :goto_4

    :cond_9
    :goto_3
    move-object v7, v15

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :goto_4
    add-int v9, p2, v8

    aput-object v7, p1, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method

.method public getLineBreakIndex(IF)I
    .locals 4

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getCharinfo()[F

    move-result-object v0

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v1}, Lsun/font/TextSource;->getLength()I

    move-result v1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->l2v(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x2

    array-length v3, v0

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    aget v2, v0, v2

    sub-float/2addr p2, v2

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public getLogicalBounds()Ljava/awt/geom/Rectangle2D;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lsun/font/ExtendedTextSourceLabel;->getLogicalBounds(FF)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getLogicalBounds(FF)Ljava/awt/geom/Rectangle2D;
    .locals 5

    .line 2
    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lsun/font/ExtendedTextSourceLabel;->createLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    .line 4
    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    float-to-double v3, p1

    add-double/2addr v1, v3

    double-to-float p1, v1

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    .line 5
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    float-to-double v3, p2

    add-double/2addr v1, v3

    double-to-float p2, v1

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    .line 6
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->lb:Ljava/awt/geom/Rectangle2D;

    .line 7
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-direct {v0, p1, p2, v1, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getNumCharacters()I
    .locals 0

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {p0}, Lsun/font/TextSource;->getLength()I

    move-result p0

    return p0
.end method

.method public getNumJustificationInfos()I
    .locals 0

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getGV()Lsun/font/StandardGlyphVector;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector;->getNumGlyphs()I

    move-result p0

    return p0
.end method

.method public getOutline(FF)Ljava/awt/Shape;
    .locals 1

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->decorator:Lsun/font/Decoration;

    invoke-virtual {v0, p0, p1, p2}, Lsun/font/Decoration;->getOutline(Lsun/font/Decoration$Label;FF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;
    .locals 0

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getGV()Lsun/font/StandardGlyphVector;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lsun/font/StandardGlyphVector;->getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getSubset(III)Lsun/font/TextLineComponent;
    .locals 2

    new-instance v0, Lsun/font/ExtendedTextSourceLabel;

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    sub-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, p3}, Lsun/font/TextSource;->getSubSource(III)Lsun/font/TextSource;

    move-result-object p1

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->decorator:Lsun/font/Decoration;

    invoke-direct {v0, p1, p0}, Lsun/font/ExtendedTextSourceLabel;-><init>(Lsun/font/TextSource;Lsun/font/Decoration;)V

    return-object v0
.end method

.method public getVisualBounds(FF)Ljava/awt/geom/Rectangle2D;
    .locals 5

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->decorator:Lsun/font/Decoration;

    invoke-virtual {v0, p0}, Lsun/font/Decoration;->getVisualBounds(Lsun/font/Decoration$Label;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    float-to-double v3, p1

    add-double/2addr v1, v3

    double-to-float p1, v1

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    float-to-double v3, p2

    add-double/2addr v1, v3

    double-to-float p2, v1

    iget-object v1, p0, Lsun/font/ExtendedTextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->vb:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-direct {v0, p1, p2, v1, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public handleDraw(Ljava/awt/Graphics2D;FF)V
    .locals 0

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getGV()Lsun/font/StandardGlyphVector;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Ljava/awt/Graphics2D;->drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V

    return-void
.end method

.method public handleGetCharVisualBounds(I)Ljava/awt/geom/Rectangle2D;
    .locals 4

    invoke-direct {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->validate(I)V

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getCharinfo()[F

    move-result-object v0

    invoke-virtual {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->l2v(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    if-eqz v0, :cond_1

    add-int/lit8 p1, p0, 0x7

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/awt/geom/Rectangle2D$Float;

    add-int/lit8 v2, p0, 0x4

    aget v2, v0, v2

    add-int/lit8 v3, p0, 0x5

    aget v3, v0, v3

    add-int/lit8 p0, p0, 0x6

    aget p0, v0, p0

    aget p1, v0, p1

    invoke-direct {v1, v2, v3, p0, p1}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v1

    :cond_1
    :goto_0
    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>()V

    return-object p0
.end method

.method public handleGetOutline(FF)Ljava/awt/Shape;
    .locals 0

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getGV()Lsun/font/StandardGlyphVector;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lsun/font/StandardGlyphVector;->getOutline(FF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public handleGetVisualBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-direct {p0}, Lsun/font/ExtendedTextSourceLabel;->getGV()Lsun/font/StandardGlyphVector;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/StandardGlyphVector;->getVisualBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public isSimple()Z
    .locals 2

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->decorator:Lsun/font/Decoration;

    invoke-static {}, Lsun/font/Decoration;->getPlainDecoration()Lsun/font/Decoration;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->baseTX:Ljava/awt/geom/AffineTransform;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l2v(I)I
    .locals 1

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getLayoutFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {p0}, Lsun/font/TextSource;->getLength()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int p1, p0, p1

    :goto_0
    return p1
.end method

.method public logicalToVisual(I)I
    .locals 0

    invoke-direct {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->validate(I)V

    invoke-virtual {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->l2v(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/font/TextSource;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v2l(I)I
    .locals 1

    iget-object v0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {v0}, Lsun/font/TextSource;->getLayoutFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lsun/font/ExtendedTextSourceLabel;->source:Lsun/font/TextSource;

    invoke-virtual {p0}, Lsun/font/TextSource;->getLength()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int p1, p0, p1

    :goto_0
    return p1
.end method

.method public visualToLogical(I)I
    .locals 0

    invoke-direct {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->validate(I)V

    invoke-virtual {p0, p1}, Lsun/font/ExtendedTextSourceLabel;->v2l(I)I

    move-result p0

    return p0
.end method
