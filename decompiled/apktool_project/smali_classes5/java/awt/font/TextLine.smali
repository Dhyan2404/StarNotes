.class final Ljava/awt/font/TextLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/font/TextLine$Function;,
        Ljava/awt/font/TextLine$TextLineMetrics;
    }
.end annotation


# static fields
.field private static fgAdvanceF:Ljava/awt/font/TextLine$Function;

.field private static fgPosAdvF:Ljava/awt/font/TextLine$Function;

.field private static fgXPositionF:Ljava/awt/font/TextLine$Function;

.field private static fgYPositionF:Ljava/awt/font/TextLine$Function;


# instance fields
.field private fBaselineOffsets:[F

.field private fCharLevels:[B

.field private fCharLogicalOrder:[I

.field private fCharVisualOrder:[I

.field private fChars:[C

.field private fCharsLimit:I

.field private fCharsStart:I

.field private fComponentVisualOrder:[I

.field private fComponents:[Lsun/font/TextLineComponent;

.field private fIsDirectionLTR:Z

.field private fMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

.field private frc:Ljava/awt/font/FontRenderContext;

.field private isSimple:Z

.field private locs:[F

.field private lp:Lsun/font/LayoutPathImpl;

.field private pixelBounds:Ljava/awt/Rectangle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/awt/font/TextLine$1;

    invoke-direct {v0}, Ljava/awt/font/TextLine$1;-><init>()V

    sput-object v0, Ljava/awt/font/TextLine;->fgPosAdvF:Ljava/awt/font/TextLine$Function;

    new-instance v0, Ljava/awt/font/TextLine$2;

    invoke-direct {v0}, Ljava/awt/font/TextLine$2;-><init>()V

    sput-object v0, Ljava/awt/font/TextLine;->fgAdvanceF:Ljava/awt/font/TextLine$Function;

    new-instance v0, Ljava/awt/font/TextLine$3;

    invoke-direct {v0}, Ljava/awt/font/TextLine$3;-><init>()V

    sput-object v0, Ljava/awt/font/TextLine;->fgXPositionF:Ljava/awt/font/TextLine$Function;

    new-instance v0, Ljava/awt/font/TextLine$4;

    invoke-direct {v0}, Ljava/awt/font/TextLine$4;-><init>()V

    sput-object v0, Ljava/awt/font/TextLine;->fgYPositionF:Ljava/awt/font/TextLine$Function;

    return-void
.end method

.method public constructor <init>(Ljava/awt/font/FontRenderContext;[Lsun/font/TextLineComponent;[F[CII[I[BZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/font/TextLine;->fMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    invoke-static {p2, p7}, Ljava/awt/font/TextLine;->computeComponentOrder([Lsun/font/TextLineComponent;[I)[I

    move-result-object v0

    iput-object p1, p0, Ljava/awt/font/TextLine;->frc:Ljava/awt/font/FontRenderContext;

    iput-object p2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    iput-object p3, p0, Ljava/awt/font/TextLine;->fBaselineOffsets:[F

    iput-object v0, p0, Ljava/awt/font/TextLine;->fComponentVisualOrder:[I

    iput-object p4, p0, Ljava/awt/font/TextLine;->fChars:[C

    iput p5, p0, Ljava/awt/font/TextLine;->fCharsStart:I

    iput p6, p0, Ljava/awt/font/TextLine;->fCharsLimit:I

    iput-object p7, p0, Ljava/awt/font/TextLine;->fCharLogicalOrder:[I

    iput-object p8, p0, Ljava/awt/font/TextLine;->fCharLevels:[B

    iput-boolean p9, p0, Ljava/awt/font/TextLine;->fIsDirectionLTR:Z

    invoke-direct {p0}, Ljava/awt/font/TextLine;->checkCtorArgs()V

    invoke-direct {p0}, Ljava/awt/font/TextLine;->init()V

    return-void
.end method

.method public static synthetic access$100(Ljava/awt/font/TextLine;)[Lsun/font/TextLineComponent;
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    return-object p0
.end method

.method public static synthetic access$200(Ljava/awt/font/TextLine;I)I
    .locals 0

    invoke-direct {p0, p1}, Ljava/awt/font/TextLine;->getComponentVisualIndex(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Ljava/awt/font/TextLine;)[F
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLine;->locs:[F

    return-object p0
.end method

.method public static synthetic access$400(Ljava/awt/font/TextLine;I)F
    .locals 0

    invoke-direct {p0, p1}, Ljava/awt/font/TextLine;->getComponentShift(I)F

    move-result p0

    return p0
.end method

.method public static advanceToFirstFont(Ljava/text/AttributedCharacterIterator;)Z
    .locals 2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    :goto_0
    const v1, 0xffff

    if-eq v0, v1, :cond_1

    sget-object v0, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private applyFunctionAtIndex(ILjava/awt/font/TextLine$Function;)F
    .locals 4

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    invoke-interface {v2}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v2

    add-int/2addr v2, v1

    if-le v2, p1, :cond_0

    sub-int/2addr p1, v1

    invoke-virtual {p2, p0, v0, p1}, Ljava/awt/font/TextLine$Function;->computeFunction(Ljava/awt/font/TextLine;II)F

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "logicalIndex too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative logicalIndex."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkCtorArgs()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v2, v2, v0

    invoke-interface {v2}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/font/TextLine;->characterCount()I

    move-result p0

    if-ne v1, p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid TextLine!  char count is different from sum of char counts of components."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static computeComponentOrder([Lsun/font/TextLineComponent;[I)[I
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget v3, p1, v2

    aput v3, v0, v1

    aget-object v3, p0, v1

    invoke-interface {v3}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lsun/font/BidiUtils;->createContiguousOrder([I)[I

    move-result-object p0

    invoke-static {p0}, Lsun/font/BidiUtils;->createInverseMap([I)[I

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static computePixelBounds(Ljava/awt/image/BufferedImage;)Ljava/awt/Rectangle;
    .locals 14

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    new-array v10, v8, [I

    const/4 v11, -0x1

    move v0, v11

    :goto_0
    add-int/lit8 v12, v0, 0x1

    const/4 v13, 0x0

    if-ge v12, v9, :cond_2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v12

    move v3, v8

    move-object v5, v10

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move v0, v13

    :goto_1
    if-ge v0, v8, :cond_1

    aget v1, v10, v0

    if-eq v1, v11, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v12

    goto :goto_0

    :cond_2
    :goto_2
    new-array v10, v8, [I

    :cond_3
    add-int/2addr v9, v11

    if-le v9, v12, :cond_5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v9

    move v3, v8

    move-object v5, v10

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move v0, v13

    :goto_3
    if-ge v0, v8, :cond_3

    aget v1, v10, v0

    if-eq v1, v11, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move v0, v11

    :cond_6
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_8

    move v1, v12

    :goto_5
    if-ge v1, v9, :cond_6

    invoke-virtual {p0, v0, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v2

    if-eq v2, v11, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    add-int/2addr v8, v11

    if-le v8, v0, :cond_a

    move v1, v12

    :goto_7
    if-ge v1, v9, :cond_8

    invoke-virtual {p0, v8, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v2

    if-eq v2, v11, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v8, v8, 0x1

    new-instance p0, Ljava/awt/Rectangle;

    sub-int/2addr v8, v0

    sub-int/2addr v9, v12

    invoke-direct {p0, v0, v12, v8, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object p0
.end method

.method public static createComponentsOnRun(II[C[I[BLsun/font/TextLabelFactory;Ljava/awt/Font;Lsun/font/CoreMetrics;Ljava/awt/font/FontRenderContext;Lsun/font/Decoration;[Lsun/font/TextLineComponent;I)[Lsun/font/TextLineComponent;
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p10

    move/from16 v4, p11

    :goto_0
    invoke-static {v5, v6, v1, v0}, Ljava/awt/font/TextLine;->firstVisualChunk([I[BII)I

    move-result v7

    move v12, v1

    :cond_0
    if-nez v2, :cond_1

    move-object/from16 v1, p2

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    invoke-virtual {v14, v1, v12, v7, v15}, Ljava/awt/Font;->getLineMetrics([CIILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object v2

    invoke-static {v2}, Lsun/font/CoreMetrics;->get(Ljava/awt/font/LineMetrics;)Lsun/font/CoreMetrics;

    move-result-object v8

    invoke-virtual {v2}, Ljava/awt/font/LineMetrics;->getNumChars()I

    move-result v2

    move-object/from16 v16, v8

    move v8, v2

    move-object/from16 v2, v16

    goto :goto_1

    :cond_1
    move-object/from16 v1, p2

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    sub-int v8, v7, v12

    :goto_1
    add-int v13, v12, v8

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object v10, v2

    move-object/from16 v11, p9

    move/from16 p0, v13

    invoke-virtual/range {v8 .. v13}, Lsun/font/TextLabelFactory;->createExtended(Ljava/awt/Font;Lsun/font/CoreMetrics;Lsun/font/Decoration;II)Lsun/font/ExtendedTextLabel;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    array-length v9, v3

    if-lt v4, v9, :cond_2

    invoke-static {v3}, Ljava/awt/font/TextLine;->expandArray([Lsun/font/TextLineComponent;)[Lsun/font/TextLineComponent;

    move-result-object v3

    :cond_2
    add-int/lit8 v9, v4, -0x1

    aput-object v8, v3, v9

    move/from16 v12, p0

    if-lt v12, v7, :cond_0

    if-lt v12, v0, :cond_3

    return-object v3

    :cond_3
    move v1, v12

    goto :goto_0
.end method

.method public static createLineFromText([CLjava/awt/font/StyledParagraph;Lsun/font/TextLabelFactory;Z[F)Ljava/awt/font/TextLine;
    .locals 11

    array-length v0, p0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lsun/font/TextLabelFactory;->setLineContext(II)V

    invoke-virtual {p2}, Lsun/font/TextLabelFactory;->getLineBidi()Ljava/text/Bidi;

    move-result-object v0

    if-eqz v0, :cond_0

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
    const/4 v3, 0x0

    array-length v4, p0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v8

    move-object v6, v9

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Ljava/awt/font/TextLine;->getComponents(Ljava/awt/font/StyledParagraph;[CII[I[BLsun/font/TextLabelFactory;)[Lsun/font/TextLineComponent;

    move-result-object v3

    new-instance p1, Ljava/awt/font/TextLine;

    invoke-virtual {p2}, Lsun/font/TextLabelFactory;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v2

    const/4 v6, 0x0

    array-length v7, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p0

    move v10, p3

    invoke-direct/range {v1 .. v10}, Ljava/awt/font/TextLine;-><init>(Ljava/awt/font/FontRenderContext;[Lsun/font/TextLineComponent;[F[CII[I[BZ)V

    return-object p1
.end method

.method private static expandArray([Lsun/font/TextLineComponent;)[Lsun/font/TextLineComponent;
    .locals 3

    array-length v0, p0

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [Lsun/font/TextLineComponent;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static fastCreateTextLine(Ljava/awt/font/FontRenderContext;[CLjava/awt/Font;Lsun/font/CoreMetrics;Ljava/util/Map;)Ljava/awt/font/TextLine;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/font/FontRenderContext;",
            "[C",
            "Ljava/awt/Font;",
            "Lsun/font/CoreMetrics;",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)",
            "Ljava/awt/font/TextLine;"
        }
    .end annotation

    move-object/from16 v12, p1

    array-length v0, v12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    if-eqz p4, :cond_4

    invoke-static/range {p4 .. p4}, Lsun/font/AttributeValues;->fromMap(Ljava/util/Map;)Lsun/font/AttributeValues;

    move-result-object v1

    invoke-virtual {v1}, Lsun/font/AttributeValues;->getRunDirection()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Lsun/font/AttributeValues;->getRunDirection()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v13

    :goto_0
    xor-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v7

    move v3, v13

    :goto_1
    invoke-virtual {v1}, Lsun/font/AttributeValues;->getBidiEmbedding()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lsun/font/AttributeValues;->getBidiEmbedding()I

    move-result v3

    int-to-byte v3, v3

    new-array v4, v0, [B

    move v5, v13

    :goto_2
    if-ge v5, v0, :cond_2

    aput-byte v3, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object v9, v1

    move v10, v2

    move v3, v7

    goto :goto_3

    :cond_3
    move-object v9, v1

    move v10, v2

    move-object v4, v8

    goto :goto_3

    :cond_4
    move v10, v7

    move-object v4, v8

    move-object v9, v4

    move v3, v13

    :goto_3
    if-nez v3, :cond_5

    array-length v0, v12

    invoke-static {v12, v13, v0}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v3

    :cond_5
    if-eqz v3, :cond_8

    if-nez v9, :cond_6

    const/4 v0, -0x2

    goto :goto_4

    :cond_6
    invoke-virtual {v9}, Lsun/font/AttributeValues;->getRunDirection()I

    move-result v0

    :goto_4
    move v6, v0

    new-instance v11, Ljava/text/Bidi;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v14, v12

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v3, v4

    move v4, v5

    move v5, v14

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    invoke-virtual {v11}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v11}, Lsun/font/BidiUtils;->getLevels(Ljava/text/Bidi;)[B

    move-result-object v0

    invoke-static {v0}, Lsun/font/BidiUtils;->createVisualToLogicalMap([B)[I

    move-result-object v1

    invoke-static {v1}, Lsun/font/BidiUtils;->createInverseMap([I)[I

    move-result-object v1

    invoke-virtual {v11}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v2

    move-object v15, v0

    move-object v14, v1

    move/from16 v16, v2

    goto :goto_5

    :cond_7
    move-object v14, v8

    move-object v15, v14

    move/from16 v16, v10

    :goto_5
    move-object v8, v11

    goto :goto_6

    :cond_8
    move-object v14, v8

    move-object v15, v14

    move/from16 v16, v10

    :goto_6
    invoke-static {v9}, Lsun/font/Decoration;->getDecoration(Lsun/font/AttributeValues;)Lsun/font/Decoration;

    move-result-object v9

    new-instance v5, Lsun/font/TextLabelFactory;

    move-object/from16 v11, p0

    invoke-direct {v5, v11, v12, v8, v13}, Lsun/font/TextLabelFactory;-><init>(Ljava/awt/font/FontRenderContext;[CLjava/text/Bidi;I)V

    new-array v10, v7, [Lsun/font/TextLineComponent;

    const/4 v0, 0x0

    array-length v1, v12

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p0

    move/from16 v11, v17

    invoke-static/range {v0 .. v11}, Ljava/awt/font/TextLine;->createComponentsOnRun(II[C[I[BLsun/font/TextLabelFactory;Ljava/awt/Font;Lsun/font/CoreMetrics;Ljava/awt/font/FontRenderContext;Lsun/font/Decoration;[Lsun/font/TextLineComponent;I)[Lsun/font/TextLineComponent;

    move-result-object v0

    array-length v1, v0

    :goto_7
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    if-nez v2, :cond_9

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_9
    array-length v2, v0

    if-eq v1, v2, :cond_a

    new-array v2, v1, [Lsun/font/TextLineComponent;

    invoke-static {v0, v13, v2, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_a
    move-object v2, v0

    :goto_8
    new-instance v10, Ljava/awt/font/TextLine;

    move-object/from16 v0, p3

    iget-object v3, v0, Lsun/font/CoreMetrics;->baselineOffsets:[F

    const/4 v5, 0x0

    array-length v6, v12

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Ljava/awt/font/TextLine;-><init>(Ljava/awt/font/FontRenderContext;[Lsun/font/TextLineComponent;[F[CII[I[BZ)V

    return-object v10
.end method

.method private static firstVisualChunk([I[BII)I
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    aget-byte p0, p1, p2

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_0

    aget-byte v0, p1, p2

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    return p3
.end method

.method public static getAdvanceBetween([Lsun/font/TextLineComponent;II)F
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    aget-object v4, p0, v2

    invoke-interface {v4}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v5

    add-int v6, v3, v5

    if-le v6, p1, :cond_0

    sub-int v7, p1, v3

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v3, p2, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v4, v7, v3}, Lsun/font/TextLineComponent;->getAdvanceBetween(II)F

    move-result v3

    add-float/2addr v0, v3

    if-lt v6, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private getComponentLogicalIndex(I)I
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLine;->fComponentVisualOrder:[I

    if-nez p0, :cond_0

    return p1

    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method private getComponentShift(I)F
    .locals 1

    iget-object v0, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lsun/font/TextLineComponent;->getCoreMetrics()Lsun/font/CoreMetrics;

    move-result-object p1

    iget-object p0, p0, Ljava/awt/font/TextLine;->fBaselineOffsets:[F

    invoke-virtual {p1, p0}, Lsun/font/CoreMetrics;->effectiveBaselineOffset([F)F

    move-result p0

    return p0
.end method

.method private getComponentVisualIndex(I)I
    .locals 3

    iget-object v0, p0, Ljava/awt/font/TextLine;->fComponentVisualOrder:[I

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/awt/font/TextLine;->fComponentVisualOrder:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad component index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getComponents(Ljava/awt/font/StyledParagraph;[CII[I[BLsun/font/TextLabelFactory;)[Lsun/font/TextLineComponent;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual/range {p6 .. p6}, Lsun/font/TextLabelFactory;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v14

    const/4 v15, 0x1

    new-array v2, v15, [Lsun/font/TextLineComponent;

    const/4 v13, 0x0

    move-object v12, v2

    move/from16 v16, v13

    move/from16 v2, p2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/awt/font/StyledParagraph;->getRunLimit(I)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v0, v2}, Ljava/awt/font/StyledParagraph;->getDecorationAt(I)Lsun/font/Decoration;

    move-result-object v17

    invoke-virtual {v0, v2}, Ljava/awt/font/StyledParagraph;->getFontOrGraphicAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/awt/font/GraphicAttribute;

    if-eqz v4, :cond_2

    const/16 v18, 0x0

    move-object/from16 v19, v3

    check-cast v19, Ljava/awt/font/GraphicAttribute;

    move-object/from16 v10, p5

    move v8, v2

    move-object/from16 v2, p4

    :goto_1
    invoke-static {v2, v10, v8, v11}, Ljava/awt/font/TextLine;->firstVisualChunk([I[BII)I

    move-result v9

    new-instance v20, Lsun/font/GraphicComponent;

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    move-object/from16 v5, v17

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 p2, v9

    move-object/from16 v10, v18

    invoke-direct/range {v3 .. v10}, Lsun/font/GraphicComponent;-><init>(Ljava/awt/font/GraphicAttribute;Lsun/font/Decoration;[I[BIILjava/awt/geom/AffineTransform;)V

    add-int/lit8 v3, v16, 0x1

    array-length v4, v12

    if-lt v3, v4, :cond_0

    invoke-static {v12}, Ljava/awt/font/TextLine;->expandArray([Lsun/font/TextLineComponent;)[Lsun/font/TextLineComponent;

    move-result-object v4

    move-object v12, v4

    :cond_0
    add-int/lit8 v4, v3, -0x1

    aput-object v20, v12, v4

    move/from16 v4, p2

    if-lt v4, v11, :cond_1

    move v2, v4

    move v15, v13

    goto :goto_3

    :cond_1
    move-object/from16 v10, p5

    move/from16 v16, v3

    move v8, v4

    goto :goto_1

    :cond_2
    move-object v8, v3

    check-cast v8, Ljava/awt/Font;

    const/4 v9, 0x0

    move v3, v11

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v10, v14

    move/from16 v18, v11

    move-object/from16 v11, v17

    move v15, v13

    move/from16 v13, v16

    invoke-static/range {v2 .. v13}, Ljava/awt/font/TextLine;->createComponentsOnRun(II[C[I[BLsun/font/TextLabelFactory;Ljava/awt/Font;Lsun/font/CoreMetrics;Ljava/awt/font/FontRenderContext;Lsun/font/Decoration;[Lsun/font/TextLineComponent;I)[Lsun/font/TextLineComponent;

    move-result-object v2

    array-length v3, v2

    :goto_2
    add-int/lit8 v4, v3, -0x1

    aget-object v4, v2, v4

    if-nez v4, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    move-object v12, v2

    move/from16 v2, v18

    :goto_3
    if-lt v2, v1, :cond_5

    array-length v0, v12

    if-ne v0, v3, :cond_4

    goto :goto_4

    :cond_4
    new-array v0, v3, [Lsun/font/TextLineComponent;

    invoke-static {v12, v15, v0, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v12, v0

    :goto_4
    return-object v12

    :cond_5
    move/from16 v16, v3

    move v13, v15

    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public static getFontAtCurrentPos(Ljava/text/AttributedCharacterIterator;)Ljava/awt/Font;
    .locals 2

    sget-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/awt/Font;

    return-object v0

    :cond_0
    sget-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/awt/Font;->getFont(Ljava/util/Map;)Ljava/awt/Font;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lsun/text/CodePointIterator;->create(Ljava/text/CharacterIterator;)Lsun/text/CodePointIterator;

    move-result-object v0

    invoke-virtual {v0}, Lsun/text/CodePointIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lsun/font/FontResolver;->getInstance()Lsun/font/FontResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsun/font/FontResolver;->getFontIndex(I)I

    move-result v0

    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lsun/font/FontResolver;->getFont(ILjava/util/Map;)Ljava/awt/Font;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNormalizedOffsets([FB)[F
    .locals 4

    aget p1, p0, p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    array-length v0, p0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    sub-float/2addr v3, p1

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p0, v1

    :cond_1
    return-object p0
.end method

.method private init()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/awt/font/TextLine;->isSimple:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v2

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v11, v0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v12, v11

    if-ge v4, v12, :cond_1

    aget-object v11, v11, v4

    iget-boolean v12, v0, Ljava/awt/font/TextLine;->isSimple:Z

    invoke-interface {v11}, Lsun/font/TextLineComponent;->isSimple()Z

    move-result v13

    and-int/2addr v12, v13

    iput-boolean v12, v0, Ljava/awt/font/TextLine;->isSimple:Z

    invoke-interface {v11}, Lsun/font/TextLineComponent;->getCoreMetrics()Lsun/font/CoreMetrics;

    move-result-object v11

    iget v12, v11, Lsun/font/CoreMetrics;->baselineIndex:I

    int-to-byte v12, v12

    if-ltz v12, :cond_0

    iget-object v13, v0, Ljava/awt/font/TextLine;->fBaselineOffsets:[F

    aget v12, v13, v12

    neg-float v13, v12

    iget v14, v11, Lsun/font/CoreMetrics;->ascent:F

    add-float/2addr v13, v14

    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v13, v11, Lsun/font/CoreMetrics;->descent:F

    add-float/2addr v12, v13

    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v11, v11, Lsun/font/CoreMetrics;->leading:F

    add-float/2addr v12, v11

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    goto :goto_1

    :cond_0
    iget v5, v11, Lsun/font/CoreMetrics;->ascent:F

    iget v12, v11, Lsun/font/CoreMetrics;->descent:F

    add-float/2addr v5, v12

    iget v11, v11, Lsun/font/CoreMetrics;->leading:F

    add-float/2addr v11, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    move v5, v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_3

    add-float v4, v7, v8

    cmpl-float v4, v6, v4

    if-lez v4, :cond_2

    sub-float v8, v6, v7

    :cond_2
    add-float v4, v7, v10

    cmpl-float v4, v9, v4

    if-lez v4, :cond_3

    sub-float v10, v9, v7

    :cond_3
    sub-float/2addr v10, v8

    const/4 v4, 0x2

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    new-array v5, v5, [F

    iget-object v6, v0, Ljava/awt/font/TextLine;->fBaselineOffsets:[F

    aget v9, v6, v3

    aput v9, v5, v3

    aget v9, v6, v1

    aput v9, v5, v1

    aget v6, v6, v4

    aput v6, v5, v4

    const/4 v6, 0x3

    aput v8, v5, v6

    const/4 v6, 0x4

    neg-float v9, v7

    aput v9, v5, v6

    iput-object v5, v0, Ljava/awt/font/TextLine;->fBaselineOffsets:[F

    :cond_4
    array-length v5, v11

    mul-int/2addr v5, v4

    add-int/2addr v5, v4

    new-array v5, v5, [F

    iput-object v5, v0, Ljava/awt/font/TextLine;->locs:[F

    const/4 v5, 0x0

    move v9, v2

    move v6, v3

    move v11, v6

    move v12, v11

    :goto_2
    iget-object v13, v0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v14, v13

    if-ge v6, v14, :cond_9

    invoke-direct {v0, v6}, Ljava/awt/font/TextLine;->getComponentLogicalIndex(I)I

    move-result v14

    aget-object v13, v13, v14

    invoke-interface {v13}, Lsun/font/TextLineComponent;->getCoreMetrics()Lsun/font/CoreMetrics;

    move-result-object v14

    if-eqz v5, :cond_7

    iget v15, v5, Lsun/font/CoreMetrics;->italicAngle:F

    cmpl-float v16, v15, v2

    if-nez v16, :cond_5

    iget v1, v14, Lsun/font/CoreMetrics;->italicAngle:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    :cond_5
    iget v1, v14, Lsun/font/CoreMetrics;->italicAngle:F

    cmpl-float v1, v15, v1

    if-nez v1, :cond_6

    iget v1, v5, Lsun/font/CoreMetrics;->baselineIndex:I

    iget v15, v14, Lsun/font/CoreMetrics;->baselineIndex:I

    if-ne v1, v15, :cond_6

    iget v1, v5, Lsun/font/CoreMetrics;->ssOffset:F

    iget v15, v14, Lsun/font/CoreMetrics;->ssOffset:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, v0, Ljava/awt/font/TextLine;->fBaselineOffsets:[F

    invoke-virtual {v5, v1}, Lsun/font/CoreMetrics;->effectiveBaselineOffset([F)F

    move-result v1

    iget v15, v5, Lsun/font/CoreMetrics;->ascent:F

    sub-float v15, v1, v15

    iget v3, v5, Lsun/font/CoreMetrics;->descent:F

    add-float/2addr v3, v1

    iget-object v4, v0, Ljava/awt/font/TextLine;->fBaselineOffsets:[F

    invoke-virtual {v14, v4}, Lsun/font/CoreMetrics;->effectiveBaselineOffset([F)F

    move-result v4

    iget v2, v14, Lsun/font/CoreMetrics;->ascent:F

    sub-float v2, v4, v2

    move/from16 v19, v7

    iget v7, v14, Lsun/font/CoreMetrics;->descent:F

    add-float/2addr v7, v4

    invoke-static {v15, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v5, v5, Lsun/font/CoreMetrics;->italicAngle:F

    sub-float v7, v1, v2

    mul-float/2addr v7, v5

    sub-float/2addr v1, v3

    mul-float/2addr v5, v1

    iget v1, v14, Lsun/font/CoreMetrics;->italicAngle:F

    sub-float v2, v4, v2

    mul-float/2addr v2, v1

    sub-float v3, v4, v3

    mul-float/2addr v1, v3

    sub-float/2addr v7, v2

    sub-float/2addr v5, v1

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v9, v1

    goto :goto_3

    :cond_7
    move/from16 v19, v7

    iget-object v1, v0, Ljava/awt/font/TextLine;->fBaselineOffsets:[F

    invoke-virtual {v14, v1}, Lsun/font/CoreMetrics;->effectiveBaselineOffset([F)F

    move-result v4

    :goto_3
    iget-object v1, v0, Ljava/awt/font/TextLine;->locs:[F

    aput v9, v1, v12

    add-int/lit8 v2, v12, 0x1

    aput v4, v1, v2

    invoke-interface {v13}, Lsun/font/TextLineComponent;->getAdvance()F

    move-result v1

    add-float/2addr v9, v1

    invoke-interface {v13}, Lsun/font/TextLineComponent;->getBaselineTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    or-int/2addr v11, v1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v12, v12, 0x2

    move-object v5, v14

    move/from16 v7, v19

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_9
    move/from16 v19, v7

    iget v1, v5, Lsun/font/CoreMetrics;->italicAngle:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_b

    iget-object v1, v0, Ljava/awt/font/TextLine;->fBaselineOffsets:[F

    invoke-virtual {v5, v1}, Lsun/font/CoreMetrics;->effectiveBaselineOffset([F)F

    move-result v1

    iget v3, v5, Lsun/font/CoreMetrics;->ascent:F

    iget v4, v5, Lsun/font/CoreMetrics;->descent:F

    iget v6, v5, Lsun/font/CoreMetrics;->ssOffset:F

    add-float/2addr v1, v6

    iget v5, v5, Lsun/font/CoreMetrics;->italicAngle:F

    cmpl-float v2, v5, v2

    if-lez v2, :cond_a

    add-float/2addr v1, v3

    goto :goto_5

    :cond_a
    sub-float/2addr v1, v4

    :goto_5
    mul-float/2addr v1, v5

    add-float/2addr v9, v1

    :cond_b
    iget-object v1, v0, Ljava/awt/font/TextLine;->locs:[F

    array-length v2, v1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    aput v9, v1, v2

    new-instance v1, Ljava/awt/font/TextLine$TextLineMetrics;

    move/from16 v2, v19

    invoke-direct {v1, v2, v8, v10, v9}, Ljava/awt/font/TextLine$TextLineMetrics;-><init>(FFFF)V

    iput-object v1, v0, Ljava/awt/font/TextLine;->fMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    if-eqz v11, :cond_10

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/awt/font/TextLine;->isSimple:Z

    new-instance v2, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Point2D$Double;-><init>()V

    new-instance v3, Lsun/font/LayoutPathImpl$SegmentPathBuilder;

    invoke-direct {v3}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;-><init>()V

    iget-object v4, v0, Ljava/awt/font/TextLine;->locs:[F

    aget v4, v4, v1

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->moveTo(DD)V

    move-wide v8, v6

    move-wide v10, v8

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_6
    iget-object v5, v0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v12, v5

    if-ge v1, v12, :cond_f

    invoke-direct {v0, v1}, Ljava/awt/font/TextLine;->getComponentLogicalIndex(I)I

    move-result v12

    aget-object v5, v5, v12

    invoke-interface {v5}, Lsun/font/TextLineComponent;->getBaselineTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v12

    const/4 v13, 0x1

    and-int/2addr v12, v13

    if-eqz v12, :cond_d

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v14

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v17

    add-double/2addr v8, v14

    add-double v10, v10, v17

    invoke-virtual {v3, v8, v9, v10, v11}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->moveTo(DD)V

    goto :goto_7

    :cond_c
    const/4 v13, 0x1

    :cond_d
    :goto_7
    iget-object v12, v0, Ljava/awt/font/TextLine;->locs:[F

    add-int/lit8 v14, v4, 0x2

    aget v15, v12, v14

    aget v4, v12, v4

    sub-float/2addr v15, v4

    move v4, v14

    float-to-double v13, v15

    iput-wide v13, v2, Ljava/awt/geom/Point2D$Double;->x:D

    iput-wide v6, v2, Ljava/awt/geom/Point2D$Double;->y:D

    if-eqz v5, :cond_e

    invoke-virtual {v5, v2, v2}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    :cond_e
    iget-wide v12, v2, Ljava/awt/geom/Point2D$Double;->x:D

    add-double/2addr v8, v12

    iget-wide v12, v2, Ljava/awt/geom/Point2D$Double;->y:D

    add-double/2addr v10, v12

    invoke-virtual {v3, v8, v9, v10, v11}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->lineTo(DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual {v3}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->complete()Lsun/font/LayoutPathImpl$SegmentPath;

    move-result-object v1

    iput-object v1, v0, Ljava/awt/font/TextLine;->lp:Lsun/font/LayoutPathImpl;

    if-nez v1, :cond_10

    iget-object v1, v0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/awt/font/TextLine;->getComponentLogicalIndex(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lsun/font/TextLineComponent;->getBaselineTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v2, Lsun/font/LayoutPathImpl$EmptyPath;

    invoke-direct {v2, v1}, Lsun/font/LayoutPathImpl$EmptyPath;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v2, v0, Ljava/awt/font/TextLine;->lp:Lsun/font/LayoutPathImpl;

    :cond_10
    return-void
.end method

.method public static standardCreateTextLine(Ljava/awt/font/FontRenderContext;Ljava/text/AttributedCharacterIterator;[C[F)Ljava/awt/font/TextLine;
    .locals 3

    new-instance v0, Ljava/awt/font/StyledParagraph;

    invoke-direct {v0, p1, p2}, Ljava/awt/font/StyledParagraph;-><init>(Ljava/text/AttributedCharacterIterator;[C)V

    new-instance v1, Ljava/text/Bidi;

    invoke-direct {v1, p1}, Ljava/text/Bidi;-><init>(Ljava/text/AttributedCharacterIterator;)V

    invoke-virtual {v1}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    new-instance p1, Lsun/font/TextLabelFactory;

    const/4 v2, 0x0

    invoke-direct {p1, p0, p2, v1, v2}, Lsun/font/TextLabelFactory;-><init>(Ljava/awt/font/FontRenderContext;[CLjava/text/Bidi;I)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    invoke-static {p2, v0, p1, p0, p3}, Ljava/awt/font/TextLine;->createLineFromText([CLjava/awt/font/StyledParagraph;Lsun/font/TextLabelFactory;Z[F)Ljava/awt/font/TextLine;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public caretAtOffsetIsValid(I)Z
    .locals 4

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    invoke-interface {v2}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v2

    add-int/2addr v2, v1

    if-le v2, p1, :cond_0

    iget-object p0, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    aget-object p0, p0, v0

    sub-int/2addr p1, v1

    invoke-interface {p0, p1}, Lsun/font/TextLineComponent;->caretAtOffsetIsValid(I)Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "logicalIndex too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative offset."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public characterCount()I
    .locals 1

    iget v0, p0, Ljava/awt/font/TextLine;->fCharsLimit:I

    iget p0, p0, Ljava/awt/font/TextLine;->fCharsStart:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public draw(Ljava/awt/Graphics2D;FF)V
    .locals 12

    iget-object v0, p0, Ljava/awt/font/TextLine;->lp:Lsun/font/LayoutPathImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-direct {p0, v1}, Ljava/awt/font/TextLine;->getComponentLogicalIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Ljava/awt/font/TextLine;->locs:[F

    aget v4, v3, v0

    add-float/2addr v4, p2

    add-int/lit8 v5, v0, 0x1

    aget v3, v3, v5

    add-float/2addr v3, p3

    invoke-interface {v2, p1, v4, v3}, Lsun/font/TextLineComponent;->draw(Ljava/awt/Graphics2D;FF)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    new-instance v9, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v9}, Ljava/awt/geom/Point2D$Float;-><init>()V

    move v10, v1

    :goto_1
    iget-object v2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-direct {p0, v1}, Ljava/awt/font/TextLine;->getComponentLogicalIndex(I)I

    move-result v3

    aget-object v11, v2, v3

    iget-object v2, p0, Ljava/awt/font/TextLine;->lp:Lsun/font/LayoutPathImpl;

    iget-object v3, p0, Ljava/awt/font/TextLine;->locs:[F

    aget v4, v3, v10

    float-to-double v4, v4

    add-int/lit8 v6, v10, 0x1

    aget v3, v3, v6

    float-to-double v6, v3

    const/4 v8, 0x0

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, Lsun/font/LayoutPathImpl;->pathToPoint(DDZLjava/awt/geom/Point2D;)V

    iget v2, v9, Ljava/awt/geom/Point2D$Float;->x:F

    add-float/2addr v2, p2

    iput v2, v9, Ljava/awt/geom/Point2D$Float;->x:F

    iget v2, v9, Ljava/awt/geom/Point2D$Float;->y:F

    add-float/2addr v2, p3

    iput v2, v9, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-interface {v11}, Lsun/font/TextLineComponent;->getBaselineTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v9, Ljava/awt/geom/Point2D$Float;->x:F

    float-to-double v3, v3

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget v5, v9, Ljava/awt/geom/Point2D$Float;->y:F

    float-to-double v5, v5

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    const/4 v2, 0x0

    invoke-interface {v11, p1, v2, v2}, Lsun/font/TextLineComponent;->draw(Ljava/awt/Graphics2D;FF)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    goto :goto_2

    :cond_1
    iget v2, v9, Ljava/awt/geom/Point2D$Float;->x:F

    iget v3, v9, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-interface {v11, p1, v2, v3}, Lsun/font/TextLineComponent;->draw(Ljava/awt/Graphics2D;FF)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getCharAdvance(I)F
    .locals 1

    sget-object v0, Ljava/awt/font/TextLine;->fgAdvanceF:Ljava/awt/font/TextLine$Function;

    invoke-direct {p0, p1, v0}, Ljava/awt/font/TextLine;->applyFunctionAtIndex(ILjava/awt/font/TextLine$Function;)F

    move-result p0

    return p0
.end method

.method public getCharAngle(I)F
    .locals 0

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->getCoreMetricsAt(I)Lsun/font/CoreMetrics;

    move-result-object p0

    iget p0, p0, Lsun/font/CoreMetrics;->italicAngle:F

    return p0
.end method

.method public getCharAscent(I)F
    .locals 0

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->getCoreMetricsAt(I)Lsun/font/CoreMetrics;

    move-result-object p0

    iget p0, p0, Lsun/font/CoreMetrics;->ascent:F

    return p0
.end method

.method public getCharBounds(I)Ljava/awt/geom/Rectangle2D;
    .locals 12

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    invoke-interface {v2}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v2

    add-int/2addr v2, v1

    if-le v2, p1, :cond_0

    iget-object v2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    aget-object v2, v2, v0

    sub-int/2addr p1, v1

    invoke-interface {v2, p1}, Lsun/font/TextLineComponent;->getCharVisualBounds(I)Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-direct {p0, v0}, Ljava/awt/font/TextLine;->getComponentVisualIndex(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    iget-object v3, p0, Ljava/awt/font/TextLine;->locs:[F

    mul-int/lit8 v0, v0, 0x2

    aget v3, v3, v0

    float-to-double v3, v3

    add-double v4, v1, v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    iget-object p0, p0, Ljava/awt/font/TextLine;->locs:[F

    add-int/lit8 v0, v0, 0x1

    aget p0, p0, v0

    float-to-double v6, p0

    add-double/2addr v6, v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "logicalIndex too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative logicalIndex."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCharDescent(I)F
    .locals 0

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->getCoreMetricsAt(I)Lsun/font/CoreMetrics;

    move-result-object p0

    iget p0, p0, Lsun/font/CoreMetrics;->descent:F

    return p0
.end method

.method public getCharLevel(I)B
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLine;->fCharLevels:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    aget-byte p0, p0, p1

    :goto_0
    return p0
.end method

.method public getCharLinePosition(I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->getCharXPosition(I)F

    move-result p0

    return p0
.end method

.method public getCharLinePosition(IZ)F
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->isCharLTR(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    sget-object p2, Ljava/awt/font/TextLine;->fgXPositionF:Ljava/awt/font/TextLine$Function;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/awt/font/TextLine;->fgPosAdvF:Ljava/awt/font/TextLine$Function;

    .line 3
    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/awt/font/TextLine;->applyFunctionAtIndex(ILjava/awt/font/TextLine$Function;)F

    move-result p0

    return p0
.end method

.method public getCharShift(I)F
    .locals 0

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->getCoreMetricsAt(I)Lsun/font/CoreMetrics;

    move-result-object p0

    iget p0, p0, Lsun/font/CoreMetrics;->ssOffset:F

    return p0
.end method

.method public getCharType(I)I
    .locals 1

    iget-object v0, p0, Ljava/awt/font/TextLine;->fChars:[C

    iget p0, p0, Ljava/awt/font/TextLine;->fCharsStart:I

    add-int/2addr p1, p0

    aget-char p0, v0, p1

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    return p0
.end method

.method public getCharXPosition(I)F
    .locals 1

    sget-object v0, Ljava/awt/font/TextLine;->fgXPositionF:Ljava/awt/font/TextLine$Function;

    invoke-direct {p0, p1, v0}, Ljava/awt/font/TextLine;->applyFunctionAtIndex(ILjava/awt/font/TextLine$Function;)F

    move-result p0

    return p0
.end method

.method public getCharYPosition(I)F
    .locals 1

    sget-object v0, Ljava/awt/font/TextLine;->fgYPositionF:Ljava/awt/font/TextLine$Function;

    invoke-direct {p0, p1, v0}, Ljava/awt/font/TextLine;->applyFunctionAtIndex(ILjava/awt/font/TextLine$Function;)F

    move-result p0

    return p0
.end method

.method public getCoreMetricsAt(I)Lsun/font/CoreMetrics;
    .locals 3

    if-ltz p1, :cond_3

    iget v0, p0, Ljava/awt/font/TextLine;->fCharsLimit:I

    iget v1, p0, Ljava/awt/font/TextLine;->fCharsStart:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget-object v2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v2

    add-int/2addr v0, v2

    if-le v0, p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    :goto_0
    iget-object p0, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    aget-object p0, p0, v1

    invoke-interface {p0}, Lsun/font/TextLineComponent;->getCoreMetrics()Lsun/font/CoreMetrics;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "logicalIndex too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative logicalIndex."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItalicBounds()Ljava/awt/geom/Rectangle2D;
    .locals 11

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    move v1, v0

    move v2, v3

    :goto_0
    iget-object v6, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v7, v6

    if-ge v4, v7, :cond_0

    invoke-direct {p0, v4}, Ljava/awt/font/TextLine;->getComponentLogicalIndex(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v6}, Lsun/font/TextLineComponent;->getItalicBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v6

    iget-object v7, p0, Ljava/awt/font/TextLine;->locs:[F

    aget v8, v7, v5

    add-int/lit8 v9, v5, 0x1

    aget v7, v7, v9

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v9

    double-to-float v9, v9

    add-float/2addr v9, v8

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v9

    double-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    add-float/2addr v8, v7

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v8

    double-to-float v6, v8

    add-float/2addr v7, v6

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    sub-float/2addr v2, v0

    sub-float/2addr v3, v1

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object p0
.end method

.method public getJustifiedLine(FFII)Ljava/awt/font/TextLine;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    iget-object v3, v0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v4, v3

    new-array v7, v4, [Lsun/font/TextLineComponent;

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/font/TextLine;->characterCount()I

    move-result v5

    invoke-static {v7, v6, v5}, Ljava/awt/font/TextLine;->getAdvanceBetween([Lsun/font/TextLineComponent;II)F

    invoke-static {v7, v1, v2}, Ljava/awt/font/TextLine;->getAdvanceBetween([Lsun/font/TextLineComponent;II)F

    move-result v5

    sub-float v5, p1, v5

    mul-float v5, v5, p2

    new-array v8, v4, [I

    move v9, v6

    move v10, v9

    :goto_1
    if-ge v9, v4, :cond_0

    invoke-direct {v0, v9}, Ljava/awt/font/TextLine;->getComponentLogicalIndex(I)I

    move-result v11

    aput v10, v8, v11

    aget-object v11, v7, v11

    invoke-interface {v11}, Lsun/font/TextLineComponent;->getNumJustificationInfos()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    new-array v9, v10, [Ljava/awt/font/GlyphJustificationInfo;

    move v11, v6

    :goto_2
    if-ge v11, v4, :cond_2

    aget-object v12, v7, v11

    invoke-interface {v12}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v13

    add-int v14, v6, v13

    if-le v14, v1, :cond_1

    add-int/lit8 v15, v1, 0x0

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v6, v2, 0x0

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget v13, v8, v11

    invoke-interface {v12, v9, v13, v15, v6}, Lsun/font/TextLineComponent;->getJustificationInfos([Ljava/awt/font/GlyphJustificationInfo;III)V

    if-lt v14, v2, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v10, :cond_3

    aget-object v11, v9, v6

    if-nez v11, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    if-le v10, v6, :cond_4

    add-int/lit8 v11, v10, -0x1

    aget-object v11, v9, v11

    if-nez v11, :cond_4

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_4
    new-instance v11, Ljava/awt/font/TextJustifier;

    invoke-direct {v11, v9, v6, v10}, Ljava/awt/font/TextJustifier;-><init>([Ljava/awt/font/GlyphJustificationInfo;II)V

    invoke-virtual {v11, v5}, Ljava/awt/font/TextJustifier;->justify(F)[F

    move-result-object v5

    const/4 v6, 0x1

    new-array v9, v6, [Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    if-ge v10, v4, :cond_6

    aget-object v12, v7, v10

    invoke-interface {v12}, Lsun/font/TextLineComponent;->getNumCharacters()I

    move-result v13

    const/4 v14, 0x0

    add-int v15, v14, v13

    if-le v15, v1, :cond_5

    add-int/lit8 v6, v1, 0x0

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    add-int/lit8 v6, v2, 0x0

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    aget v6, v8, v10

    mul-int/lit8 v6, v6, 0x2

    invoke-interface {v12, v5, v6, v9}, Lsun/font/TextLineComponent;->applyJustificationDeltas([FI[Z)Lsun/font/TextLineComponent;

    move-result-object v6

    aput-object v6, v7, v10

    aget-boolean v6, v9, v14

    or-int/2addr v11, v6

    if-lt v15, v2, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    :goto_7
    if-eqz v11, :cond_7

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_8

    :cond_7
    move v3, v14

    :goto_8
    if-nez v3, :cond_8

    new-instance v1, Ljava/awt/font/TextLine;

    iget-object v6, v0, Ljava/awt/font/TextLine;->frc:Ljava/awt/font/FontRenderContext;

    iget-object v8, v0, Ljava/awt/font/TextLine;->fBaselineOffsets:[F

    iget-object v9, v0, Ljava/awt/font/TextLine;->fChars:[C

    iget v10, v0, Ljava/awt/font/TextLine;->fCharsStart:I

    iget v11, v0, Ljava/awt/font/TextLine;->fCharsLimit:I

    iget-object v12, v0, Ljava/awt/font/TextLine;->fCharLogicalOrder:[I

    iget-object v13, v0, Ljava/awt/font/TextLine;->fCharLevels:[B

    iget-boolean v14, v0, Ljava/awt/font/TextLine;->fIsDirectionLTR:Z

    move-object v5, v1

    invoke-direct/range {v5 .. v14}, Ljava/awt/font/TextLine;-><init>(Ljava/awt/font/FontRenderContext;[Lsun/font/TextLineComponent;[F[CII[I[BZ)V

    return-object v1

    :cond_8
    move v6, v14

    goto/16 :goto_0
.end method

.method public getLayoutPath()Lsun/font/LayoutPathImpl;
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLine;->lp:Lsun/font/LayoutPathImpl;

    return-object p0
.end method

.method public getMetrics()Ljava/awt/font/TextLine$TextLineMetrics;
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLine;->fMetrics:Ljava/awt/font/TextLine$TextLineMetrics;

    return-object p0
.end method

.method public getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;
    .locals 8

    new-instance v0, Ljava/awt/geom/GeneralPath;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/awt/geom/GeneralPath;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v5, v4

    if-ge v2, v5, :cond_0

    invoke-direct {p0, v2}, Ljava/awt/font/TextLine;->getComponentLogicalIndex(I)I

    move-result v5

    aget-object v4, v4, v5

    iget-object v5, p0, Ljava/awt/font/TextLine;->locs:[F

    aget v6, v5, v3

    add-int/lit8 v7, v3, 0x1

    aget v5, v5, v7

    invoke-interface {v4, v6, v5}, Lsun/font/TextLineComponent;->getOutline(FF)Ljava/awt/Shape;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/awt/geom/Path2D$Float;->transform(Ljava/awt/geom/AffineTransform;)V

    :cond_1
    return-object v0
.end method

.method public getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljava/awt/font/TextLine;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p1, v1}, Ljava/awt/font/FontRenderContext;->equals(Ljava/awt/font/FontRenderContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, v1

    sub-float/2addr p2, v3

    int-to-float v3, v2

    sub-float/2addr p3, v3

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-nez v5, :cond_1

    cmpl-float v4, p3, v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    iget-object v5, p0, Ljava/awt/font/TextLine;->pixelBounds:Ljava/awt/Rectangle;

    if-eqz v5, :cond_2

    new-instance p1, Ljava/awt/Rectangle;

    iget-object p0, p0, Ljava/awt/font/TextLine;->pixelBounds:Ljava/awt/Rectangle;

    invoke-direct {p1, p0}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Rectangle;)V

    iget p0, p1, Ljava/awt/Rectangle;->x:I

    add-int/2addr p0, v1

    iput p0, p1, Ljava/awt/Rectangle;->x:I

    iget p0, p1, Ljava/awt/Rectangle;->y:I

    add-int/2addr p0, v2

    iput p0, p1, Ljava/awt/Rectangle;->y:I

    return-object p1

    :cond_2
    iget-boolean v5, p0, Ljava/awt/font/TextLine;->isSimple:Z

    if-eqz v5, :cond_6

    move v5, v3

    move v6, v5

    :goto_1
    iget-object v7, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v8, v7

    if-ge v5, v8, :cond_5

    invoke-direct {p0, v5}, Ljava/awt/font/TextLine;->getComponentLogicalIndex(I)I

    move-result v8

    aget-object v7, v7, v8

    iget-object v8, p0, Ljava/awt/font/TextLine;->locs:[F

    aget v9, v8, v6

    add-float/2addr v9, p2

    add-int/lit8 v10, v6, 0x1

    aget v8, v8, v10

    add-float/2addr v8, p3

    invoke-interface {v7, p1, v9, v8}, Lsun/font/TextLineComponent;->getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v0, :cond_3

    move-object v0, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v7}, Ljava/awt/Rectangle;->add(Ljava/awt/Rectangle;)V

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_5
    if-nez v0, :cond_8

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, v3, v3, v3, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/awt/font/TextLine;->getVisualBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    iget-object v0, p0, Ljava/awt/font/TextLine;->lp:Lsun/font/LayoutPathImpl;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lsun/font/LayoutPathImpl;->mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p1

    :cond_7
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p1

    new-instance v0, Ljava/awt/image/BufferedImage;

    iget v5, p1, Ljava/awt/Rectangle;->width:I

    add-int/lit8 v5, v5, 0x6

    iget v6, p1, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v6, v6, 0x6

    const/4 v7, 0x2

    invoke-direct {v0, v5, v6, v7}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v5

    sget-object v6, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    invoke-virtual {v5, v6}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    invoke-virtual {v5, v3, v3, v6, v7}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    sget-object v3, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {v5, v3}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    const/high16 v3, 0x40400000    # 3.0f

    add-float/2addr p2, v3

    iget v6, p1, Ljava/awt/Rectangle;->x:I

    int-to-float v6, v6

    sub-float/2addr p2, v6

    add-float/2addr p3, v3

    iget v3, p1, Ljava/awt/Rectangle;->y:I

    int-to-float v3, v3

    sub-float/2addr p3, v3

    invoke-virtual {p0, v5, p2, p3}, Ljava/awt/font/TextLine;->draw(Ljava/awt/Graphics2D;FF)V

    invoke-static {v0}, Ljava/awt/font/TextLine;->computePixelBounds(Ljava/awt/image/BufferedImage;)Ljava/awt/Rectangle;

    move-result-object v0

    iget p2, v0, Ljava/awt/Rectangle;->x:I

    iget p3, p1, Ljava/awt/Rectangle;->x:I

    rsub-int/lit8 p3, p3, 0x3

    sub-int/2addr p2, p3

    iput p2, v0, Ljava/awt/Rectangle;->x:I

    iget p2, v0, Ljava/awt/Rectangle;->y:I

    iget p1, p1, Ljava/awt/Rectangle;->y:I

    rsub-int/lit8 p1, p1, 0x3

    sub-int/2addr p2, p1

    iput p2, v0, Ljava/awt/Rectangle;->y:I

    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    new-instance p1, Ljava/awt/Rectangle;

    invoke-direct {p1, v0}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Rectangle;)V

    iput-object p1, p0, Ljava/awt/font/TextLine;->pixelBounds:Ljava/awt/Rectangle;

    :cond_9
    iget p0, v0, Ljava/awt/Rectangle;->x:I

    add-int/2addr p0, v1

    iput p0, v0, Ljava/awt/Rectangle;->x:I

    iget p0, v0, Ljava/awt/Rectangle;->y:I

    add-int/2addr p0, v2

    iput p0, v0, Ljava/awt/Rectangle;->y:I

    return-object v0
.end method

.method public getVisualBounds()Ljava/awt/geom/Rectangle2D;
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v5, v4

    if-ge v2, v5, :cond_3

    invoke-direct {p0, v2}, Ljava/awt/font/TextLine;->getComponentLogicalIndex(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Lsun/font/TextLineComponent;->getVisualBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v14

    new-instance v5, Ljava/awt/geom/Point2D$Float;

    iget-object v6, p0, Ljava/awt/font/TextLine;->locs:[F

    aget v7, v6, v3

    add-int/lit8 v8, v3, 0x1

    aget v6, v6, v8

    invoke-direct {v5, v7, v6}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    iget-object v6, p0, Ljava/awt/font/TextLine;->lp:Lsun/font/LayoutPathImpl;

    if-nez v6, :cond_0

    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v6

    iget v4, v5, Ljava/awt/geom/Point2D$Float;->x:F

    float-to-double v8, v4

    add-double/2addr v6, v8

    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v8

    iget v4, v5, Ljava/awt/geom/Point2D$Float;->y:F

    float-to-double v4, v4

    add-double/2addr v8, v4

    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v10

    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v12

    move-object v5, v14

    invoke-virtual/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v5, v1, v5}, Ljava/awt/font/LayoutPath;->pathToPoint(Ljava/awt/geom/Point2D;ZLjava/awt/geom/Point2D;)V

    invoke-interface {v4}, Lsun/font/TextLineComponent;->getBaselineTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v6, v5, Ljava/awt/geom/Point2D$Float;->x:F

    float-to-double v6, v6

    invoke-virtual {v4}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    iget v5, v5, Ljava/awt/geom/Point2D$Float;->y:F

    float-to-double v8, v5

    invoke-virtual {v4}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v5, v14}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v4

    invoke-interface {v4}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v14

    goto :goto_1

    :cond_1
    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v6

    iget v4, v5, Ljava/awt/geom/Point2D$Float;->x:F

    float-to-double v8, v4

    add-double/2addr v6, v8

    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v8

    iget v4, v5, Ljava/awt/geom/Point2D$Float;->y:F

    float-to-double v4, v4

    add-double/2addr v8, v4

    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v10

    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v12

    move-object v5, v14

    invoke-virtual/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v14

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v14}, Ljava/awt/geom/Rectangle2D;->add(Ljava/awt/geom/Rectangle2D;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1, v1}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    :cond_4
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/awt/font/TextLine;->fCharsLimit:I

    iget p0, p0, Ljava/awt/font/TextLine;->fCharsStart:I

    sub-int/2addr v1, p0

    xor-int p0, v0, v1

    return p0
.end method

.method public isCharLTR(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/awt/font/TextLine;->getCharLevel(I)B

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCharSpace(I)Z
    .locals 1

    iget-object v0, p0, Ljava/awt/font/TextLine;->fChars:[C

    iget p0, p0, Ljava/awt/font/TextLine;->fCharsStart:I

    add-int/2addr p1, p0

    aget-char p0, v0, p1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    return p0
.end method

.method public isCharWhitespace(I)Z
    .locals 1

    iget-object v0, p0, Ljava/awt/font/TextLine;->fChars:[C

    iget p0, p0, Ljava/awt/font/TextLine;->fCharsStart:I

    add-int/2addr p1, p0

    aget-char p0, v0, p1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    return p0
.end method

.method public isDirectionLTR()Z
    .locals 0

    iget-boolean p0, p0, Ljava/awt/font/TextLine;->fIsDirectionLTR:Z

    return p0
.end method

.method public logicalToVisual(I)I
    .locals 0

    iget-object p0, p0, Ljava/awt/font/TextLine;->fCharLogicalOrder:[I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    aget p1, p0, p1

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ljava/awt/font/TextLine;->fComponents:[Lsun/font/TextLineComponent;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public visualToLogical(I)I
    .locals 2

    iget-object v0, p0, Ljava/awt/font/TextLine;->fCharLogicalOrder:[I

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, Ljava/awt/font/TextLine;->fCharVisualOrder:[I

    if-nez v1, :cond_1

    invoke-static {v0}, Lsun/font/BidiUtils;->createInverseMap([I)[I

    move-result-object v0

    iput-object v0, p0, Ljava/awt/font/TextLine;->fCharVisualOrder:[I

    :cond_1
    iget-object p0, p0, Ljava/awt/font/TextLine;->fCharVisualOrder:[I

    aget p0, p0, p1

    return p0
.end method
